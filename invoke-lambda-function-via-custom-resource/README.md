# ⚡ Invoke Lambda via Custom Resource

This CloudFormation example demonstrates invoking a Lambda function via a CloudFormation custom resource (Lambda-backed custom resource) to perform arbitrary provisioning steps during stack creation or update.

---

## 🔧 Use case

- You need to run custom logic during CloudFormation deployment (for example external configuration, secrets provisioning, or API calls).

---

## 🚀 How it works

- The template deploys a Lambda function and a custom resource that triggers it.
- The Lambda performs the custom work and returns success/failure to CloudFormation.

---

## 📁 Files

- `invoke-lambda-function-via-custom-resource.yaml` — CloudFormation template.
- `README.md` — This file.

---

## 🧪 How to deploy

```bash
aws cloudformation deploy \
  --template-file invoke-lambda-function-via-custom-resource.yaml \
  --stack-name invoke-lambda-via-cr \
  --capabilities CAPABILITY_NAMED_IAM
```

---

## 🧹 How to clean up

Delete the stack to remove created resources.

---

## 📜 License

MIT
