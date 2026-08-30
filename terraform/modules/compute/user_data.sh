#!/bin/bash
dnf update -y
dnf install -y httpd

systemctl enable httpd
systemctl start httpd

cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Nimbriq</title>
</head>
<body>
    <h1>Nimbriq Cloud Server</h1>
    <p>Deployed successfully on AWS EC2.</p>
</body>
</html>
EOF