#!/bin/bash
sed -i -E "s/(www\..+\.com)/http:\/\/\1/g" $1

