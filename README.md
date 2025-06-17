# 🚀 IAM + EC2 + S3 Logging Project (AWS Free Tier)

Hi! 👋 I created this project to **practice IAM roles, EC2 instances, and S3 integration** — all using the **AWS Free Tier**. I'm learning how to securely connect AWS services without using access keys, and this was a great hands-on exercise to understand how **IAM roles work in real cloud environments**.

---

## 🧠 What I Learned

- How to create an **IAM role** for EC2
- How EC2 can access S3 **without keys**, just using the role
- How to write a **user-data script** that uploads a log to S3
- How to test and debug IAM permissions using the AWS CLI
- How `s3:ListBucket` and `s3:PutObject` permissions work

---

## 🛠️ Project Setup

### 1. **S3 Bucket**
- Created a bucket named `logbucketforpractice`
- Gave permissions to allow EC2 to upload files to it

### 2. **IAM Role and Policy**
- Created a policy to allow:
  - `s3:PutObject` and `s3:GetObject` for objects in the bucket
  - `s3:ListBucket` to list the contents
- Created an **IAM Role** named `EC2S3LogRole` and attached the policy

### 3. **EC2 Instance**
- Launched a **t2.micro** EC2 (Amazon Linux 2)
- Attached the IAM role
- Added a user-data script to install AWS CLI and upload a log file

---

## 📸 Screenshots

Here are some screenshots from my setup:

### ✅ EC2 with IAM Role attached


![image](https://github.com/user-attachments/assets/1d5ce305-1523-4ba4-a5e5-86eeb5c490c2)


### ✅ S3 Bucket Showing Uploaded Log

![image](https://github.com/user-attachments/assets/1026f530-7f77-402c-9224-862b313f16d1)


### ✅ Terminal Output From EC2 (Success!)
![image](https://github.com/user-attachments/assets/d7e2fb4b-d13f-4763-b7c1-9c9de49d054b)


---

## 📂 Folder Structure

```bash
iam-linux-ec2-project/
├── README.md
├── scripts/
│   └── install-logger.sh
├── test/
│   └── validate-access.sh

