#!/usr/bin/env bash
for d in scriptor_*/ ; do
    d=${d::-1}
    t=${d}_tmp
    cp -R $d $t
    cp -R mod_resources/* $t
    
    jar cf $d.jar -C $t .

    cd $t
    rm -rf src
    rm -rf META-INF
    rm fabric.mod.json
    cd ..

    jar cf $d.zip -C $t .

    rm -rf $t
done