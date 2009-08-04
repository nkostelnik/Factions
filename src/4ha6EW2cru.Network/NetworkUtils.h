/*!
*  @company Black Art Studios
*  @author Nicholas Kostelnik
*  @file   NetworkUtils.hpp
*  @date   2009/07/14
*/
#pragma once
#ifndef NETWORKUTILS_HPP
#define NETWORKUTILS_HPP

#include "NetworkMessage.hpp"

#include "RakPeerInterface.h"
#include <BitStream.h>

namespace Network
{
	/*! 
	 *  A Collection of Utilities for manipulating Network Data
	 */
	class NetworkUtils
	{

	public:

		/*! Default Destructor
		 *
		 *  @return ()
		 */
		~NetworkUtils( ) { };


		/*! Default Constructor
		*
		* @return (  )
		*/
		NetworkUtils( ) { };


		static NetworkMessageNew* DeSerializeNew( RakNet::BitStream* bitStream );

		static unsigned char GetPacketIdentifier( Packet *packet );

		static RakNet::BitStream* ReceiveNetworkMessage( Packet* packet );

		static void SendNetworkMessage( RakNet::BitStream& data, const SystemAddress& destination, RakPeerInterface* networkInterface );
		

	private:

		NetworkUtils( const NetworkUtils & copy ) { };
		NetworkUtils & operator = ( const NetworkUtils & copy ) { return *this; };
		
	};
};

#endif
