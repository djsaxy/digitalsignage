[Service]
ExecStart=
ExecStart=-/sbin/agetty -o '-p -f -- \\u' --noclear --autologin ccboe %I $TERM

[Install]
After=network-online.target
Wants=network-online.target
WantedBy=multi-user.target
