#!/bin/sh

PWD=$(pwd)

if [ "$(uname)" == "Darwin" ]; then
    UNITY_PREFIX=/Applications/Unity/Hub/Editor
    UNITY_SUFFIX=Unity.app/Contents/MacOS/Unity
    PLAYMODE_PLATFORM=StandaloneOSX
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    UNITY_PREFIX=~/Unity/Hub/Editor
    UNITY_SUFFIX=Editor/Unity
    PLAYMODE_PLATFORM=StandaloneLinux64
else
    UNITY_PREFIX=/Applications/Unity/Hub/Editor
fi

UNITY_2019="$UNITY_PREFIX/2019.4.39f1"
UNITY_2020="$UNITY_PREFIX/2020.3.35f1"
UNITY_2021="$UNITY_PREFIX/2021.3.4f1"
UNITY_2022="$UNITY_PREFIX/2022.1.4f1"

UNITY_2019_EXE="$UNITY_2019/$UNITY_SUFFIX"
UNITY_2020_EXE="$UNITY_2020/$UNITY_SUFFIX"
UNITY_2021_EXE="$UNITY_2021/$UNITY_SUFFIX"
UNITY_2022_EXE="$UNITY_2022/$UNITY_SUFFIX"

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

if [ ! -f "$UNITY_2022_EXE" ]; then
    echo "Unity not found at $UNITY_2022_EXE"
    exit -1
fi
