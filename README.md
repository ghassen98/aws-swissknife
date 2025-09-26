# aws-swissknife
A growing toolbox of AWS tips, scripts, and templates
# 🧰 AWS Tips & Tricks

Welcome to your personal AWS toolbox – a curated collection of practical scripts, CloudFormation templates, and ready-to-use Lambda functions to solve everyday AWS challenges.

---

## 🚀 What's inside

Each subfolder in this repo is a self-contained tip, trick, or small utility – ready to deploy or adapt to your projects.

### ✅ Available Tools

| Trick | Description |
|-------|-------------|
| [`auto-delete-s3-bucket`](./auto-delete-s3-bucket) | Lambda function and CloudFormation template to automatically **empty and delete an S3 bucket**. Useful when cleaning up CloudFormation stacks. |
| [`dynamic-object-name`](./dynamic-object-name) | CloudFormation + Lambda example that creates an S3 bucket with a static prefix and a dynamic suffix to avoid name collisions. |
| [`create-ssm-doc-and-share-it-via-lambda-backed-custom-resource`](./create-ssm-doc-and-share-it-via-lambda-backed-custom-resource) | Create or update an SSM Document and share it to accounts or an OU using a Lambda-backed custom resource. |
| [`deploy-and-call-lambda-function-cross-account-call`](./deploy-and-call-lambda-function-cross-account-call) | Two-template example showing how to deploy a Lambda in one account and invoke it from another (cross-account invocation patterns). |
| [`deploy-and-call-multiversion-ssm-doc`](./deploy-and-call-multiversion-ssm-doc) | Deploy and manage multiple versions of an SSM Document and show how to invoke them. |
| [`inject-secret-to-EC2-instance`](./inject-secret-to-EC2-instance) | Provision EC2 instances that retrieve secrets securely at boot using IAM and Secrets Manager / SSM. |
| [`invoke-lambda-function-via-custom-resource`](./invoke-lambda-function-via-custom-resource) | Example of invoking custom provisioning logic during CloudFormation deployment using a Lambda-backed custom resource. |
| [`lambda-share-ssm-doc-to-ou`](./lambda-share-ssm-doc-to-ou) | Lambda-based helper to share SSM Documents across AWS Organizations OUs. |

More coming soon! Stay tuned 👀

---

## 🛠 How to use

Each tool includes:
- A `README.md` with usage instructions.
- CloudFormation templates (`template.yaml`) for easy deployment.
- The actual Lambda or script source code.

---

## 💡 Why this repo?

AWS offers a huge number of services and APIs, but sometimes small missing features (like deleting a non-empty S3 bucket) can block automation or require extra manual work.

This repo exists to bridge those gaps with minimal, reusable, open-source tools.

---

## 📬 Contributing

Got your own AWS trick you'd like to share? PRs and issues are welcome!

---

## 📜 License

MIT – free to use, modify, and share.

---

## ✍️ Author

Made with ☁️ by [Ghassen Aouinti](https://github.com/ghassen98)
