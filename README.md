# Silent Scalper
Serverless pipeline that slashes idle‑server costs and survives traffic spikes.

## What It Does
1. User uploads a file (optionally via API Gateway).
2. AWS Lambda validates / transforms the file.
3. Good data → DynamoDB 
4. Bad data → S3 Quarantine Bucket + SNS alert.
5. CloudWatch captures logs and metrics.

## AWS Stack
- Lambda · S3 · DynamoDB · API Gateway · SNS · CloudWatch · IAM  
- Everything is provisioned with **Terraform** (`main.tf`).


This architecture leverages serverless AWS services like Lambda, API Gateway, and DynamoDB, which offer high scalability, minimal maintenance overhead, and cost-efficient pricing models. These services scale automatically with demand and only incur charges based on actual usage, making them ideal for unpredictable or spiky workloads.
