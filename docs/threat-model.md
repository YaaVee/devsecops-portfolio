# Threat Model: DevSecOps Pipeline

## Assets
1. **Source Code**: Application and infrastructure code
2. **Container Images**: Built application containers
3. **Secrets**: API keys, database credentials
4. **Kubernetes Cluster**: Control plane and worker nodes

## Threat Actors
- **External Attacker**: Internet-based attacks
- **Malicious Insider**: Compromised employee
- **Supply Chain**: Compromised dependencies

## Attack Vectors

### 1. CI/CD Pipeline
- **Threat**: Malicious code injection
- **Mitigation**: SAST, code review, branch protection

### 2. Container Registry
- **Threat**: Vulnerable base images
- **Mitigation**: Image scanning, signing, trusted registries

### 3. Kubernetes API
- **Threat**: Unauthorized access
- **Mitigation**: RBAC, network policies, audit logging

### 4. Secrets Management
- **Threat**: Secret leakage
- **Mitigation**: Secret scanning, vault integration

## Risk Matrix

| Threat | Likelihood | Impact | Mitigation |
|--------|------------|--------|------------|
| Code injection | Medium | High | SAST, review |
| Image compromise | High | High | Scanning, signing |
| API breach | Low | Critical | RBAC, policies |
| Secret leak | Medium | Critical | Scanning, vault |
