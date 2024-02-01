#!/usr/bin/env bash
for d in scriptor_*/ ; do
    git archive --format=zip HEAD:$d > ${d::-1}.zip
    cp ${d::-1}.zip ${d::-1}.jar
done