#!/bin/bash

# ---
#  ./.npm.scripts/dev/deploy/github-pages.sh
# ---

# ---
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# --- # --- # --- # --- >>> >>> [INFLATE - DEV] <<< <<< "
echo "# --- # ---  [$0]"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# ------ ------ ------ ------ ------ ------ ------ #"


echo "# ------ ------ ------ ------ ------ ------ ------ #"
echo "# ------ -  PATH=[${PATH}]"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"
echo "# --- # --- # --- # --- # --- # --- # --- # --- # --- # --- # --- #"

export DEPLOYMENT_DOMAIN=e-ruption.fr
export DEPLOYMENT_BASE_URL=https://${DEPLOYMENT_DOMAIN}

if [ -d ./docs ]; then
  rm -fr ./docs
fi;

if [ -d ./public ]; then
  rm -fr ./public
fi;

mkdir -p  ./docs
mkdir -p  ./public

deleteExampleContent () {

  rm -fr ./public/images/material/
  rm -fr ./public/images/products/
  rm -fr ./public/images/clients/
  rm -f ./public/images/blog/post-1.jpg
  # rm -f ./public/images/blog/post-2.jpg
  rm -f ./public/images/blog/post-3.jpg
  rm -f ./public/images/blog/post-4.jpg
  
}

githubPagesDeploy () {
  export PATH=$PATH:/usr/local/go/bin
  hugo -b ${DEPLOYMENT_BASE_URL}

  deleteExampleContent
  cp -fr ./public/* ./docs/
  echo "${DEPLOYMENT_DOMAIN}" > CNAME
  echo "${DEPLOYMENT_DOMAIN}" > ./docs/CNAME

  # git push
  # export ERUPTION_RELEASE_NUMBER=${ERUPTION_RELEASE_NUMBER:-'0.0.1'}
  read -p "Release Version Number ? " ERUPTION_RELEASE_NUMBER
  echo " Release Version Number is [${ERUPTION_RELEASE_NUMBER}] "
  git add -A && git commit -m "Release [${ERUPTION_RELEASE_NUMBER}] deloying to [${DEPLOYMENT_DOMAIN}] " && git push -u origin HEAD
  git flow release start ${ERUPTION_RELEASE_NUMBER}
  echo "# - - - # release finish"
  echo "git flow release finish -s ${ERUPTION_RELEASE_NUMBER}"
  # git flow release finish -s ${ERUPTION_RELEASE_NUMBER}

}

  
githubPagesDeploy
