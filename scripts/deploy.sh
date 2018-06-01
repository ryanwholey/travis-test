echo "checking whether to deploy..."

if [[ $TRAVIS_PULL_REQUEST == "false" ]] && [[ $TRAVIS_BRANCH == "master" ]]
then
  echo "doing ssh magic"

  mkdir -p ssh
  mkdir -p ./ssh && touch ./ssh/ssh.pub
  echo $SSH >> ./ssh/ssh.pub
  chmod 400 ./ssh/ssh.pub
  # ssh-add ./ssh/ssh.pub
  ssh  -o StrictHostKeyChecking=no -o BatchMode=yes -i ./ssh/ssh.pub root@$OPEN_ESL_QA "touch doot"

else
  echo "pr pr pr"
fi

