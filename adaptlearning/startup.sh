#!/bin/bash

#npm install --production
USE_CONFIG=y node install --useJSON --IS_INTERACTIVE=n \
	  --suPassword="${SU_PASSWORD:-password}" \
	  --suRetypePassword="${SU_PASSWORD:-password}" \
	  --suEmail="${SU_EMAIL:-example@example.com}"
node server
