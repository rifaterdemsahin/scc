
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