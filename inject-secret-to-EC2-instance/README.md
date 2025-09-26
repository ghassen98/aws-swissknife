# 🔐 Inject Secret to EC2 Instance

This CloudFormation template demonstrates how to inject secrets (for example from Secrets Manager or SSM Parameter Store) into an EC2 instance at launch time.

---

## 🔧 Use case

- You want to provision EC2 instances with secrets available at boot (for example database credentials).
- You want to avoid baking secrets into AMIs and prefer dynamic injection.

---

## 🚀 How it works

- The template provisions an EC2 instance and provides a mechanism (user data or IAM role) for the instance to retrieve secrets securely.
- Optionally uses AWS Secrets Manager or SSM Parameter Store and appropriate IAM permissions.

---

## 📁 Files

- `inject-secret-to-EC2-instance.yaml` — CloudFormation template.
- `README.md` — This file.

---

## 🧪 How to deploy

```bash
aws cloudformation deploy \
  --template-file inject-secret-to-EC2-instance.yaml \
  --stack-name inject-secret-to-ec2-instance \
  --capabilities CAPABILITY_NAMED_IAM
```

---

## 🧹 How to clean up

Delete the stack to remove created resources.

---

## 📜 License

MIT
