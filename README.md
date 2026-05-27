# DevOps Assignment — Flask App Deployment

This is my assignment project where I deployed a Flask web app using Terraform, Ansible, Docker and Proxmox.

## What it does

The app lets users leave messages. It saves them to a PostgreSQL database and shows them on the homepage.

## How to run it locally

Make sure you have Docker installed then just run:

```bash
docker compose up -d
```

Then open your browser and go to `http://localhost:5000`

To stop it:

```bash
docker compose down
```

## Project structure

- `app.py` — the Flask app
- `Dockerfile` — builds the container
- `docker-compose.yml` — runs the app and database together
- `templates/index.html` — the webpage
- `terraform/` — provisions the VMs on Proxmox
- `ansible/` — configures the VMs after they are created

## Infrastructure

Three VMs are used:

| VM | What it does |
|----|-------------|
| web-01 | Runs the Flask app in Docker |
| db-01 | Runs PostgreSQL |
| monitor-01 | Monitoring tools |

## Deploying to Proxmox

**Step 1 — create the VMs with Terraform:**

```bash
cd terraform
cp terraform.tfvars.example terraform.tfvars
# edit terraform.tfvars with your Proxmox details
terraform init
terraform apply
```

**Step 2 — configure the VMs with Ansible:**

```bash
cd ansible
ansible-playbook -i inventory.ini site.yml
```

After that the app should be running at `http://192.168.1.101:5000`

## Notes

- Default database credentials are in `docker-compose.yml` — change these for production
- The `terraform.tfvars.example` file shows what values you need to fill in
- Tested on Ubuntu 24.04
