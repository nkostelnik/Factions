/* 
 * 
 * Confidential Information of Telekinesys Research Limited (t/a Havok). Not for disclosure or distribution without Havok's
 * prior written consent. This software contains code, techniques and know-how which is confidential and proprietary to Havok.
 * Level 2 and Level 3 source code contains trade secrets of Havok. Havok Software (C) Copyright 1999-2009 Telekinesys Research Limited t/a Havok. All Rights Reserved. Use of this software is subject to the terms of an end user license agreement.
 * 
 */

#include <Demos/demos.h>
#include <Demos/Animation/Api/MeshAndDeformation/Attachments/AttachmentsDemo.h>
#include <Common/Base/Reflection/hkClass.h>
#include <Common/Base/Container/LocalArray/hkLocalArray.h>

// Serialization
#include <Common/Serialize/Util/hkLoader.h>
#include <Common/Serialize/Util/hkRootLevelContainer.h>
#include <Common/Base/Reflection/Registry/hkTypeInfoRegistry.h>

// Asset mgt
#include <Demos/DemoCommon/Utilities/Asset/hkAssetManagementUtil.h>

// Vertex Deformation
#include <Common/Base/Config/hkConfigSimd.h>
#include <Animation/Animation/Deform/Skinning/Fpu/hkaFPUSkinningDeformer.h>
#include <Animation/Animation/Deform/Skinning/Simd/hkaSimdSkinningDeformer.h>

// Skeletal Animation
#include <Animation/Animation/hkaAnimationContainer.h>
#include <Animation/Animation/Animation/Interleaved/hkaInterleavedUncompressedAnimation.h>
#include <Animation/Animation/Rig/hkaSkeleton.h>
#include <Animation/Animation/Rig/hkaSkeletonUtils.h>
#include <Animation/Animation/Rig/hkaPose.h>
#include <Animation/Animation/Playback/hkaAnimatedSkeleton.h>
#include <Animation/Animation/Playback/Control/Default/hkaDefaultAnimationControl.h>
#include <Animation/Animation/Animation/hkaAnimationBinding.h>

// Attachments
#include <Animation/Animation/Rig/hkaBoneAttachment.h>


// Vertex Deformation
#include <Animation/Animation/Deform/Skinning/hkaMeshBinding.h>

// Scene Data
#include <Common/SceneData/Scene/hkxScene.h>
#include <Common/SceneData/Mesh/hkxMesh.h>
#include <Common/SceneData/Mesh/hkxMeshSection.h>

// Common animation Utilities
#include <Demos/DemoCommon/Utilities/Animation/AnimationUtils.h>

// Graphics Stuff
#include <Graphics/Common/Window/hkgWindow.h>
#include <Graphics/Common/DisplayObject/hkgDisplayObject.h>
#include <Graphics/Bridge/SceneData/hkgSceneDataConverter.h>
#include <Graphics/Bridge/SceneData/hkgVertexBufferWrapper.h>


