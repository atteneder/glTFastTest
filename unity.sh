#!/bin/sh

PWD=$(pwd)

UNITY_2019=/Applications/Unity/Hub/Editor/2019.4.38f1
UNITY_2020=/Applications/Unity/Hub/Editor/2020.3.33f1
UNITY_2021=/Applications/Unity/Hub/Editor/2021.3.0f1
UNITY_2022=/Applications/Unity/Hub/Editor/2022.1.0b16

UNITY_2019_EXE="$UNITY_2019/Unity.app/Contents/MacOS/Unity"
UNITY_2020_EXE="$UNITY_2020/Unity.app/Contents/MacOS/Unity"
UNITY_2021_EXE="$UNITY_2021/Unity.app/Contents/MacOS/Unity"
UNITY_2022_EXE="$UNITY_2022/Unity.app/Contents/MacOS/Unity"

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
