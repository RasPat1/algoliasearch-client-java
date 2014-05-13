#!/bin/sh
mvn -Darguments="-DskipTests" release:prepare
mvn -DskipTests release:perform
cp -R target/checkout/repository .
git add .
echo "Your now need to perform:"
echo 'git ci -a -m "Release X.Y.Z"'
echo 'git pull'
echo 'git push'
