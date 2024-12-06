
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
