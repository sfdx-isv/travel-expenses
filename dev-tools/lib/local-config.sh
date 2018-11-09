#!/bin/bash
#
##
###
#### DEFINE LOCAL CONFIGURATION VARIABLES ##########################################################
###
##
#
# Alias for the Dev Hub that should be used when creating scratch orgs for this project.
# This variable will always need to be customized for individual developers.
DEV_HUB_ALIAS="TeamDevHub"

# Namespace Prefix.  Set to empty string ("") if this project is not building a managed package.
NAMESPACE_PREFIX="sfdx_isv_pkg004"

# Package Name.  Specified as part of the Package Detail info in your packaging org. 
# Surround this value with double-quotes if your package name contains space characters.
# Set to empty string ("") if this project is not building a managed package.
PACKAGE_NAME="Travel Expenses"

# Metadata Package ID.  Refers to the metadata package as a whole.  Must begin with "033".
# Set to empty string ("") if this project is not building a managed package.
METADATA_PACKAGE_ID="033f40000006n6m"

# Package Version ID. Refers to a specific, installable version of a package. Must begin with "04t".
# Set to empty string ("") if this project is not building a managed package.
PACKAGE_VERSION_ID="04tf4000004HhZK"

# Default Package Directory. Should match what is set in sfdx-project.json.
DEFAULT_PACKAGE_DIR_NAME="sfdx_isv_pkg004"

# Alias for the primary Scratch Org used by this project.
SCRATCH_ORG_ALIAS="$NAMESPACE_PREFIX-SCRATCH"

# Alias for the packaging org for this project.
PACKAGING_ORG_ALIAS="$NAMESPACE_PREFIX-PACKAGE"

# Alias for the subscriber test org used to test managed-beta package installs.
SUBSCRIBER_ORG_ALIAS="$NAMESPACE_PREFIX-SUBSCRIBER"

# Git Remote URI. SSH or HTTPS URI that points to the Git remote repo used by this project.
# GitHub is used as an example here, but any Git remote (ie. BitBucket) can be used.
# Set to empty string ("") if this project is not being tracked in a remote repository.
GIT_REMOTE_URI="https://github.com/sfdx-isv/travel-expenses.git"

# Location of the primary scratch-def.json file that should be used by SFDX-Falcon scripts that
# create scratch orgs (eg. rebuild-scratch-org).
SCRATCH_ORG_CONFIG="$PROJECT_ROOT/config/project-scratch-def.json"

# Echo the variables set by this script prior to exiting.  Specify "false" to suppress the
# display of local config that normally occurs when executing SFDX-Falcon based scripts.
ECHO_LOCAL_CONFIG_VARS="false"
#
##
###
#### ECHO ALL VARIABLES ############################################################################
###
##
#
if [ "$ECHO_LOCAL_CONFIG_VARS" = "true" ]; then
  echo "\n`tput setaf 7``tput bold`Local configuration variables set by `dirname $0`/lib/local-config.sh`tput sgr0`\n"
  echoConfigVariables
fi
##END##