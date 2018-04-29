
#!/bin/bash
export ORDERER_CA=/opt/ws/crypto-config/ordererOrganizations/orderer.com/msp/tlscacerts/tlsca.orderer.com-cert.pem

if [ $# -lt 2 ];then
	echo "Usage : . setpeer.sh Org1| <peerid>"
fi
export peerId=$2

if [[ $1 = "Org1" ]];then
	echo "Setting to organization Org1 peer "$peerId
	export CORE_PEER_ADDRESS=$peerId.org1.com:7051
	export CORE_PEER_LOCALMSPID=Org1MSP
	export CORE_PEER_TLS_CERT_FILE=/opt/ws/crypto-config/peerOrganizations/org1.com/peers/$peerId.org1.com/tls/server.crt
	export CORE_PEER_TLS_KEY_FILE=/opt/ws/crypto-config/peerOrganizations/org1.com/peers/$peerId.org1.com/tls/server.key
	export CORE_PEER_TLS_ROOTCERT_FILE=/opt/ws/crypto-config/peerOrganizations/org1.com/peers/$peerId.org1.com/tls/ca.crt
	export CORE_PEER_MSPCONFIGPATH=/opt/ws/crypto-config/peerOrganizations/org1.com/users/Admin@org1.com/msp
fi

	