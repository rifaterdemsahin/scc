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

### 4. Create a Test Namespace

1. Create a new namespace for testing:
   ```sh
   oc create namespace scc-test
   ```
2. Switch to the new namespace:
   ```sh
   oc project scc-test
   ```

### 5. Define and Apply SCCs

1. Create a YAML file for your SCC (e.g., `scc.yaml`):
   ```yaml
   apiVersion: security.openshift.io/v1
   kind: SecurityContextConstraints
   metadata:
     name: restricted-scc
   allowHostDirVolumePlugin: false
   allowHostIPC: false
   allowHostNetwork: false
   allowHostPID: false
   allowHostPorts: false
   allowPrivilegeEscalation: false
   allowedCapabilities: []
   defaultAddCapabilities: []
   fsGroup:
     type: MustRunAs
   runAsUser:
     type: MustRunAsRange
   seLinuxContext:
     type: MustRunAs
   supplementalGroups:
     type: MustRunAs
   volumes:
   - configMap
   - downwardAPI
   - emptyDir
   - persistentVolumeClaim
   - projected
   - secret
   ```

2. Apply the SCC:
   ```sh
   oc apply -f scc.yaml
   ```

### 6. Test the SCC

1. Create a test pod that adheres to the SCC:
   ```yaml
   apiVersion: v1
   kind: Pod
   metadata:
     name: test-pod
   spec:
     containers:
     - name: test-container
       image: busybox
       command: ["sleep", "3600"]
   ```

2. Apply the test pod configuration:
   ```sh
   oc apply -f test-pod.yaml
   ```

3. Verify the pod is running:
   ```sh
   oc get pods
   ```

### 7. Clean Up

1. Delete the test pod:
   ```sh
   oc delete pod test-pod
   ```
2. Delete the namespace:
   ```sh
   oc delete namespace scc-test
   ```

## Conclusion

You have successfully tested Security Context Constraints (SCC) in OpenShift using GitHub Codespaces. This setup ensures that your applications run with the appropriate security contexts, enhancing the security of your OpenShift environment.
