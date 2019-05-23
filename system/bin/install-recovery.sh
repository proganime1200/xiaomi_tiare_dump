#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:20763908:94bb87e6551709dfbedd5ae288e90f56643efd9f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15992064:64389dc634979071369167dcc6320df0497a6e12 EMMC:/dev/block/bootdevice/by-name/recovery 94bb87e6551709dfbedd5ae288e90f56643efd9f 20763908 64389dc634979071369167dcc6320df0497a6e12:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
