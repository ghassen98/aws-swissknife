# 🪣 S3 Bucket Cleanup Lambda

This is a small but handy AWS Lambda function designed to **automatically empty an S3 bucket before deleting it**.

🛑 By default, AWS does not allow deleting non-empty buckets. This utility solves that by detecting Delete event and recursively removing all objects before bucket deletion.

---

## 🔧 Use case

- You're cleaning up resources after a deployment.
- You're building a CloudFormation stack and need to make sure S3 buckets are clean before deletion.
- You want to delete a service catalog product that include one or more non-empty buckets.
- You want to automate lifecycle management of temporary buckets.

---

## 🚀 How it works

- The Lambda function is triggered manually or via CloudFormation.
- It lists all objects (including versioned ones, if applicable).
- Deletes them in batches.
- Deletes the bucket.

---

## 📁 Files

- `auto-delete-s3-bucket.yaml` — CloudFormation template to deploy the Lambda.
- `README.md` — This file.

---

## 🧪 How to deploy

### Using AWS CLI:

```bash
aws cloudformation deploy \
  --template-file auto-delete-s3-bucket.yaml \
  --stack-name s3-cleanup-stack \
  --capabilities CAPABILITY_IAM
```

---

## 🧹 How to clean up

To delete all resources created by this stack, delete the stack:

```bash
aws cloudformation delete-stack --stack-name s3-cleanup-stack
```

---

## 📜 License

MIT
