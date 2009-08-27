/*!
*  @company Black Art Studios
*  @author Nicholas Kostelnik
*  @file   IScriptComponent.hpp
*  @date   2009/04/27
*/
#pragma once
#ifndef ISCRIPTCOMPONENT_HPP
#define ISCRIPTCOMPONENT_HPP

#include "System/ISystemComponent.hpp"

extern "C" 
{
#	include <lua.h>
#	include <lualib.h>
}

namespace Script
{
	/*!
	 *  A Script System Component 
	 */
	class IScriptComponent : public ISystemComponent
	{

	public:

		/*! Default Destructor
		 *
		 *  @return ()
		 */
		virtual ~IScriptComponent( ) { };


		/*! Runs the Loaded Script
		*
		*  @return (void)
		*/
		virtual void RunScript( ) = 0;

	};
};

#endif
