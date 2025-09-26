# 📤 Lambda Share SSM Document to OU

This CloudFormation example deploys a Lambda function that shares an SSM Document to an AWS Organizations OU (Organization Unit).

---

## 🔧 Use case

- You manage SSM Documents centrally and want to share them to other accounts inside an OU.

---

## 🚀 How it works

- The template deploys a Lambda that calls SSM APIs to modify document sharing settings for a given OU.

---

## 📁 Files

- `lambda-share-ssm-doc-to-ou.yaml` — CloudFormation template.
- `README.md` — This file.

---

## 🧪 How to deploy

```bash
aws cloudformation deploy \
  --template-file lambda-share-ssm-doc-to-ou.yaml \
  --stack-name lambda-share-ssm-doc-to-ou \
  --capabilities CAPABILITY_NAMED_IAM
```

---

## 🧹 How to clean up

Delete the stack to remove created resources.

---

## 📜 License

MIT
