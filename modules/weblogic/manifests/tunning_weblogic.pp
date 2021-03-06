#==#
#OK#
#==#
class weblogic::tunning_weblogic{
  notify { 'msg-tunning-weblogic':
    message => "====>\tEfetuando tunning do Weblogic",
  }
  #/opt/Oracle/java
  file { "${lookup('weblogic::env_java_home')}/jre/lib/security":
    ensure => present,
  }-> file_line { 'replace':
        path                                  => "${lookup('weblogic::env_java_home')}/jre/lib/security",
        line                                  => 'alterar',
        match                                 => 'alterar',
        multiple                              => true,
        replace_all_matches_not_matching_line => true,
        append_on_no_match                    => false,
      }

  if lookup('weblogic::jdk_version') =~ /(.*)1.8.(\d)/ {
    file { "${lookup('weblogic::env_domains')}/bin/setDomainEnv.sh":
      ensure  => present,
      content => 'MEM_ARGS="-Djava.security.egd=file:/dev/./urandom"; export MEM_ARGS',
    }
  }
}
