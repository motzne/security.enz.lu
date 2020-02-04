#!/bin/bash
#
# Simple Helper Tool for local serving gitbook
#
#
# remove page-ref
find . -type f -iname "*.md" -exec sed -i.bak -E -e 's#^{% page-ref.*%}##g' {} \;
find . -type f -iname "*.md" -exec sed -i.bak -E -e 's#^{% file src.*%}##g' {} \;


find . -type f -name "*.bak" -delete