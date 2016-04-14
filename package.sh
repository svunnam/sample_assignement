#! /bin/sh

# Package hello world web page

# setup build directory
if [ ! -d packages ]; then
  (set -x; mkdir packages || exit 1)
fi

rm -f README.build packages/hello-world.tgz packages/hello-world.md5 || exit 1

# create build information file for package repo
echo generating README.build
cat >  README.build << EOF
GIT_COMMIT=$GIT_COMMIT
GIT_BRANCH=$GIT_BRANCH
GIT_AUTHOR_EMAIL=$GIT_AUTHOR_EMAIL
GIT_COMMITTER_EMAIL=$GIT_COMMITTER_EMAIL
EOF

(set -x; tar cvfz packages/hello-world.tgz README* index.html || exit 1)

(set -x; md5sum packages/hello-world.tgz > packages/hello-world.md5 || exit 1)

# Push package upto github
#(set -x; git add packages || exit 1)
#(set -x; git commit -m "Jekins: $BUILD_TAG" || exit 1)
#(set -x; git push origin master || exit 1)

