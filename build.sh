#!/usr/bin/env /bin/bash

# Annot8

cd annot8-api
mvn clean install
cd -

cd annot8
mvn clean install
cd -

cd annot8-components
mvn clean install
cd -

# Additional Annot8 libraries

cd dstl-annot8-components
mvn clean install
cd -

# Warning GPL licensed
# cd dstl-annot8-corenlp-components
# mvn clean install
# cd -

# Baleen

cd dstl-baleen3
mvn clean package
cd -
