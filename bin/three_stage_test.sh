#!/bin/bash

if [ $# -ne 5 ]; then
    echo "usage: $0 version rasConf altsConf repeatTime log4jConf"
    exit 1
fi

raseHome=/home/ielm/rase

version=$1

rasConf=$(pwd)/$2
if [ ! -f $rasConf ]; then
    rasConf=$2
fi

altsConf=$(pwd)/$3
if [ ! -f $altsConf ]; then
    altsConf=$3
fi
ks
repeatTime=$4

log4jConf=$(pwd)/$5
if [ ! -f $log4jConf ]; then
    log4jConf=$5
fi

m2Dir=$raseHome/m2/hk/ust/felab/rase/$version
m2Dist=rase-$version-bin.zip
raseRoot=$raseHome/var/$version

mkdir -p $raseRoot; rm -rf $raseRoot/*

unzip $m2Dir/$m2Dist -d $raseRoot/ > /dev/null
raseRoot=$raseRoot/rase
cp $log4jConf $raseRoot/conf/log4j.properties

logDir=$raseHome/logs
mkdir -p $logDir; rm -rf $logDir/*
$raseRoot/bin/headquarters.sh $rasConf $altsConf $repeatTime $logDir 48
