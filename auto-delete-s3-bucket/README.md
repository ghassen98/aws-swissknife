# 🪣 S3 Bucket Cleanup Lambda

This is a small but handy AWS Lambda function designed to **automatically empty an S3 bucket before deleting it**. 

🛑 By default, AWS does not allow deleting non-empty buckets. This utility solves that by recursively removing all objects and versions before bucket deletion.

---

## 🔧 Use case

- You're cleaning up resources after a deployment.
- You're building a CloudFormation stack and need to make sure S3 buckets are clean before deletion.
- You want to automate lifecycle management of temporary buckets.

---

## 🚀 How it works

- The Lambda function is triggered manually or via CloudFormation.
- It lists all objects (including versioned ones, if applicable).
- Deletes them in batches.
- Deletes the bucket.

---

## 📁 Files

- `template.yaml` — CloudFormation template to deploy the Lambda.
- `lambda/handler.py` — The actual cleanup logic.
- `README.md` — This file.

---

## 🧪 How to deploy

### Using AWS CLI:

```bash
aws cloudformation deploy \
  --template-file template.yaml \
  --stack-name s3-cleanup-stack \
  --capabilities CAPABILITY_IAM
