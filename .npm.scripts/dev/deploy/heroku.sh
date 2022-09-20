#!/bin/bash

# ---
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# --- # --- # -- >>> >>> [DEPLOY - DEV - HEROKU] <<< <<< "
echo "# --- # ---  [$0]"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# ------ ------ ------ ------ ------ ------ ------ #"
ls -alh  ./.npm.scripts/dev/env.sh
source ./.npm.scripts/dev/env.sh
ls -alh .npm.scripts/dev/deploy/env.sh
source .npm.scripts/dev/deploy/env.sh
echo "# ------ ------ ------ ------ ------ ------ ------ #"
echo "# ------ -  PATH=[${PATH}]"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# --- # ---   HEROKU_APP_ID=[${HEROKU_APP_ID}]"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"

echo "# ----    NOT IMPLEMENTED EXCEPTION"
exit 65
