# Terraform-Resume
Containerized App on AWS ECS Fargate | Terraform, GitHub Actions, Docker, AWS 

# Description 
I wanted to strengthen my terraform skills and create something meaningful that I can actually use in the future. This project will be used for 
demonstrating my skills for what has been learned through my Hands On Lab course, understandings through my AWS course, and pure creativity for 
creating websites and displaying my resume.

I will:
- • IaC - Deploy a containerized web application on AWS ECS Fargate using Terrafrom as my choice of IaC.
  - Amazon VPC (2 Availability Zones), Amazon ECR (Container Registry), Amazon ECS with AWS Fargate, and an Application Load Balancer (ALB)
- • Write modular code separating network layers (VPC) from application layers (ECS).
- • GitHub Actions Workflow:
	- CI Path: Triggers on pull requests. It runs terraform plan to preview changes and utilizes security linting tools like tfsec or Checkov to inspect your code.
	- CD Path: Triggers on merging to main. It builds your application's Docker image, pushes it to ECR, and triggers terraform apply to roll out the new container task definition.

# A list of what this project is about at a high level
**The Goal:** Build a production-ready CI/CD pipeline that builds a Docker image, pushes it to AWS, and updates serverless container infrastructure.
- **AWS Infrastructure:** Amazon VPC (2 Availability Zones), Amazon ECR (Container Registry), Amazon ECS with AWS Fargate, and an Application Load Balancer (ALB).
- **Terraform Setup:** Write modular code separating network layers (VPC) from application layers (ECS).
- **GitHub Actions Workflow:**
    - **CI Path:** Triggers on pull requests. It runs `terraform plan` to preview changes and utilizes security linting tools like **tfsec** or **Checkov** to inspect your code.
    - **CD Path:** Triggers on merging to `main`. It builds your application's Docker image, pushes it to ECR, and triggers `terraform apply` to roll out the new container task definition.

# Phases

## The roadmap
- Phase	What you’ll build	The core concept
|0	| Account safety and tooling	Least privilege, cost control|
|1	| Remote state bootstrap	Why state matters and how locking works|
|2	| Network module	Public vs. private subnets, routing, multi-AZ|
|3	| ECR module	Image registry and lifecycle|
|4	| ECS, Fargate and ALB module	Task definitions, services, security groups, IAM roles|
|5	| Dev and prod from one codebase	Variables, tfvars, separate state|
|6	| App and Dockerfile	Container health checks, image tagging|
|7	| CI workflow	Plan on PR, security scanning|
|8	| CD workflow	OIDC auth to AWS, deploy on merge|
|9	| Observability and AIOps	Alarms, anomaly detection|
|10 | Teardown	terraform destroy, avoiding surprise bills|
