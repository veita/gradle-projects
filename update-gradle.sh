
pwd

GRADLE_VERSION="$1"

git checkout master || exit 1
git pull
gradle wrapper --gradle-version="${GRADLE_VERSION}" --distribution-type=bin --no-daemon --warning-mode all

if [[ `git status --porcelain` ]]
then
  git add --all .
  git commit -m "Upgrade to Gradle ${GRADLE_VERSION}"
  git log --name-status HEAD^..HEAD
fi

printf "\n\n"

