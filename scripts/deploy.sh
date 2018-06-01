echo "checking whether to deploy..."

if [[ $TRAVIS_PULL_REQUEST == "false" ]] && [[ $TRAVIS_BRANCH == "master" ]]
then
  echo "doing ssh magic"

  mkdir -p ./ssh
  touch ./tmp/ssh.pub
  chmod 644 ./tmp/ssh.pub
  echo $SSH >> ./tmp/ssh.pub
  ssh  -o StrictHostKeyChecking=no -i ./tmp/ssh.pub root@$OPEN_ESL_QA "touch doot"

else
  echo "pr pr pr"
fi

