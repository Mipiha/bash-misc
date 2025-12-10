#!/bin/bash

service="cron"

if systemctl is-active --quiet "$service"; then
	echo "$service is active"
else
	echo "$service is not running"

	echo "trying to start $service"
	sudo systemctl start "$service"

	if systemctl is-active --quiet "$service"; then
        	echo "$service is now active"
	else
        	echo "failed to start"
	fi
fi
