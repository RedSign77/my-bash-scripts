#!/bin/env bash
function out_val2() {
    echo $val2
}
function out_text() {
    local val2=654321
    echo $val1
    out_val2
}
function out_args() {
    echo "Number of params: ${#}"
    echo $1
    echo $2
    echo $3
    echo "All params: ${@}"
}
echo "Shell sciprt name: ${0}"
echo "Number of shell script parameters: ${#}"
echo "Shell sciprt parameters: ${@}"
val1=123456
out_text
out_args arg1 arg2 arg3
