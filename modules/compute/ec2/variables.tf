#####################################
##   [Security groups and rules]   ##
#####################################
list_of_sgs = {
  "ddd-sg" = {
    ddd-sg-1 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "ingress"]
  }
  "efs-airflow-mt-sg" = {
    efs-airflow-mt-sg-1 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"],
    efs-airflow-mt-sg-2 = ["2049", "2049", "tcp", "aws-vpn-client-sg", "All traffic", "ingress"],
    efs-airflow-mt-sg-3 = ["2049", "2049", "tcp", "airflow-sg", "All traffic", "ingress"]
  }
  "sonicwall-sg" = {
    sonicwall-sg-1 = ["80", "80", "tcp", "50.203.189.114/32", "HTTP traffic", "ingress"],
    sonicwall-sg-2 = ["-1", "-1", "-1", "66.210.253.65/32", "PHX VPN traffic", "ingress"],
    sonicwall-sg-3 = ["22", "22", "tcp", "50.203.189.114/32", "SSH traffic", "ingress"],
    sonicwall-sg-4 = ["4500", "4500", "udp", "50.203.189.114/32", "Custom traffic", "ingress"],
    sonicwall-sg-5 = ["500", "500", "udp", "50.203.189.114/32", "Custom traffic", "ingress"],
    sonicwall-sg-6 = ["4443", "4443", "tcp", "50.203.189.114/32", "Custom traffic", "ingress"],
    sonicwall-sg-7 = ["443", "443", "tcp", "50.203.189.114/32", "Custom traffic", "ingress"],
    sonicwall-sg-8 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
    sonicwall-sg-9 = ["-1", "-1", "-1", "docker-sg", "All traffic", "egress"]
  }
  "airflow-sg" = {
    airflow-sg-1 = ["8080", "8080", "tcp", "192.168.111.0/24", "v:111 dba", "ingress"],
    airflow-sg-2 = ["-1", "-1", "-1", "192.168.110.0/24", "Dell Sonicwall VPN", "ingress"],
    airflow-sg-3 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 servers", "ingress"],
    airflow-sg-4 = ["-1", "-1", "-1", "10.1.100.0/22", "New VPN", "ingress"],
    airflow-sg-5 = ["22", "22", "tcp", "192.168.111.0/24", "v:111 dba", "ingress"],
    airflow-sg-6 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "docker-sg" = {
    docker-sg-1 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "rds-sg" = {
    rds-sg-1  = ["5432", "5432", "tcp", "192.168.111.0/24", "v:111 dba-staff", "ingress"],
    rds-sg-2  = ["5432", "5432", "tcp", "10.0.7.0/24", "dremio-sg", "ingress"],
    rds-sg-3  = ["5432", "5432", "tcp", "10.0.1.148/32", "F5a sftp Gateway", "ingress"],
    rds-sg-4  = ["-1", "-1", "-1", "192.168.110.0/24", "Dell Sonicwall VPN", "ingress"],
    rds-sg-5  = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers 105", "ingress"],
    rds-sg-6  = ["-1", "-1", "-1", "192.168.160.0/24", "PHX VPN", "ingress"],
    rds-sg-7  = ["9047", "9047", "tcp", "192.168.111.0/24", "dremio", "ingress"],
    rds-sg-8  = ["7060", "7060", "tcp", "192.168.111.0/24", "v:111 dba-staff", "ingress"],
    rds-sg-9  = ["22", "22", "tcp", "192.168.111.0/24", "SSH for Data Team", "ingress"],
    rds-sg-10 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "efs-airflow-ec2-sg" = {
    efs-airflow-ec2-sg-1 = ["-1", "-1", "-1", "192.168.110.0/24", "VPN", "ingress"],
    efs-airflow-ec2-sg-2 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "devops-test-env-sg" = {
    devops-test-env-sg-1 = ["-1", "-1", "-1", "192.168.110.0/24", "Dell Sonicwall VPN", "ingress"],
    devops-test-env-sg-2 = ["22", "22", "tcp", "0.0.0.0/0", "SSH for All", "ingress"],
    devops-test-env-sg-3 = ["9000", "9500", "tcp", "10.0.1.0/24", "Custom TCP", "ingress"],
    devops-test-env-sg-4 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "kibana-sg" = {
    kibana-sg-1 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    kibana-sg-2 = ["-1", "-1", "-1", "192.168.110.0/24", "Dell Sonicwall VPN", "ingress"],
    kibana-sg-3 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "tls20-test-sg" = {
    tls20-test-sg-1 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    tls20-test-sg-2 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "aws-created-directory-controllers-sg" = {
    aws-created-directory-controllers-sg-1 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "reportingservice-sg" = {
    reportingservice-sg-1 = ["22", "22", "tcp", "192.168.105.0/24", "F5 Servers", "ingress"],
    reportingservice-sg-2 = ["22", "22", "tcp", "192.168.111.0/24", "data team", "ingress"],
    reportingservice-sg-3 = ["22", "22", "tcp", "192.168.110.0/24", "data team", "ingress"],
    reportingservice-sg-4 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "aws-workspace-sg" = {
    aws-workspace-sg-1 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "aws-vpn-client-sg" = {
    aws-vpn-client-sg-1 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    aws-vpn-client-sg-2 = ["-1", "-1", "-1", "10.0.0.0/16", "F5 Main VPC", "ingress"],
    aws-vpn-client-sg-3 = ["-1", "-1", "-1", "10.1.101.0/24", "Custom Rule", "ingress"],
    aws-vpn-client-sg-4 = ["-1", "-1", "-1", "10.1.100.0/24", "Custom Rule", "ingress"],
    aws-vpn-client-sg-5 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "redis-sg" = {
    redis-sg-1 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "workspace-sg" = {
    workspace-sg-1 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "postgresql-5lab-sg" = {
    postgresql-5lab-sg-1 = ["5432", "5432", "tcp", "192.168.110.0/24", "Postgresql", "ingress"],
    postgresql-5lab-sg-2 = ["5432", "5432", "tcp", "10.0.5.0/24", "RDS", "ingress"],
    postgresql-5lab-sg-3 = ["5432", "5432", "tcp", "10.0.7.0/24", "Dremio", "ingress"],
    postgresql-5lab-sg-4 = ["-1", "-1", "-1", "10.0.3.0/24", "5lab-app-servers", "ingress"],
    postgresql-5lab-sg-5 = ["-1", "-1", "-1", "10.0.4.0/24", "5lab-app-servers", "ingress"],
    postgresql-5lab-sg-6 = ["22", "22", "tcp", "192.168.111.0/24", "SSH for Data Team", "ingress"],
    postgresql-5lab-sg-7 = ["22", "22", "tcp", "192.168.105.0/24", "SSH from 105 vlan and Jumpbox", "ingress"],
    postgresql-5lab-sg-8 = ["22", "22", "tcp", "192.168.110.0/24", "SSH from VPN", "ingress"],
    postgresql-5lab-sg-9 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "sftp2-sg" = {
    sftp2-sg-1  = ["-1", "-1", "-1", "192.168.141.0/24", "PHX SFTP VPN", "ingress"],
    sftp2-sg-2  = ["-1", "-1", "-1", "192.168.140.0/24", "PHX SFTP VPN", "ingress"],
    sftp2-sg-3  = ["22", "22", "tcp", "0.0.0.0/0", "SSH for All", "ingress"],
    sftp2-sg-4  = ["2222", "2222", "tcp", "173.215.116.201/32", "west_des_moines", "ingress"],
    sftp2-sg-5  = ["2222", "2222", "tcp", "173.215.116.128/25", "west_des_moines2", "ingress"],
    sftp2-sg-6  = ["2222", "2222", "tcp", "66.43.237.99/32", "wes_des_moines3", "ingress"],
    sftp2-sg-7  = ["2222", "2222", "tcp", "216.21.47.224/28", "il_bradley_bourbonnais_chsd_307", "ingress"],
    sftp2-sg-8  = ["2222", "2222", "tcp", "152.157.4.82/32", "wa_orting", "ingress"],
    sftp2-sg-9  = ["2222", "2222", "tcp", "107.0.86.14/32", "il_new_lenox_122", "ingress"],
    sftp2-sg-10 = ["2222", "2222", "tcp", "71.13.151.210/32", "wi_columbus_sd", "ingress"],
    sftp2-sg-11 = ["2222", "2222", "tcp", "65.51.126.85/32", "ny_warwick_valley_csd", "ingress"],
    sftp2-sg-12 = ["2222", "2222", "tcp", "172.16.250.60/32", "ok_duncan", "ingress"],
    sftp2-sg-13 = ["2222", "2222", "tcp", "50.233.22.243/32", "lockport", "ingress"],
    sftp2-sg-14 = ["2222", "2222", "tcp", "170.158.94.254/32", "ny_central_square", "ingress"],
    sftp2-sg-15 = ["2222", "2222", "tcp", "76.73.191.172/32", "il_palos_ccsd_118", "ingress"],
    sftp2-sg-16 = ["2222", "2222", "tcp", "50.203.170.118/32", "il_barrington_cusd_220", "ingress"],
    sftp2-sg-17 = ["2222", "2222", "tcp", "216.162.28.40/32", "ny_onc_cooperstown", "ingress"],
    sftp2-sg-18 = ["2222", "2222", "tcp", "50.232.250.232/32", "il_argo_chsd_217", "ingress"],
    sftp2-sg-19 = ["2222", "2222", "tcp", "207.225.137.0/24", "wi_kimberly_area_sd", "ingress"],
    sftp2-sg-20 = ["2222", "2222", "tcp", "65.124.140.0/24", "wi_kimberly_area_sd", "ingress"],
    sftp2-sg-21 = ["2222", "2222", "tcp", "198.73.96.0/24", "wi_kimberly_area_sd", "ingress"],
    sftp2-sg-22 = ["2222", "2222", "tcp", "216.226.196.0/22", "wi_kimberly_area_sd", "ingress"],
    sftp2-sg-23 = ["2222", "2222", "tcp", "216.100.89.0/24", "ca_placentia_yorba_linda", "ingress"],
    sftp2-sg-24 = ["2222", "2222", "tcp", "64.17.27.135/32", "co_durango_9r", "ingress"],
    sftp2-sg-25 = ["2222", "2222", "tcp", "192.149.88.16/32", "il_batavia_usd_101", "ingress"],
    sftp2-sg-26 = ["2222", "2222", "tcp", "74.87.165.185/32", "ks_spring_hill", "ingress"],
    sftp2-sg-27 = ["2222", "2222", "tcp", "148.59.44.0/26", "wi_janesville_sd", "ingress"],
    sftp2-sg-28 = ["2222", "2222", "tcp", "10.21.244.19/32", "oh_wayne_county_jvsd", "ingress"],
    sftp2-sg-29 = ["2222", "2222", "tcp", "168.169.146.224/32", "ny_grand_island_csd", "ingress"],
    sftp2-sg-30 = ["2222", "2222", "tcp", "216.213.232.0/24", "tx_everman_isd", "ingress"],
    sftp2-sg-31 = ["2222", "2222", "tcp", "12.234.117.130/32", "il_dupage_88", "ingress"],
    sftp2-sg-32 = ["2222", "2222", "tcp", "50.224.27.0/24", "il_lincoln_way_chsd_210", "ingress"],
    sftp2-sg-33 = ["2222", "2222", "tcp", "170.158.38.2/32", "ny_mexico_csd", "ingress"],
    sftp2-sg-34 = ["2222", "2222", "tcp", "170.158.38.59/32", "ny_mexico_csd", "ingress"],
    sftp2-sg-35 = ["2222", "2222", "tcp", "204.108.200.232/32", "pa_great_valley_sd", "ingress"],
    sftp2-sg-36 = ["2222", "2222", "tcp", "64.124.175.173/32", "tx_eagle_mt_saginaw", "ingress"],
    sftp2-sg-37 = ["2222", "2222", "tcp", "12.148.188.17/32", "il_aurora_west_129", "ingress"],
    sftp2-sg-38 = ["2222", "2222", "tcp", "108.163.66.82/32", "tx_wylie_isd", "ingress"],
    sftp2-sg-39 = ["2222", "2222", "tcp", "209.68.64.158/32", "ny_east_bloomfield_csd", "ingress"],
    sftp2-sg-40 = ["2222", "2222", "tcp", "0.0.0.0/0", "From Anywhere", "ingress"],
    sftp2-sg-41 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "sec-sg" = {
    sec-sg-1 = ["-1", "-1", "-1", "192.168.110.0/24", "Dell Sonicwall VPN", "ingress"],
    sec-sg-2 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 servers", "ingress"],
    sec-sg-3 = ["-1", "-1", "-1", "192.168.111.0/24", "v:111 dba", "ingress"],
    sec-sg-4 = ["-1", "-1", "-1", "10.0.4.0/24", "Custom Rule", "ingress"],
    sec-sg-5 = ["0", "0", "tcp", "10.0.7.0/24", "Custom Rule", "ingress"],
    sec-sg-6 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "jenkins-sg" = {
    jenkins-sg-1  = ["0", "65535", "tcp", "10.0.7.251/32", "SQL-Prod", "ingress"],
    jenkins-sg-2  = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    jenkins-sg-3  = ["-1", "-1", "-1", "192.168.110.0/24", "VPN", "ingress"],
    jenkins-sg-4  = ["22", "22", "tcp", "192.168.111.0/24", "v:111 dba-staff", "ingress"],
    jenkins-sg-5  = ["22", "22", "tcp", "140.82.112.0/24", "github.com", "ingress"],
    jenkins-sg-6  = ["22", "22", "tcp", "140.82.113.0/24", "github.com", "ingress"],
    jenkins-sg-7  = ["22", "22", "tcp", "140.82.114.0/24", "github.com", "ingress"],
    jenkins-sg-8  = ["8082", "8082", "tcp", "192.168.111.0/24", "artifactory-access", "ingress"],
    jenkins-sg-9  = ["8085", "8085", "tcp", "192.168.111.0/24", "v:111 dba-staff", "ingress"],
    jenkins-sg-10 = ["3690", "3690", "tcp", "192.168.111.0/24", "v:111 dba-staff", "ingress"],
    jenkins-sg-11 = ["3690", "3690", "tcp", "192.168.160.0/24", "PHX VPN", "ingress"],
    jenkins-sg-12 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "f5-ml-sg" = {
    f5-ml-sg-1 = ["-1", "-1", "-1", "192.168.110.0/24", "VPN", "ingress"],
    f5-ml-sg-2 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    f5-ml-sg-3 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "rds-lambda-sg" = {
    rds-lambda-sg-1 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "tableau-sg" = {
    tableau-sg-1 = ["-1", "-1", "-1", "192.168.110.0/24", "VPN", "ingress"],
    tableau-sg-2 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    tableau-sg-2 = ["-1", "-1", "-1", "192.168.111.0/24", "v:111 dba-staff", "ingress"],
    tableau-sg-3 = ["9000", "9500", "tcp", "10.0.1.0/24", "Custom Rule", "ingress"],
    tableau-sg-4 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "www-sg" = {
    www-sg-1 = ["80", "80", "tcp", "0.0.0.0/0", "www", "ingress"],
    www-sg-2 = ["443", "443", "tcp", "0.0.0.0/0", "www", "ingress"],
    www-sg-3 = ["-1", "-1", "-1", "192.168.110.0/24", "VPN", "ingress"],
    www-sg-4 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    www-sg-5 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "haproxy-sg" = {
    haproxy-sg-1 = ["-1", "-1", "-1", "192.168.110.0/24", "VPN", "ingress"],
    haproxy-sg-2 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    haproxy-sg-3 = ["-1", "-1", "-1", "192.168.111.0/24", "Data Group", "ingress"],
    haproxy-sg-4 = ["9000", "9500", "tcp", "0.0.0.0/0", "Custom Rule", "ingress"],
    haproxy-sg-5 = ["443", "443", "tcp", "0.0.0.0/0", "www", "ingress"],
    haproxy-sg-6 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "f5-all-sg" = {
    f5-all-sg-1 = ["-1", "-1", "-1", "50.194.126.209/32", "All traffic", "ingress"],
    f5-all-sg-2 = ["-1", "-1", "-1", "162.17.3.193/32", "All traffic", "ingress"],
    f5-all-sg-3 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "workspaces-sg" = {
    workspaces-sg-1 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "default-10-vpc-sg" = {
    default-10-vpc-sg-1 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "lambda-sg" = {
    lambda-sg-1 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "sftp-sg" = {
    sftp-sg-1  = ["-1", "-1", "-1", "192.168.110.0/24", "VPN", "ingress"],
    sftp-sg-2  = ["-1", "-1", "-1", "192.168.160.0/24", "phx_vpn_do_not_delete", "ingress"],
    sftp-sg-3  = ["22", "22", "tcp", "192.168.105.20/32", "f5-jump", "ingress"],
    sftp-sg-4  = ["22", "22", "tcp", "192.168.105.35/32", "f5-winjump", "ingress"],
    sftp-sg-5  = ["2222", "2222", "tcp", "50.203.189.114/32", "f5a_sftp", "ingress"],
    sftp-sg-6  = ["2222", "2222", "tcp", "69.85.239.230/32", "hoopeston", "ingress"],
    sftp-sg-7  = ["2222", "2222", "tcp", "69.85.239.233/32", "lemont210", "ingress"],
    sftp-sg-8  = ["2222", "2222", "tcp", "50.205.48.22/32", "il_chsd_155", "ingress"],
    sftp-sg-9  = ["2222", "2222", "tcp", "169.204.158.100/32", "wa_woodland_school_district_9397", "ingress"],
    sftp-sg-10 = ["2222", "2222", "tcp", "169.204.158.101/32", "wa_woodland_school_district_9397", "ingress"],
    sftp-sg-11 = ["2222", "2222", "tcp", "169.204.158.102/32", "wa_woodland_school_district_9397", "ingress"],
    sftp-sg-12 = ["2222", "2222", "tcp", "169.204.158.103/32", "wa_woodland_school_district_9397", "ingress"],
    sftp-sg-13 = ["2222", "2222", "tcp", "131.156.137.67/32", "temp_test_il_sycamore_cusd_427", "ingress"],
    sftp-sg-14 = ["2222", "2222", "tcp", "216.176.156.43/32", "in_duneland_sd", "ingress"],
    sftp-sg-15 = ["2222", "2222", "tcp", "192.107.136.56/32", "tx_austin_isd", "ingress"],
    sftp-sg-16 = ["2222", "2222", "tcp", "66.195.143.1/32", "il_skyward_iscorp_hosted-1", "ingress"],
    sftp-sg-17 = ["2222", "2222", "tcp", "209.68.64.22/32", "ny_oakfield-alabama", "ingress"],
    sftp-sg-18 = ["2222", "2222", "tcp", "54.172.22.200/32", "centercass66", "ingress"],
    sftp-sg-19 = ["2222", "2222", "tcp", "134.114.5.96/32", "az_buckeye_elementary", "ingress"],
    sftp-sg-20 = ["2222", "2222", "tcp", "173.244.138.168/32", "ia_newton", "ingress"],
    sftp-sg-21 = ["2222", "2222", "tcp", "50.204.46.197/32", "il_grayslake_chsd_127", "ingress"],
    sftp-sg-22 = ["2222", "2222", "tcp", "107.1.119.252/30", "oswego-1", "ingress"],
    sftp-sg-23 = ["2222", "2222", "tcp", "50.206.18.64/27", "oswego-3", "ingress"],
    sftp-sg-24 = ["2222", "2222", "tcp", "50.201.194.0/24", "oswego-2", "ingress"],
    sftp-sg-25 = ["2222", "2222", "tcp", "68.14.232.11/32", "phx_site_do_not_delete", "ingress"],
    sftp-sg-26 = ["2222", "2222", "tcp", "168.169.223.78/32", "ny_kenmore_tonawanda_ufsd", "ingress"],
    sftp-sg-27 = ["2222", "2222", "tcp", "198.73.100.18/32", "il_sycamore_cusd_427_-5", "ingress"],
    sftp-sg-28 = ["2222", "2222", "tcp", "66.195.143.42/32", "il_skyward_iscorp_hosted-2", "ingress"],
    sftp-sg-29 = ["2222", "2222", "tcp", "207.165.194.2/32", "ia_waukee", "ingress"],
    sftp-sg-30 = ["2222", "2222", "tcp", "65.51.107.208/32", "nj_bound_brook_sd", "ingress"],
    sftp-sg-31 = ["2222", "2222", "tcp", "216.56.30.235/32", "wi_florence_sd", "ingress"],
    sftp-sg-32 = ["2222", "2222", "tcp", "204.145.111.2/32", "il_glenbard_hsd_87", "ingress"],
    sftp-sg-33 = ["2222", "2222", "tcp", "50.207.249.202/32", "nj_berkeley_heights_sd", "ingress"],
    sftp-sg-34 = ["2222", "2222", "tcp", "20.185.215.190/32", "il_manhattan_sd_114", "ingress"],
    sftp-sg-35 = ["2222", "2222", "tcp", "170.158.129.56/29", "ny_central_square_csd", "ingress"],
    sftp-sg-36 = ["2222", "2222", "tcp", "216.56.145.7/32", "wi_cambria_friesland", "ingress"],
    sftp-sg-37 = ["2222", "2222", "tcp", "144.202.174.0/26", "pa_plum_borough", "ingress"],
    sftp-sg-38 = ["2222", "2222", "tcp", "207.63.186.17/32", "il_plainfield_sd_202", "ingress"],
    sftp-sg-39 = ["2222", "2222", "tcp", "69.36.33.101/32", "deland_weldon", "ingress"],
    sftp-sg-40 = ["2222", "2222", "tcp", "199.96.252.64/26", "pa_plum_borough", "ingress"],
    sftp-sg-41 = ["2222", "2222", "tcp", "64.58.253.194/32", "pa_plum_borough", "ingress"],
    sftp-sg-42 = ["2222", "2222", "tcp", "192.168.110.3/32", "taka", "ingress"],
    sftp-sg-43 = ["2222", "2222", "tcp", "72.210.42.154/32", "joe_o.", "ingress"],
    sftp-sg-44 = ["2222", "2222", "tcp", "208.185.142.170/32", "in_westfield_washington", "ingress"],
    sftp-sg-45 = ["2222", "2222", "tcp", "66.210.253.65/32", "joe_fiber", "ingress"],
    sftp-sg-46 = ["2222", "2222", "tcp", "209.232.149.0/24", "ca_huntington_beach_union", "ingress"],
    sftp-sg-47 = ["2222", "2222", "tcp", "66.210.253.64/31", "phx_fiber_do_not_remove", "ingress"],
    sftp-sg-48 = ["2222", "2222", "tcp", "64.107.129.109/32", "il_zion_esd_6", "ingress"],
    sftp-sg-49 = ["2222", "2222", "tcp", "131.156.133.42/32", "il_dixon_usd_170", "ingress"],
    sftp-sg-50 = ["2222", "2222", "tcp", "170.158.253.134/32", "ny_central_square_sd", "ingress"],
    sftp-sg-51 = ["2222", "2222", "tcp", "107.0.17.197/32", "il_homewood_sd_153", "ingress"],
    sftp-sg-52 = ["2222", "2222", "tcp", "107.1.219.0/24", "il_indian_prarie_cusd_204", "ingress"],
    sftp-sg-53 = ["2222", "2222", "tcp", "143.195.249.0/26", "il_indian_prarie_cusd_204", "ingress"],
    sftp-sg-54 = ["2222", "2222", "tcp", "12.174.113.113/32", "mo_hillsboro_r_iii", "ingress"],
    sftp-sg-55 = ["2222", "2222", "tcp", "216.162.18.14/32", "ny_onc_charlotte_cooperstown", "ingress"],
    sftp-sg-56 = ["2222", "2222", "tcp", "216.176.237.10/32", "mo_mehlville_rix-data", "ingress"],
    sftp-sg-57 = ["2222", "2222", "tcp", "12.144.145.253/32", "mo_mehlville_rix-user", "ingress"],
    sftp-sg-58 = ["2222", "2222", "tcp", "50.205.51.100/32", "il_orland_cusd", "ingress"],
    sftp-sg-59 = ["10050", "10050", "tcp", "192.168.105.18/32", "zabbix", "ingress"],
    sftp-sg-60 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "deny-all-sg" = {}
  "transfer-sg" = {
    transfer-sg-1 = ["-1", "-1", "-1", "192.168.110.0/24", "VPN", "ingress"],
    transfer-sg-2 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    transfer-sg-3 = ["50000", "50999", "tcp", "0.0.0.0/0", "VSFTPD", "ingress"],
    transfer-sg-4 = ["21", "21", "tcp", "162.17.3.193/32", "F5A", "ingress"],
    transfer-sg-5 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "sql-sg" = {
    sql-sg-1  = ["1433", "1433", "tcp", "192.168.111.0/24", "v:111 dba-staff", "ingress"],
    sql-sg-2  = ["1433", "1433", "tcp", "10.0.7.95/32", "dremio-test", "ingress"],
    sql-sg-3  = ["1433", "1433", "tcp", "10.0.7.0/24", "dremio-test", "ingress"],
    sql-sg-4  = ["0", "65535", "tcp", "10.0.8.124/32", "jenkins", "ingress"],
    sql-sg-5  = ["-1", "-1", "-1", "192.168.110.0/24", "VPN", "ingress"],
    sql-sg-6  = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    sql-sg-7  = ["-1", "-1", "-1", "10.0.1.0/24", "HAproxy", "ingress"],
    sql-sg-8  = ["-1", "-1", "-1", "10.0.7.0/24", "Custom rule", "ingress"],
    sql-sg-9  = ["22", "22", "tcp", "192.168.111.0/24", "v:111 dba-staff", "ingress"],
    sql-sg-10 = ["7080", "7080", "tcp", "192.168.111.0/24", "v:111 dba-staff", "ingress"],
    sql-sg-11 = ["1401", "1410", "tcp", "192.168.105.0/24", "sql container test 105", "ingress"],
    sql-sg-12 = ["1401", "1410", "tcp", "192.168.111.0/24", "sql container test 111", "ingress"],
    sql-sg-13 = ["0", "-1", "icmp", "10.0.4.0/24", "ICMP", "ingress"],
    sql-sg-14 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "app-sg" = {
    app-sg-1 = ["0", "-1", "icmp", "10.0.4.0/24", "ICMP", "ingress"],
    app-sg-2 = ["-1", "-1", "-1", "192.168.110.0/24", "VPN", "ingress"],
    app-sg-3 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    app-sg-4 = ["-1", "-1", "-1", "192.168.140.0/24", "PHX TEXT", "ingress"],
    app-sg-5 = ["22", "22", "tcp", "192.168.30.0/24", "PJK VPN", "ingress"],
    app-sg-6 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "nfs-sg" = {
    nfs-sg-1 = ["-1", "-1", "-1", "192.168.110.0/24", "VPN", "ingress"],
    nfs-sg-2 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    nfs-sg-3 = ["-1", "-1", "-1", "192.168.111.0/24", "v:111 dba-staff", "ingress"],
    nfs-sg-4 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "redirect-sg" = {
    redirect-sg-1 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    redirect-sg-2 = ["-1", "-1", "-1", "192.168.111.0/24", "v:111 dba-staff", "ingress"],
  }
  "f5-dremio-sg" = {
    f5-dremio-sg-1 = ["9047", "9047", "tcp", "10.0.7.0/24", "Custom Dremio", "ingress"],
    f5-dremio-sg-2 = ["9047", "9047", "tcp", "192.168.110.0/24", "Custom Dremio", "ingress"],
    f5-dremio-sg-3 = ["9047", "9047", "tcp", "192.168.105.0/24", "Custom Dremio", "ingress"],
    f5-dremio-sg-4 = ["9047", "9047", "tcp", "192.168.111.0/24", "Custom Dremio", "ingress"],
    f5-dremio-sg-5 = ["22", "22", "tcp", "192.168.105.0/24", "SSH into Dremio", "ingress"],
    f5-dremio-sg-6 = ["22", "22", "tcp", "192.168.110.0/24", "SSH into Dremio", "ingress"],
    f5-dremio-sg-7 = ["22", "22", "tcp", "192.168.111.0/24", "SSH into Dremio", "ingress"],
    f5-dremio-sg-8 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
  "nat-sg" = {
    nat-sg-1 = ["-1", "-1", "-1", "192.168.110.0/24", "VPN", "ingress"],
    nat-sg-2 = ["-1", "-1", "-1", "192.168.105.0/24", "F5 Servers", "ingress"],
    nat-sg-3 = ["-1", "-1", "-1", "0.0.0.0/0", "All traffic", "egress"]
  }
}
