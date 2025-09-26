# 📄 Create and Share SSM Document via Lambda-backed Custom Resource

This CloudFormation example demonstrates how to **create an SSM Document and share it** (for example to another account or OU) using a Lambda-backed custom resource.

---

## 🔧 Use case

- You need to programmatically create or update an SSM Document as part of a CloudFormation deployment.
- You want to share the SSM Document to another AWS account or an AWS Organizations OU automatically.

---

## 🚀 How it works

- The stack deploys a Lambda function which receives the custom resource event.
- The Lambda creates or updates the SSM Document, then calls the SSM API to share it with the target account or OU.
- The Lambda returns success and any attributes to CloudFormation.

---

## 📁 Files

- `create-ssm-doc-and-share-it-via-lambda-backed-custom-resource.yaml` — CloudFormation template for the stack.
- `README.md` — This file.

---

## 🧪 How to deploy

### Using AWS CLI:

```bash
aws cloudformation deploy \
  --template-file create-ssm-doc-and-share-it-via-lambda-backed-custom-resource.yaml \
  --stack-name create-ssm-doc-and-share-it \
  --capabilities CAPABILITY_NAMED_IAM
```

---

## 🧹 How to clean up

To delete all resources created by this stack, delete the stack:

```bash
aws cloudformation delete-stack --stack-name create-ssm-doc-and-share-it
```

---

## 📜 License

MIT
