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

- `dynamic-object-name.yaml` — CloudFormation template to deploy the Lambda and S3 bucket.
- `README.md` — This file.

---

## 🧪 How to deploy

### Using AWS CLI:

```bash
aws cloudformation deploy \
  --template-file dynamic-object-name.yaml \
  --stack-name dynamic-object-name \
  --capabilities CAPABILITY_NAMED_IAM
```

---

## � Deploy helpers

Two small helper scripts are included to simplify deployment during development:

- `deploy.sh` — deploys the stack (accepts extra `aws cloudformation deploy` args). Defaults: stack `dynamic-object-name`, template `dynamic-object-name.yaml`.
- `delete-stack.sh` — deletes the stack. Defaults to `dynamic-object-name`.

Make them executable and run:

```bash
chmod +x deploy.sh delete-stack.sh
./deploy.sh
# or with custom stack name
STACK_NAME=my-test ./deploy.sh --parameter-overrides BucketPrefix=my-bucket-

./delete-stack.sh
```


## �🧹 How to clean up

To delete all resources created by this stack, simply delete the stack:

```bash
aws cloudformation delete-stack --stack-name dynamic-object-name
```

---

## 📝 Example bucket name

```
my-bucket-20240604123456
```

---

## 📜 License

MIT
