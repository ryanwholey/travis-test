echo "deploying"

echo $TRAVIS_PULL_REQUEST
echo $TRAVIS_BRANCH

if [[ $TRAVIS_PULL_REQUEST == "false" ]] && [[ $TRAVIS_BRANCH == "master" ]]
then
  echo "merged to master"
else
  echo "pr pr pr"
fi

