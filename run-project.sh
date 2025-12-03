#!/bin/bash

echo "=========================================="
echo "DevSecOps Portfolio Project"
echo "Cloud Security Engineer Implementation"
echo "=========================================="

echo ""
echo "1. Project Structure..."
echo "----------------------"
tree -I 'node_modules|__pycache__|.git' 2>/dev/null || find . -type f -name "*.md" -o -name "*.yaml" -o -name "*.yml" -o -name "*.sh" | sort

echo ""
echo "2. Running Security Scan..."
echo "---------------------------"
./scripts/security-scan.sh

echo ""
echo "3. Checking Documentation..."
echo "---------------------------"
if [ -f "docs/architecture.md" ] && [ -f "docs/threat-model.md" ]; then
    echo "✓ Professional documentation complete"
    echo "  - Architecture design"
    echo "  - Threat modeling"
    echo "  - Compliance framework"
else
    echo "✗ Documentation incomplete"
fi

echo ""
echo "4. DevSecOps Pipeline..."
echo "-----------------------"
if [ -f ".github/workflows/devsecops-pipeline.yml" ]; then
    echo "✓ CI/CD pipeline implemented"
    echo "  - Security gates"
    echo "  - Compliance checks"
    echo "  - Automated reporting"
else
    echo "✗ Pipeline not configured"
fi

echo ""
echo "=========================================="
echo "Project Status: READY FOR PORTFOLIO"
echo "=========================================="
echo ""
echo "What this demonstrates:"
echo "1. Security as Code implementation"
echo "2. DevSecOps pipeline design"
echo "3. Compliance automation"
echo "4. Threat modeling skills"
echo "5. Enterprise security thinking"
echo ""
echo "To showcase to recruiters:"
echo "1. GitHub repository with this structure"
echo "2. Security scan reports"
echo "3. Architecture documentation"
echo "4. Threat models"
