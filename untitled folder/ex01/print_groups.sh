#!/bin/bash
id -nG | sed  's/ /,/g'
