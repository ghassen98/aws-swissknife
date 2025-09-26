#!/usr/bin/env bash
set -euo pipefail

# Simple deploy helper for the dynamic-object-name CloudFormation template.
# Usage:
#   ./deploy.sh                  # uses defaults (stack: dynamic-object-name, template: dynamic-object-name.yaml)
#   STACK_NAME=custom-name ./deploy.sh --parameter-overrides Key=Value

STACK_NAME=${STACK_NAME:-dynamic-object-name}
TEMPLATE_FILE=${TEMPLATE_FILE:-dynamic-object-name.yaml}

aws cloudformation deploy \
  --template-file "$TEMPLATE_FILE" \
  --stack-name "$STACK_NAME" \
  --capabilities CAPABILITY_NAMED_IAM \
  "$@"
