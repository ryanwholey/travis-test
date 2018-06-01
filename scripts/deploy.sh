echo "checking whether to deploy..."

echo $TRAVIS_PULL_REQUEST
echo $TRAVIS_BRANCH

if [[ $TRAVIS_PULL_REQUEST == "false" ]] && [[ $TRAVIS_BRANCH == "master" ]]
then
  echo "deploying"
  touch ./tmp/ssh-pub
  chmod 644 ./tmp/ssh-pub
  echo $SSH >> ./tmp/ssh.pub
  ssh  -o StrictHostKeyChecking=no -i ./tmp/ssh.pub root@$OPEN_ESL_QA "echo \"hello world\""
else
  echo "pr pr pr"
fi

