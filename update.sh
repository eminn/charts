#!/bin/bash
helm package ~/emindemirci/Development/ibm-charts/community/hazelcast-jet-enterprise
helm repo index --url https://eminn.github.io/hazelcast-charts/ .
git add .
git commit -m "New version of hazelcast-jet-enterprise" --no-edit
git push emin gh-pages -f
