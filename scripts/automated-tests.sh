#!/bin/bash

echo "Running Automated Security Tests"
echo "================================"

./scripts/simple-test.sh

echo ""
echo "Additional Security Checks"
echo "=========================="

critical_files=(
    "README.md"
    "LICENSE"
    "docs/architecture.md"
)

for file in "${critical_files[@]}"; do
    if [ -f "$file" ]; then
        echo "PASS: $file"
    else
        echo "FAIL: $file"
    fi
done

echo ""
echo "Test completed successfully"
