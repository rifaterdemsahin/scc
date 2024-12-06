Sure, here's a more detailed guide on installing Helm on WSL for Windows 10, including setting the necessary permissions:

# 🚀 How to Install Helm on WSL for Windows 10

## 🛠️ Quick Installation

For Windows 10 users with WSL (Windows Subsystem for Linux), you can quickly install Helm using this one-liner:

```bash
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
```

This command downloads the Helm installation script from the official Helm GitHub repository and executes it.

## 🔐 Setting Proper Permissions

After installing Helm, you may need to set the correct permissions to ensure it runs smoothly. Follow these steps:

1. **Verify Helm Installation:**
   ```bash
   helm version
   ```
   This command checks if Helm is installed correctly and displays the version.

2. **Set Execute Permissions:**
   ```bash
   sudo chmod +x /usr/local/bin/helm
   ```
   This command ensures that the Helm binary has execute permissions.

3. **Add Helm to Your PATH:**
   If Helm is not in your PATH, you can add it by modifying your `.bashrc` or `.zshrc` file:
   ```bash
   echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
   source ~/.bashrc
   ```
   This command appends the Helm binary location to your PATH and reloads the shell configuration.

## 📚 Additional Resources

For more detailed installation instructions and troubleshooting, please refer to the official Helm documentation: Helm Installation Guide.

Feel free to reach out if you have any questions or run into any issues!