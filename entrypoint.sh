#!/bin/sh

set -e

output_value=$(aws cloudformation list-exports --query "Exports[?Name==\`${INPUT_EXPORT_NAME}\`].Value" --output text);

if [ "${INPUT_ENCODE_BASE64}" = "true" ]
then
    echo "::set-output name=value::$(echo $output_value | base64)"
else
    echo "::set-output name=value::$output_value"
fi

