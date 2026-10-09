[Service]
ExecStart=
ExecStart=-/sbin/agetty -o '-p -f -- \\u' --noclear --autologin kiosk %I $TERM

[Install]
After=network-online.target
Wants=network-online.target
WantedBy=multi-user.target
