#!/bin/bash

# WPI APP
# by DimaMinka (https://dima.mk)
# https://github.com/wpi-pw/app

# Get config files and put to array
wpi_confs=()
for ymls in wpi-config/*
do
  wpi_confs+=("$ymls")
done

# Get wpi-source for yml parsing, noroot, errors etc
source <(curl -s https://raw.githubusercontent.com/wpi-pw/template-workflow/master/wpi-source.sh)

# Run shell runner before app install
if [ "$wpi_init_shell" == "true" ]; then
  for script in "${wpi_shell_before_install[@]}"
  do
    bash <(curl -s https://raw.githubusercontent.com/wpi-pw/template-workflow/master/wpi-shell.sh) $script
  done
fi

# Run workflow install after setup checking
if [ "$wpi_init_workflow" != "false" ]; then
  # current environment
  get_cur_env $1

  # Download and run default workflow template or custom from config
  workflow_url="https://raw.githubusercontent.com/wpi-pw/template-workflow/master/wpi-workflow.sh"
  template_runner $wpi_templates_workflow $workflow_url $wpi_init_workflow $cur_env

  # Run the env making after setup checking
  env_url="https://raw.githubusercontent.com/wpi-pw/template-env/master/env-init.sh"
  template_runner $wpi_templates_env $env_url $wpi_init_env $cur_env

fi

# Run shell runner after app install
if [ "$wpi_init_shell" == "true" ]; then
  for script in "${wpi_shell_after_install[@]}"
  do
    bash <(curl -s https://raw.githubusercontent.com/wpi-pw/template-workflow/master/wpi-shell.sh) $script
  done
fi
