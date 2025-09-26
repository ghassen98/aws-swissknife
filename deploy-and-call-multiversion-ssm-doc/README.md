# 📄 Deploy and Call Multi-version SSM Document

This CloudFormation example shows how to deploy an SSM Document with multiple versions and how to invoke or call it as part of automated flows.

---

## 🔧 Use case

- You manage SSM Documents that evolve over time and need versioned deployments.
- You want to automate testing or invocation of a specific document version.

---

## 🚀 How it works

- The CloudFormation template deploys SSM Documents (or updates existing ones) and can create multiple versions.
- Use the SSM API or the `aws ssm send-command` to invoke the document.

---

## 📁 Files

- `deploy-and-call-multiversion-ssm-doc.yaml` — CloudFormation template to create SSM Document versions.
- `README.md` — This file.

---

## 🧪 How to deploy

```bash
aws cloudformation deploy \
  --template-file deploy-and-call-multiversion-ssm-doc.yaml \
  --stack-name deploy-and-call-multiversion-ssm-doc \
  --capabilities CAPABILITY_NAMED_IAM
```

---

## 🧹 How to clean up

Delete the stack to remove created resources.

---

## 📜 License

MIT
