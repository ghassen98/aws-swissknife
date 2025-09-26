#!/usr/bin/env bash
set -euo pipefail

# Simple delete helper for the dynamic-object-name CloudFormation stack.
# Usage:
#   ./delete-stack.sh            # deletes stack named dynamic-object-name
#   STACK_NAME=custom-name ./delete-stack.sh

STACK_NAME=${STACK_NAME:-dynamic-object-name}

aws cloudformation delete-stack --stack-name "$STACK_NAME"
