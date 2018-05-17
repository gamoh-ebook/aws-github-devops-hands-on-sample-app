#!/usr/bin/env bash
 
app_src_path="/usr/src/app"
app_log_path="/var/log/app"
 
mkdir "$app_src_path" "$app_log_path"#!/usr/bin/env bash
 
app_path="/usr/src/app/bin/www"
forever_log="/var/log/app/forever.log"
app_access_log="/var/log/app/access.log"
app_error_log="/var/log/app/error.log"
 
forever start \
  -l "$forever_log" \
  -o "$app_access_log" \
  -e "$app_error_log" \
  "$app_path"