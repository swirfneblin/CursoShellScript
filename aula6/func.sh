#!/bin/bash

maiuscula() {
	VAR1=$(echo $1 | tr a-z A-Z)
}

maiuscula shell
echo $VAR1
