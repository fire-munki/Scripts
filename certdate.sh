#!/bin/bash

SERVER=$1

if [ -z "$2" ]
	the PORT=443;
	else PORT=$2;
fi

EXPIRE_STRING=$(echo | openssl s_client -connect "$SERVER":"$PORT" | openssl x509 -noout -date | grep notAfter | cut -d'=' -f2 | cut-c 1-20)
#get expire date

EXPIRE_SECS=$(date -d "$EXPIRE_STRING" +%s)
#format the date to number of seconds

EXPIRE_TIME=$(( "EXPIRE_SECS" - $(date +%s)))
#subtract todays date as seconds to get the number of seconds remianing

EXPIRE_DAYS=$((EXPIRE_TIME / 24 /3600))
#turn seconds into days

if test $EXPIRE_TIME -lt 0
	then echo "Cert has expired"
	else echo "Number of days remianing $EXPIRE_DAYS"
	#statements
fi
#show remaining days or alert expired