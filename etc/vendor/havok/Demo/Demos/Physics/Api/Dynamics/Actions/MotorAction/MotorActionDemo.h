/* 
 * 
 * Confidential Information of Telekinesys Research Limited (t/a Havok). Not for disclosure or distribution without Havok's
 * prior written consent. This software contains code, techniques and know-how which is confidential and proprietary to Havok.
 * Level 2 and Level 3 source code contains trade secrets of Havok. Havok Software (C) Copyright 1999-2009 Telekinesys Research Limited t/a Havok. All Rights Reserved. Use of this software is subject to the terms of an end user license agreement.
 * 
 */
#ifndef MOTOR_ACTION_DEMO_H
#define MOTOR_ACTION_DEMO_H

#include <Demos/DemoCommon/DemoFramework/hkDefaultPhysicsDemo.h>

// A simple example that shows a hkpMotorAction

class MotorActionDemo : public hkDefaultPhysicsDemo
{
	public:
		MotorActionDemo(hkDemoEnvironment* env);
		Result stepDemo();

	protected:
		hkpBroadPhaseBorder*		m_border;
		hkUint32				m_elapsedSteps;
		class hkpMotorAction*	m_motorAction;
};

#endif // MOTOR_ACTION_DEMO_H

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