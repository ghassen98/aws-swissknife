# secret-update-notification

CloudFormation template that creates and monitors an AWS Secrets Manager secret.
When the secret value is updated, a Lambda function publishes a notification to an SNS topic with email subscription.

## What it deploys

- 1 Secrets Manager secret
- 1 SNS topic
- 1 SNS email subscription
- 1 Lambda function (Python 3.11)
- 1 EventBridge rule for Secrets Manager update events
- IAM role/policies and CloudWatch log group

## Template

- `secret-update-notification.yaml`

## Parameters

- `EmailAddress`: Email destination for SNS notifications
- `SecretName`: Secret name to create/monitor (default: `my-secret`)
- `SecretValue`: Initial secret value (NoEcho)

## Deploy

```bash
aws cloudformation deploy \
  --template-file secret-update-notification.yaml \
  --stack-name secret-update-notification \
  --capabilities CAPABILITY_IAM \
  --parameter-overrides \
    EmailAddress=you@example.com \
    SecretName=my-secret \
    SecretValue='initial-value'
```

After deployment, confirm the SNS email subscription from your inbox.

## Test

Update the secret value and check your email notification:

```bash
aws secretsmanager put-secret-value \
  --secret-id my-secret \
  --secret-string 'new-value'
```

## Cleanup

```bash
aws cloudformation delete-stack --stack-name secret-update-notification
```
