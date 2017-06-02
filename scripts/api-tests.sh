#!/bin/bash

host='http://api.staging.mhp-ext.com/ste'
hostheader='api.staging.mhp-ext.com'

host=${1:-$host}
hostheader=${2:-$hostheader}

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

CURL_SETTINGS="-s -i -f"

run-test(){

    eval $1 >/dev/null
    RESULT=$?
    printf " * ${1}: "
    if [ $RESULT -eq 0 ]; then

        printf "${GREEN}Ok${NC}"

    else

        printf "${RED}Failed${NC}"

    fi

    printf "\n"

}

stats(){
    curl ${CURL_SETTINGS} -X GET $host/stats \
        -H 'accept: application/vnd.com.myhomepay.api.ste.stats+json;version=1'  \
        -H 'authorization: apikey H7vm54iqoM7vQeSfykifEGxTgh6DHFcLarVKsHHpxFknq' \
        -H 'cache-control: no-cache' \
        -H "host: ${hostheader}"

        return $?
}

version(){
    curl ${CURL_SETTINGS} -X GET $host/version \
        -H 'accept: application/vnd.com.myhomepay.api.ste.version+json;verson=1' \
        -H 'authorization: apikey H7vm54iqoM7vQeSfykifEGxTgh6DHFcLarVKsHHpxFknq' \
        -H 'cache-control: no-cache' \
        -H "host: ${hostheader}"

        return $?
}

params(){
    curl ${CURL_SETTINGS} -X GET $host/misc-parameters/40-000-000000 \
    -H 'accept: application/vnd.com.myhomepay.api.ste.state-param+json;version=1' \
    -H 'authorization: apikey H7vm54iqoM7vQeSfykifEGxTgh6DHFcLarVKsHHpxFknq' \
    -H 'cache-control: no-cache' \
    -H "host: ${hostheader}"

    return $?
}

location(){
    curl ${CURL_SETTINGS} -X POST -H "Accept: application/vnd.com.myhomepay.api.ste.location-code+json;version=1" \
    -H "Authorization: apikey H7vm54iqoM7vQeSfykifEGxTgh6DHFcLarVKsHHpxFknq" \
    -H "Content-Type: application/json" \
    -H "Cache-Control: no-cache" \
    -H "Postman-Token: 630b3b9f-06a2-7fdd-1036-712f030da7ec" \
    -d '{
        "gnisCode": "STE_GNIS_STELOCATIONCODE",
        "zipCode": null,
        "state": "PA",
        "city": null,
        "county": "Philadelphia",
        "municipality": null,
        "school": null
        }' \
    $host/location-codes \
    -H "host: ${hostheader}"

    return $?
}

printf "Testing STE@${host} using ${hostheader}\n\n"
run-test stats
run-test version
run-test params
run-test location
printf "\n"