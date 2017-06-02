#!/bin/bash

wrk -t 5 -c 10 -d 30s \
    -s resources/staging-tax-calculations.lua \
    http://api.staging.mhp-ext.com/ste/tax-calculations