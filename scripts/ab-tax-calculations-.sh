#!/bin/bash

ab -n 10 -c 10 \
    -H 'Accept: application/vnd.com.myhomepay.api.ste.tax-calculation+json;version=1' \
    -H 'authorization: apikey H7vm54iqoM7vQeSfykifEGxTgh6DHFcLarVKsHHpxFknq' \
    -H 'host: api.staging.mhp-ext.com' \
    -p resources/tax-calculations.json   \
    -T application/json \
    http://api.staging.mhp-ext.com/ste/tax-calculations