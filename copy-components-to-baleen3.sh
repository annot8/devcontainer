#/usr/bin/env /bin/bash

mkdir -p ./baleen3/components
find ./annot8-components/ -name '*.jar' -exec cp "{}" ./baleen3/components  \;
find ./annot8-corenlp-components/ -name '*.jar' -exec cp "{}" ./baleen3/components  \;
find ./annot8-baleen/ -name '*.jar' -exec cp "{}" ./baleen3/components  \;
