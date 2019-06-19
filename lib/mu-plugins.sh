#!/bin/bash

# Init - Wp Pro Club
# by DimaMinka (https://dimaminka.com)
# https://github.com/wp-pro-club/init

source ${PWD}/lib/app-init.sh

# Download default mu-plugins template or custom from config
if [ "$conf_app_config_templates_mu_plugins" == "default" ]; then
    curl --silent https://raw.githubusercontent.com/wp-pro-club/template-mu-plugins/master/mu-plugins-init.sh > tmp-template.sh
else
    curl --silent $conf_app_config_templates_mu_plugins > tmp-template.sh
fi

# If template downloaded, run the script
if [ -f "${PWD}/tmp-template.sh" ]; then
    bash ${PWD}/tmp-template.sh
    # delete the script after complete
    rm ${PWD}/tmp-template.sh
fi