AttachmentsDemo::AttachmentsDemo( hkDemoEnvironment* env )
:	hkDefaultAnimationDemo(env)
{
	// Disable warnings: if no renderer									
	if( hkString::strCmp( m_env->m_options->m_renderer, "n" ) == 0 )
	{
		hkError::getInstance().setEnabled(0xf0d1e423, false); //'Could not realize an inplace texture of type PNG.'
	}

	//
	// Setup the camera
	//
	{
		hkVector4 from(  1.32f, -1.5f, 0.63f );
		hkVector4 to  ( 0.35f,-0.35f, 0.30f );
		hkVector4 up  ( 0.0f,  0.0f, 1.0f);
		setupDefaultCameras( env, from, to, up, 0.01f, 10000.0f );
	}

	m_loader = new hkLoader();

	// want to do software skinning always in this demo
	m_env->m_sceneConverter->setAllowHardwareSkinning(false);

	// Convert the scene
	{
		hkString assetFile = hkAssetManagementUtil::getFilePath("Resources/Animation/Scene/hkScene.hkx");
		hkRootLevelContainer* container = m_loader->load( assetFile.cString() );
		HK_ASSERT2(0x27343437, container != HK_NULL , "Could not load asset");
		hkxScene* scene = reinterpret_cast<hkxScene*>( container->findObjectByType( hkxSceneClass.getName() ));

		HK_ASSERT2(0x27343635, scene, "No scene loaded");
		removeLights(m_env);
		env->m_sceneConverter->convert( scene );
	}

// Get the rig
	{
		hkString assetFile = hkAssetManagementUtil::getFilePath("Resources/Animation/HavokGirl/hkRig.hkx");
		hkRootLevelContainer* container = m_loader->load( assetFile.cString() );
		HK_ASSERT2(0x27343437, container != HK_NULL , "Could not load asset");
		hkaAnimationContainer* ac = reinterpret_cast<hkaAnimationContainer*>( container->findObjectByType( hkaAnimationContainerClass.getName() ));

		HK_ASSERT2(0x27343435, ac && (ac->m_numSkeletons > 0), "No skeleton loaded");
		m_skeleton = ac->m_skeletons[0];
	}
	// Get the animation and the binding
	{
		hkString assetFile = hkAssetManagementUtil::getFilePath("Resources/Animation/HavokGirl/hkWalkLoop.hkx");
		hkRootLevelContainer* container = m_loader->load( assetFile.cString() );
		HK_ASSERT2(0x27343437, container != HK_NULL , "Could not load asset");
		hkaAnimationContainer* ac = reinterpret_cast<hkaAnimationContainer*>( container->findObjectByType( hkaAnimationContainerClass.getName() ));

		HK_ASSERT2(0x27343435, ac && (ac->m_numAnimations > 0), "No animation loaded");
		m_animation = ac->m_animations[0];

		HK_ASSERT2(0x27343435, ac && (ac->m_numBindings > 0), "No binding loaded");
		m_binding = ac->m_bindings[0];
	}

	// Convert the skin
	{
		const char* skinFile = "Resources/Animation/HavokGirl/hkLowResSkin.hkx";
		hkString assetFile = hkAssetManagementUtil::getFilePath( skinFile );
		hkRootLevelContainer* container = m_loader->load( assetFile.cString() );
		HK_ASSERT2(0x27343437, container != HK_NULL , "Could not load asset");

		hkxScene* scene = reinterpret_cast<hkxScene*>( container->findObjectByType( hkxSceneClass.getName() ));
		HK_ASSERT2(0x27343435, scene , "No scene loaded");

		hkaAnimationContainer* ac = reinterpret_cast<hkaAnimationContainer*>( container->findObjectByType( hkaAnimationContainerClass.getName() ));
		HK_ASSERT2(0x27343435, ac && (ac->m_numSkins > 0), "No skins loaded");

		m_numSkinBindings = ac->m_numSkins;
		m_skinBindings = ac->m_skins;

		// Make graphics output buffers for the skins
		env->m_sceneConverter->convert( scene );
	}

	// Grab the attachments and convert them to display objects
	{
		hkString assetFile = hkAssetManagementUtil::getFilePath( "Resources/Animation/HavokGirl/hkAttachments.hkx" );
		hkRootLevelContainer* container = m_loader->load( assetFile.cString() );
		HK_ASSERT2(0x27343437, container != HK_NULL , "Could not load asset");

		hkxScene* scene = reinterpret_cast<hkxScene*>( container->findObjectByType( hkxSceneClass.getName() ));
		HK_ASSERT2(0x27343435, scene , "No scene loaded");

		hkaAnimationContainer* ac = reinterpret_cast<hkaAnimationContainer*>( container->findObjectByType( hkaAnimationContainerClass.getName() ));
		HK_ASSERT2(0x27343435, ac && (ac->m_numAttachments > 0), "No attachments loaded");

		m_numAttachments = ac->m_numAttachments;
		m_attachments = ac->m_attachments;

		// Make graphics meshes for the attachments
		env->m_sceneConverter->convert( scene );

		for (int a=0; a < m_numAttachments; ++a)
		{
			hkaBoneAttachment* ba = m_attachments[a];
			hkgDisplayObject* hkgObject = HK_NULL;

			//Check the attachment is a mesh
			if ( hkString::strCmp(ba->m_attachment.m_class->getName(), hkxMeshClass.getName()) == 0)
			{
				hkgObject = env->m_sceneConverter->findFirstDisplayObjectUsingMesh((hkxMesh*)ba->m_attachment.m_object);
				if (hkgObject)
				{
					hkgObject->setStatusFlags(hkgObject->getStatusFlags() | HKG_DISPLAY_OBJECT_DYNAMIC);
				}
			}

			m_attachmentObjects.pushBack(hkgObject);
		}

	}


	// Create the skeleton
	m_skeletonInstance = new hkaAnimatedSkeleton( m_skeleton );
	{
		hkaDefaultAnimationControl* ac = new hkaDefaultAnimationControl( m_binding );

		ac->setPlaybackSpeed(1.0f);
		m_skeletonInstance->addAnimationControl( ac );
		ac->removeReference();
	}

	// set up the vdb
	setupGraphics();

}

