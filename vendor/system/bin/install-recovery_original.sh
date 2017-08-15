#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done		#tony
if ! applypatch -c EMMC:recovery:8734720:d8cd73d21a6504ab742f6363f1c1af044c58afcf; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:boot:7890944:be1ac3ff86890320437a07bb31e50f95ad2a1d0b EMMC:recovery d8cd73d21a6504ab742f6363f1c1af044c58afcf 8734720 be1ac3ff86890320437a07bb31e50f95ad2a1d0b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
  if applypatch -c EMMC:recovery:8734720:d8cd73d21a6504ab742f6363f1c1af044c58afcf; then		#tony
	echo 0 > /sys/module/sec/parameters/recovery_done		#tony
        log -t recovery "Install new recovery image completed"
        
  if applysig /system/etc/recovery.sig recovery; then
    sync
    log -t recovery "Apply recovery image signature completed"
  else
    log -t recovery "Apply recovery image signature fail!!"
  fi

    
  else
	echo 2 > /sys/module/sec/parameters/recovery_done		#tony
        log -t recovery "Install new recovery image not completed"
  fi
else
  echo 0 > /sys/module/sec/parameters/recovery_done              #tony
  log -t recovery "Recovery image already installed"
fi
