[![OpenSSF Scorecard](https://api.securityscorecards.dev/projects/github.com/stormsinbrewing/savvy-devsecops/badge)](https://securityscorecards.dev/viewer/?uri=github.com/stormsinbrewing/savvy-devsecops) [![OpenSSF Best Practices](https://bestpractices.coreinfrastructure.org/projects/7960/badge)](https://bestpractices.coreinfrastructure.org/projects/7960)

Security Best Practices are listed [here](docs/checklist.md)

### Best Practices for GitHub Native DevSecOps Pipeline

Implementing DevSecOps best practices for CI/CD (Continuous Integration/Continuous Delivery) in GitHub involves integrating security practices throughout the software development lifecycle. This ensures that security is not treated as an afterthought but is an integral part of the development process. Here's a description of GitHub native DevSecOps CI/CD best practices:

**1. Infrastructure as Code (IaC) Security:** Utilize GitHub's infrastructure as code capabilities to enforce security measures in the deployment pipeline. Use tools like Terraform or GitHub Actions to ensure that infrastructure deployments are secure and adhere to best practices.

**2. Automated Security Testing:** Integrate automated security testing into the CI/CD pipeline. Use tools like SonarQube, Snyk, or GitHub-native security tools to scan for vulnerabilities, malware, or code flaws as part of the build process.

**3. Code Analysis and Review:** Encourage secure coding practices through code analysis and review. Leverage GitHub's code scanning and pull request review features to identify and fix security vulnerabilities early in the development process.

**4. Policy Enforcement with GitHub Actions:** Enforce security policies using GitHub Actions to automate checks for compliance, code quality, and vulnerability scanning. Use pre-configured workflows to ensure that all code changes meet the organization's security standards.

**5. Container Security:** Implement container scanning tools like Docker Security Scanning or GitHub container scanning to detect vulnerabilities within the container images before deployment. Make sure that only secure and approved container images are used in the CI/CD pipeline.

**6. Secret Management:** Manage secrets securely by utilizing GitHub's native secret management solutions. Encourage the use of environment variables and GitHub Secrets to store sensitive information securely, reducing the risk of exposure during the CI/CD process.

**7. Access Control and Permissions:** Enforce access control and permissions for repositories and CI/CD pipelines to ensure that only authorized personnel have access to sensitive information and critical deployment processes. Implement GitHub's access management features to define roles and permissions for different stakeholders.

**8. Incident Response and Monitoring:** Implement monitoring and logging solutions within the CI/CD pipeline to track and analyze security incidents in real-time. Use tools like GitHub Security Advisories and Security Insights to stay informed about security vulnerabilities and take prompt action when necessary.

**9. Continuous Learning and Improvement:** Foster a culture of continuous learning and improvement by regularly updating security measures, conducting security awareness training, and staying informed about the latest security threats and best practices. Encourage developers to stay updated with the latest security guidelines and tools.

By following these GitHub native DevSecOps CI/CD best practices, organizations can build a robust and secure development pipeline, ensuring that security is integrated seamlessly throughout the software development lifecycle.

### SBOM with Syft

```
$ syft dir:. -o spdx-json=spdx.source.json # Source SBOM
$ syft docker:savvy -o spdx-json=spdx.docker.json # Local Docker Image SBOM
```
