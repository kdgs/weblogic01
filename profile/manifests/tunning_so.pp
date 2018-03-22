#sysctl.conf

#--------------TCP Obrigatorio para WLS ------
net.ipv4.tcp_fin_timeout = 30
net.ipv4.tcp_max_syn_backlog = 4096

#----------------Semaforos--------------------
kernel.sem = 5010 641280 5010 142
kernel.shmmni = 4096
kernel.msgmax = 8192
kernel.msgmnb = 65535
kernel.msgmni = 2878
fs.file-max =65535
net.ipv4.ip_local_port_range = 1204 65000

#-------------Tuning TCP MEDIO ---------------
net.core.rmem_max= 262143
net.core.rmem_default = 262143
net.ipv4.tcp_rmem = 4096 131072 262143
net.ipv4.tcp_wmem = 4096 131072 262143
net.ipv4.tcp_sack = 0
net.ipv4.tcp_timestamps = 0

#-------------Tuning TCP AGRESSIVO------------
net.core.rmem_max = 10000000
net.core.rmem_default = 10000000
net.ipv4.tcp_rmem= 10000000 10000000 10000000
net.ipv4.tcp_wmem = 10000000 10000000 10000000
net.ipv4.tcp_sack = 0
net.ipv4.tcp_timestamps = 0
net.ipv4.tcp_mem = 10000000 10000000 10000000
net.core.wmem_default = 10000000
net.core.wmem_max = 10000000
net.core.optmem_max =10000000
net.core.netdev_max_backlog = 300000

case ->$variavel<- {
  'Medio': {

  }
  'Agressivo': {

  }
  default: {
    #usa medio
  }
}