AttachmentsDemo::~AttachmentsDemo()
{
	// Re-enable warnings									
	hkError::getInstance().setEnabled(0xf0d1e423, true);

	m_skeletonInstance->removeReference();
	delete m_loader;

	hkDefaultDemo::setupLights(m_env); // restore lights to default.
}

hkDemo::Result AttachmentsDemo::stepDemo()
{

// Advance the active animations
	m_skeletonInstance->stepDeltaTime( .016f );

	const int boneCount = m_skeleton->m_numBones;

	// Sample the active animations and combine into a single pose
	hkaPose pose(m_skeleton);
	m_skeletonInstance->sampleAndCombineAnimations( pose.accessUnsyncedPoseLocalSpace().begin(), pose.getFloatSlotValues().begin()  );

	// Construct the composite world transform
	{
		hkLocalArray<hkTransform> compositeWorldInverse( boneCount );
		compositeWorldInverse.setSize( boneCount );

		const hkArray<hkQsTransform>& poseInWorld = pose.getSyncedPoseModelSpace();

		// Skin the meshes
		for (int i=0; i < m_numSkinBindings; i++)
		{
			// assumes either a straight map (null map) or a single one (1 palette)
			hkInt16* usedBones = m_skinBindings[i]->m_mappings? m_skinBindings[i]->m_mappings[0].m_mapping : HK_NULL;
			int numUsedBones = usedBones? m_skinBindings[i]->m_mappings[0].m_numMapping : boneCount;

			// Multiply through by the bind pose inverse world inverse matrices
			for (int p=0; p < numUsedBones; p++)
			{
				int boneIndex = usedBones? usedBones[p] : p;
				compositeWorldInverse[p].setMul( poseInWorld[ boneIndex ], m_skinBindings[i]->m_boneFromSkinMeshTransforms[ boneIndex ] );
			}


			AnimationUtils::skinMesh( *m_skinBindings[i]->m_mesh, hkTransform::getIdentity(), compositeWorldInverse.begin(), *m_env->m_sceneConverter );
		}
	}

	// Move the attachments
	{
		const hkArray<hkQsTransform>& poseInWorld = pose.getSyncedPoseModelSpace();

		HK_ALIGN(float f[16], 16);
		for (int a=0; a < m_numAttachments; a++)
		{
			if (m_attachmentObjects[a])
			{
				hkaBoneAttachment* ba = m_attachments[a];
				poseInWorld [ ba->m_boneIndex ].get4x4ColumnMajor(f);
				hkMatrix4 worldFromBone; worldFromBone.set4x4ColumnMajor(f);
				hkMatrix4 worldFromAttachment; worldFromAttachment.setMul(worldFromBone, ba->m_boneFromAttachment);
				m_env->m_sceneConverter->updateAttachment(m_attachmentObjects[a], worldFromAttachment);
			}
		}
	}

	return hkDemo::DEMO_OK;
}

#if defined(HK_COMPILER_MWERKS)
#	pragma force_active on
#	pragma fullpath_file on
#endif

HK_DECLARE_DEMO(AttachmentsDemo, HK_DEMO_TYPE_ANIMATION | HK_DEMO_TYPE_SERIALIZE, "Attachments", "Demo showing attachments");

/*
* Havok SDK - NO SOURCE PC DOWNLOAD, BUILD(#20090216)
* 
* Confidential Information of Havok.  (C) Copyright 1999-2009
* Telekinesys Research Limited t/a Havok. All Rights Reserved. The Havok
* Logo, and the Havok buzzsaw logo are trademarks of Havok.  Title, ownership
* rights, and intellectual property rights in the Havok software remain in
* Havok and/or its suppliers.
* 
* Use of this software for evaluation purposes is subject to and indicates
* acceptance of the End User licence Agreement for this product. A copy of
* the license is included with this software and is also available at www.havok.com/tryhavok.
* 
*/