#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=(($NUMBER1+$NUMBER2))

TIMESTAMP=$(date)

echo "script executed at :: $TIMESTAMP"

echo "sum of $NUMBER2:: $SUM"
