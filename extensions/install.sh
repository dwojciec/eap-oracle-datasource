#!/bin/bash

# see document https://access.redhat.com/documentation/en-us/red_hat_jboss_enterprise_application_platform/7.0/html/red_hat_jboss_enterprise_application_platform_for_openshift/configuring_eap_openshift_image#Build-Extensions-Project-Artifacts 

set -x

source /usr/local/s2i/install-common.sh

injected_dir=$1

chmod -R ugo+rX ${injected_dir}/modules
install_modules ${injected_dir}/modules

configure_drivers ${injected_dir}/drivers.env

#configure_translators ${injected_dir}/install.properties
rm ${injected_dir}

