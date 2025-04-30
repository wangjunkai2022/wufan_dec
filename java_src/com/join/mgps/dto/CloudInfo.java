package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import java.util.List;
/* loaded from: classes4.dex */
public class CloudInfo implements Comparable<CloudInfo> {
    private DownloadTask downloadTask;
    private boolean isSelect;
    private int romArchivedNum;
    private long romArchivedSize;
    private List<RomArchived> romArchiveds;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.downloadTask.getCrc_link_type_val().equals(((CloudInfo) obj).downloadTask.getCrc_link_type_val());
    }

    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    public int getRomArchivedNum() {
        return this.romArchivedNum;
    }

    public long getRomArchivedSize() {
        return this.romArchivedSize;
    }

    public List<RomArchived> getRomArchiveds() {
        return this.romArchiveds;
    }

    public int hashCode() {
        return this.downloadTask.getCrc_link_type_val().hashCode();
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public void setRomArchivedNum(int i2) {
        this.romArchivedNum = i2;
    }

    public void setRomArchivedSize(long j4) {
        this.romArchivedSize = j4;
    }

    public void setRomArchiveds(List<RomArchived> list) {
        this.romArchiveds = list;
    }

    public void setSelect(boolean z3) {
        this.isSelect = z3;
    }

    @Override // java.lang.Comparable
    public int compareTo(CloudInfo cloudInfo) {
        if (this == cloudInfo) {
            return 0;
        }
        return (cloudInfo == null || getDownloadTask().getFinishTime() <= cloudInfo.getDownloadTask().getFinishTime()) ? -1 : 1;
    }
}
