#!/bin/bash
# Program 27: CPU Temperature Monitor
sensors | grep "Core" | awk '{print $3}'

