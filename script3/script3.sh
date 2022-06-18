#!/bin/bash

source /usr/local/etc/ocp4.config

oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}

oc new-project ${RHT_OCP4_DEV_USER}-exe3

oc process -f quote-php-template.json -p RHT_OCP4_QUAY_USER=gusiello | oc create -f -
