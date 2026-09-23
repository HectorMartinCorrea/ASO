#!/bin/bash
bytes_a_gb () {
    bytes=479107444000
    echo "scale=2; $bytes / 1073741824" |bc 
}
bytes_a_gb