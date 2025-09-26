# 🔁 Deploy and Call Lambda Function (Cross-account)

This example contains two CloudFormation templates demonstrating how to deploy a Lambda in one account and allow or invoke it from another account (cross-account invocation setup).

---

## 🔧 Use case

- You need to invoke a Lambda in another AWS account as part of a multi-account architecture.
- You want a template to set up the necessary IAM permissions and invocation mechanism.

---

## 🚀 How it works

- `cross-account-lambda-A.yaml` deploys the Lambda and sets up resource-based policies or roles to allow cross-account invocation.
- `cross-account-lambda-B.yaml` demonstrates how an external account can invoke the Lambda (for example by assuming a role or via an invocation role).

---

## 📁 Files

- `cross-account-lambda-A.yaml` — Deploys the Lambda and configures permissions.
- `cross-account-lambda-B.yaml` — Example template showing cross-account invocation configuration.
- `README.md` — This file.

---

## 🧪 How to deploy

Deploy the producer (account A):

```bash
aws cloudformation deploy \
  --template-file cross-account-lambda-A.yaml \
  --stack-name cross-account-lambda-A \
  --capabilities CAPABILITY_NAMED_IAM
```

Deploy the consumer/example (account B):

```bash
aws cloudformation deploy \
  --template-file cross-account-lambda-B.yaml \
  --stack-name cross-account-lambda-B \
  --capabilities CAPABILITY_NAMED_IAM
```

---

## 🧹 How to clean up

Delete the stacks in both accounts to clean up resources.

---

## 📜 License

MIT
