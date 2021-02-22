#!/usr/bin/env bash

rm -rf baleen3-package 
mkdir baleen3-package
cp -r dstl-baleen3/components baleen3-package/components
rm -rf baleen3-package/components/*-sources.jar
rm -rf baleen3-package/components/*-javadoc.jar
cp -r dstl-baleen3/pipelines baleen3-package/pipelines
cp -r dstl-baleen3/templates baleen3-package/templates
cp -r dstl-baleen3/target/baleen-*.jar baleen3-package/
cp -r dstl-baleen3/LICENSE.txt baleen3-package/
cp -r dstl-baleen3/THIRD-PARTY.txt baleen3-package/
cp -r dstl-baleen3/*.svg baleen3-package/
cp -r dstl-baleen3/GETTING-STARTED.md baleen3-package/README.md

echo "java -jar baleen-3.*.jar" > baleen3-package/run.sh
echo "java -jar baleen-3.*.jar" > baleen3-package/run.bat
chmod +x baleen3-package/run.sh