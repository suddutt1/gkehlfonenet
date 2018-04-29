#!/bin/bash
export  ORDERER_GENERAL_LOGLEVEL=debug
export  ORDERER_GENERAL_LISTENADDRESS=0.0.0.0
export  ORDERER_GENERAL_GENESISMETHOD=file
export  ORDERER_GENERAL_GENESISFILE=/var/hyperledger/orderer/genesis.block
export  ORDERER_GENERAL_LOCALMSPID=OrdererMSP
export  ORDERER_GENERAL_LOCALMSPDIR=/var/hyperledger/orderer/msp
export  ORDERER_GENERAL_TLS_ENABLED=true
export  ORDERER_GENERAL_TLS_PRIVATEKEY=/var/hyperledger/orderer/tls/server.key
export  ORDERER_GENERAL_TLS_CERTIFICATE=/var/hyperledger/orderer/tls/server.crt
export  ORDERER_GENERAL_TLS_ROOTCAS=[/var/hyperledger/orderer/tls/ca.crt]
