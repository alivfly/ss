cat > /ssrbin/config.json <<EOF
{
    "password": "${PASSWORD}",
    "method": "aes-256-gcm",
    "protocol": "origin",
    "protocol_param": "",
    "obfs": "plain",
    "obfs_param": "",

    "udp": true,
    "idle_timeout": 300,
    "connect_timeout": 6,
    "udp_timeout": 6,

    "server_settings": {
        "listen_address": "0.0.0.0",
        "listen_port": ${PORT}
    },

    "client_settings": {
        "server": "${APP_SITE}",
        "server_port": 443,
        "listen_address": "0.0.0.0",
        "listen_port": 1080
    },

    "over_tls_settings": {
        "enable": true,
        "server_domain": "",
        "path": "",
        "root_cert_file": ""
    }
}
EOF

/ssrbin/ssr-server
