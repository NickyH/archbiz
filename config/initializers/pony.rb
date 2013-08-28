Pony.mail({
  :to => 'nickyhughes00@gmail.com',
  :via => :sendmail,
  :via_options => {
    :location  => '/usr/sbin/sendmail', # defaults to 'which sendmail' or '/usr/sbin/sendmail' if 'which' fails
    :arguments => '-t' # -t and -i are the defaults
  }
})