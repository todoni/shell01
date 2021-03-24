#!/bin/bash
ifconfig -a | grep "ether" -w | sed s'/ether//' | tr -d '\t '
