# Get CloudFormation Outputs

Given the export name of a CloudFormation output returns the value.

## Inputs

### `export_name`

**Required** CloudFormation output export name.

### `encode_base64`

**Optional** Encode the output as base64, useful for complex structures. Options: `true|false`

## Outputs

### `value`

The value of the CloudFormation Output.

## Example usage

```yaml
- name: Get CloudFormation output
  id: get_export
  uses: songtradr/action-get-cloudformation-output@v1
  with:
    export_name: "MY-EXPORT"
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    AWS_DEFAULT_REGION: us-east-1

- name: Use the output
  run: echo ${{ steps.get_export.outputs.value}}
```
