# Increase the limit
ulimit -n 65536

# Increase size of file handles and inode cache
sysctl -w fs.file-max=2097152

# Increase number of incoming connections
sysctl -w net.core.somaxconn=32768

# Increase number of incoming connections backlog
sysctl -w net.core.netdev_max_backlog=65536

# Increase the maximum amount of option memory buffers
sysctl -w net.core.optmem_max=25165824

# Increase TCP maximum buffer size
sysctl -w net.ipv4.tcp_rmem="10240 87380 12582912"
sysctl -w net.ipv4.tcp_wmem="10240 87380 12582912"

# Increase Linux autotuning TCP buffer limits
sysctl -w net.ipv4.tcp_mem="786432 1048576 26777216"
sysctl -w net.ipv4.udp_mem="65536 131072 262144"

# Increase the read-buffer space allocatable
sysctl -w net.ipv4.tcp_rfc1337=1
sysctl -w net.ipv4.tcp_window_scaling=1
sysctl -w net.ipv4.tcp_sack=1
sysctl -w net.ipv4.tcp_fack=1
sysctl -w net.ipv4.tcp_congestion_control=cubic

# Enable BBR Tcp
sysctl -w net.core.default_qdisc=fq
sysctl -w net.ipv4.tcp_congestion_control=bbr

# save
sysctl -p

