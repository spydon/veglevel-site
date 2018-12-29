#!/usr/bin/env bash
rm -rf output; \
gulp; \
gulp css; \
gulp js; \
mkdir output; \
cp -r css img privacy.txt index.html js vendor output && \
cd output && \
aws s3 sync . s3://mindlevel.net && \
echo "Sync complete"

