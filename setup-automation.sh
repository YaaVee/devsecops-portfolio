#!/bin/bash

echo "Setting up Security Automation"
echo "=============================="

echo ""
echo "1. Installing pre-commit hooks..."
if command -v pre-commit &> /dev/null; then
    pre-commit install
    echo "✓ Pre-commit hooks installed"
else
    echo "Note: Install pre-commit with: pip install pre-commit"
fi

echo ""
echo "2. Setting up automated tests..."
if [ -f "scripts/automated-tests.sh" ]; then
    chmod +x scripts/automated-tests.sh
    echo "✓ Automated tests ready"
fi

echo ""
echo "3. Configuring scheduled scans..."
if [ -f "scripts/scheduled-scan.sh" ]; then
    chmod +x scripts/scheduled-scan.sh
    echo "✓ Scheduled scans configured"
    echo "  To schedule daily: Add to crontab:"
    echo "  0 2 * * * cd $(pwd) && ./scripts/scheduled-scan.sh"
fi

echo ""
echo "4. Testing automation..."
./scripts/automated-tests.sh

echo ""
echo "Automation setup complete!"
echo "=========================="
echo ""
echo "Available automation commands:"
echo "1. Daily scan: ./scripts/scheduled-scan.sh"
echo "2. Run tests: ./scripts/automated-tests.sh"
echo "3. Security scan: ./scripts/security-scan.sh"
echo "4. Full project: ./run-project.sh"
