# Gradle Projects

## Add submodules

Add Gradle projects as Git submodules
```bash
git submodule add git@example.org/foo.git
git submodule add git@example.com/bar.git
git commit -m "Add submodules"
```

## Update Gradle

Clone the repository, update and push the submodules
```bash
git clone https://github.com/veita/gradle-projects.git ; cd gradle-projects
./update-gradle-all.sh $NEW_GRADLE_VERSION
./push-all.sh
```

Optionally save the repository state
```bash
git add --all
git commit -m "Save the current state"
```

