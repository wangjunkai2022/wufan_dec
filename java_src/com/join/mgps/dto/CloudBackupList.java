package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class CloudBackupList implements Serializable {
    private List<CloudBackupInfo> backup_list;

    public List<CloudBackupInfo> getBackup_list() {
        return this.backup_list;
    }

    public void setBackup_list(List<CloudBackupInfo> list) {
        this.backup_list = list;
    }
}
