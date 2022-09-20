#!/bin/bash

if ! [ -f ~/.ssh/.e-ruptiontechlead/ ]; then
  mkdir -p ~/.ssh/.e-ruptiontechlead/
  ssh-keygen -t rsa -b 2048 -C  "e-ruptiontechlead@gmail.com@${hostname}" -N "" -P "" -f ~/.ssh/.e-ruptiontechlead/id_rsa
fi;
ssh -Ti ~/.ssh/.e-ruptiontechlead/id_rsa git@github.com || true

ssh -Ti ~/.ssh/.e-ruptiontechlead/id_rsaaa git@github.com
export CODE_RETOUR=$?
echo ''
echo "  CODE_RETOUR=[${CODE_RETOUR}]"
echo ''
echo ''
echo '  PLEASE ADD THIS SSH PUBLIC KEY'
echo "  TO YOUR GITHUB USERS' SSH KEYS"
# echo '  AND press Enter Key to resume git config'
echo ''
echo ''
# export THAT_ANSWER=$(read -p '  AND press Enter Key to resume git config')
cat ~/.ssh/.e-ruptiontechlead/id_rsa.pub
read -e -p '  And press Enter Key to resume git config ' THAT_ANSWER
echo ''
echo "THAT_ANSWER=[${THAT_ANSWER}]"
echo ''

git config --global user.name "e-ruptiontechlead"
git config --global user.email e-ruptiontechlead@gmail.com
export GPG_TTY=$(tty)
git config --global --list
# will re-define the default identity in use
# https://docstore.mik.ua/orelly/networking_2ndEd/ssh/ch06_04.htm
ssh-add ~/.ssh/.e-ruptiontechlead/id_rsa
export GIT_SSH_COMMAND='ssh -i ~/.ssh/.e-ruptiontechlead/id_rsa'
ssh -Ti ~/.ssh/.e-ruptiontechlead/id_rsa git@github.com
