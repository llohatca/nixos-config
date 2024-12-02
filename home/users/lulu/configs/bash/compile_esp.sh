#!/usr/bin/env bash
arduino-cli compile --fqbn esp8266:esp8266:generic "$1" --output-dir "$2"

