#!/bin/sh

set -e

PWD=$(pwd)

UNITY_2019=/Applications/Unity/Hub/Editor/2019.4.36f1
UNITY_2020=/Applications/Unity/Hub/Editor/2020.3.30f1
UNITY_2021=/Applications/Unity/Hub/Editor/2021.2.14f1

UNITY_2019_EXE="$UNITY_2019/Unity.app/Contents/MacOS/Unity"
UNITY_2020_EXE="$UNITY_2020/Unity.app/Contents/MacOS/Unity"
UNITY_2021_EXE="$UNITY_2021/Unity.app/Contents/MacOS/Unity"

if [ ! -f "$UNITY_2019_EXE" ]; then
    echo "Unity not found at $UNITY_2019_EXE"
    exit -1
fi

if [ ! -f "$UNITY_2020_EXE" ]; then
    echo "Unity not found at $UNITY_2020_EXE"
    exit -1
fi

if [ ! -f "$UNITY_2021_EXE" ]; then
    echo "Unity not found at $UNITY_2021_EXE"
    exit -1
fi
