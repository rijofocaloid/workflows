#!/bin/bash

# Perform the OWASP ZAP scan and generate the HTML report
zap-cli --zap-path /zap/work/zap.sh --quick-scan --spider https://dev-bo.nephroplus.com/
zap-cli --zap-path /zap/work/zap.sh --active-scan https://dev-bo.nephroplus.com/
zap-cli --zap-path /zap/work/zap.sh --report /path/to/scan-report.html -o html

echo "OWASP ZAP scan completed!"
