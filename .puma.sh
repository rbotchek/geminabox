#!/bin/bash
#
# This script starts up puma.
#
# This file is meant to be executed via systemd.

source /etc/profile.d/rvm.sh
export ruby_ver=$(rvm list default string)

# Execute the puma process
bundle exec puma -C /etc/puma/geminabox_production.conf
