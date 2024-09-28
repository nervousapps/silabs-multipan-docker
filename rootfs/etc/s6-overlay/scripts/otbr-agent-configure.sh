#!/usr/bin/with-contenv bash
# ==============================================================================
# Configure OTBR depending on add-on settings
# ==============================================================================
source /etc/bashlog/log.sh;

if [ $NAT64 -eq "true" ]; then
    log 'info' "Enabling NAT64."
    ot-ctl nat64 enable
fi