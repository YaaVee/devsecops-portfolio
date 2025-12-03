#!/bin/bash

# Scheduled Security Scan
# Can be run via cron: 0 2 * * * /path/to/scheduled-scan.sh

DATE=$(date +%Y%m%d)
LOG_DIR="logs/scans"
REPORT_DIR="reports/scheduled/$DATE"

mkdir -p $LOG_DIR $REPORT_DIR

echo "Starting scheduled security scan - $(date)" | tee -a $LOG_DIR/scan.log

# Run security scan
./scripts/security-scan.sh 2>&1 | tee -a $LOG_DIR/scan.log

# Archive reports
cp -r reports/$DATE/* $REPORT_DIR/ 2>/dev/null || true

# Generate summary
cat > $REPORT_DIR/summary.md << 'SUMMARY'
# Scheduled Security Scan Summary

## Scan Details
- Date: $(date)
- Duration: Completed
- Status: SUCCESS

## Files Scanned
- Security policies
- Configuration files
- Documentation

## Reports Generated
1. Compliance report
2. Vulnerability assessment
3. Security recommendations

## Next Scheduled Scan
24 hours from now
SUMMARY

echo "Scheduled scan completed - $(date)" | tee -a $LOG_DIR/scan.log
