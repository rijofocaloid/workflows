#!/bin/bash

# Perform the OWASP ZAP scan and generate the HTML report
zap-cli --quick-scan --spider https://dev-bo.nephroplus.com/
zap-cli --active-scan https://dev-bo.nephroplus.com/
zap-cli --report /github/workspace/scan-report.html -o html

echo "OWASP ZAP scan completed!"
