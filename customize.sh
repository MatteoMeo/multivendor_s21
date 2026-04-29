rm -rf /vendor/tee
rm -rf /vendor/firmware
rm -rf /vendor/overlay
mkdir -p /vendor/tee
SET_METADATA vendor/tee 0 2000 755 "u:object_r:tee_file:s0"
mkdir -p /vendor/firmware
SET_METADATA vendor/firmware 0 2000 755 "u:object_r:vendor_firmware_file:s0"
mkdir -p /vendor/overlay
SET_METADATA vendor/overlay 0 2000 755 "u:object_r:vendor_overlay_file:s0"

echo "(allow init_30_0 tee_file (dir (mounton)))" >> "/vendor/etc/selinux/vendor_sepolicy.cil"
echo "(allow priv_app_30_0 tee_file (dir (getattr)))" >> "/vendor/etc/selinux/vendor_sepolicy.cil"
echo "(allow init_30_0 vendor_firmware_file (dir (mounton)))" >> "/vendor/etc/selinux/vendor_sepolicy.cil"
echo "(allow priv_app_30_0 vendor_firmware_file (dir (getattr)))" >> "/vendor/etc/selinux/vendor_sepolicy.cil"
echo "(allow init_30_0 vendor_overlay_file (dir (mounton)))" >> "/vendor/etc/selinux/vendor_sepolicy.cil"
echo "(allow priv_app_30_0 vendor_overlay_file (dir (getattr)))" >> "/vendor/etc/selinux/vendor_sepolicy.cil"

SET_PROP "vendor" "ro.vendor.multivendor.supported_bootloaders" "$(cat "$(dirname ${BASH_SOURCE[0]})/supported_bootloaders" | tr '\n' ',' | sed 's/,$//')"
SET_PROP "vendor" "ro.vendor.multivendor.version" "$(cat "$(dirname ${BASH_SOURCE[0]})/module.prop" | grep 'version=' | sed 's/version=//')"
