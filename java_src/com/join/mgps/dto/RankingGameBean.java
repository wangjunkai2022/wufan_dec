package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
/* loaded from: classes4.dex */
public class RankingGameBean extends CollectionBeanSub {
    private int index;
    private DownloadTask task;

    @Override // com.join.mgps.dto.CollectionBeanSub
    public int getIndex() {
        return this.index;
    }

    public DownloadTask getTask() {
        return this.task;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public void setIndex(int i2) {
        this.index = i2;
    }

    public void setTask(DownloadTask downloadTask) {
        this.task = downloadTask;
    }
}
