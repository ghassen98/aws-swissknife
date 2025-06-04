# 🪣 Dynamic Object Name S3 Bucket

This is a small but handy AWS Lambda-backed CloudFormation utility to **create an S3 bucket with a dynamic name**.  
The bucket name includes a static prefix and a unique suffix generated at deployment time.

---

## 🔧 Use case

- You need to create S3 buckets with unique names for each deployment.
- You want to avoid naming collisions in multi-environment or CI/CD scenarios.
- You want to automate the creation of uniquely named buckets for testing or ephemeral environments.

---

## 🚀 How it works

- A Lambda function is deployed as part of the stack.
- A CloudFormation custom resource invokes the Lambda to generate a unique suffix (timestamp).
- The S3 bucket is created with a name combining your static prefix and the generated suffix.

---

## 📁 Files

- `template.yaml` — CloudFormation template to deploy the Lambda and S3 bucket.
- `README.md` — This file.

---

## 🧪 How to deploy

### Using AWS CLI:

```bash
aws cloudformation deploy \
  --template-file template.yaml \
  --stack-name dynamic-object-name \
  --capabilities CAPABILITY_NAMED_IAM
```

---

## 🧹 How to clean up

To delete all resources created by this stack, simply delete the stack:

```bash
aws cloudformation delete-stack --stack-name dynamic-object-name
```

---

## 📝 Example bucket name

```
my-bucket-20240604123456
```