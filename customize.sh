
#!/bin/bash

REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

REPLACE="
"

set_permissions() {
  local path="$1"
  find "$path" -type d -exec chmod 755 {} \;
  find "$path" -type f -exec chmod 644 {} \;
}

set_permissions "$MODPATH/system/vendor/etc/permissions"
set_permissions "$MODPATH/system/vendor/lib"
set_permissions "$MODPATH/system/vendor/lib/egl"
set_permissions "$MODPATH/system/vendor/lib/hw"
set_permissions "$MODPATH/system/vendor/lib64"
set_permissions "$MODPATH/system/vendor/lib64/egl"
set_permissions "$MODPATH/system/vendor/lib64/hw"