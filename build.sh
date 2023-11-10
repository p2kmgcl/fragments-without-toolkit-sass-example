#!/bin/bash

# This could be also done with npm scripts and/or other npm tools
# to be more flexible and robust.

rm -rf build
mkdir -p build/my-collection/my-fragment

cp my-collection/collection.json build/my-collection

cp my-collection/my-fragment/fragment.json build/my-collection/my-fragment
cp my-collection/my-fragment/index.html build/my-collection/my-fragment
cp my-collection/my-fragment/index.js build/my-collection/my-fragment

npx sass --no-source-map --style=compressed my-collection/my-fragment/styles/index.scss:build/my-collection/my-fragment/index.css

cd build && zip -qr my-collection.zip my-collection

echo "build/my-collection.zip created"
