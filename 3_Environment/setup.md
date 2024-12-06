# Testing Security Context Constraints (SCC) in OpenShift using GitHub Codespaces

This guide will help you set up and test Security Context Constraints (SCC) in OpenShift using GitHub Codespaces.

## Prerequisites

- A GitHub account
- Access to GitHub Codespaces
- Basic knowledge of OpenShift and Kubernetes
- An OpenShift cluster (you can use a local setup like Minishift or a cloud-based OpenShift cluster)

## Getting Started

### 1. Create a Repository

1. Create a new repository on GitHub.
2. Clone the repository to your local machine or directly open it in GitHub Codespaces.

### 2. Set Up GitHub Codespaces

1. Open your repository in GitHub Codespaces.
2. Ensure you have the necessary tools installed:
   - `oc` (OpenShift CLI)
   - `kubectl` (Kubernetes CLI)

### 3. Connect to Your OpenShift Cluster

1. In your Codespace terminal, log in to your OpenShift cluster:
   ```sh
   oc login <your-openshift-cluster-url>
   ```
2. Verify your connection:
   ```sh
   oc status
   ```
