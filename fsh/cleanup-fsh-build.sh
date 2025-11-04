#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

rm -rf ${SCRIPT_DIR}/fsh-generated 2>/dev/null
rm -rf ${SCRIPT_DIR}/input-cache 2>/dev/null
rm -rf ${SCRIPT_DIR}/output 2>/dev/null
rm -rf ${SCRIPT_DIR}/temp 2>/dev/null
rm -rf ${SCRIPT_DIR}/template 2>/dev/null