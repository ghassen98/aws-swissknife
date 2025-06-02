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
| [`dynamic-object-name`](./dynamic-object-name) | Lambda function and CloudFormation template to return a **dynamic suffix** name. Useful when launching many instances of the same object in the same AWS account. |

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
