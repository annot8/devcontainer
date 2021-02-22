#/usr/bin/env /bin/bash

mkdir -p ./dstl-baleen3/components
find ./annot8-components/ -type f -name '*.jar' -exec cp -rf "{}" ./dstl-baleen3/components/.  \;
find ./dstl-annot8-components/ -type f -name '*.jar' -exec cp -rf "{}" ./dstl-baleen3/components/.  \;
# Warning GPL licensed:
# find ./dstl-annot8-corenlp-components/ -type f -name '*.jar' -exec cp -rf "{}" ./dstl-baleen3/components/  \;
find ./annot8-baleen2/ -type f -name '*.jar' -exec cp -rf "{}" ./dstl-baleen3/components/  \;
