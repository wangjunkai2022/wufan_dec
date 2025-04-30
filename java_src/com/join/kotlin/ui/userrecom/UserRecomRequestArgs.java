package com.join.kotlin.ui.userrecom;

import java.util.List;
/* loaded from: classes3.dex */
public class UserRecomRequestArgs {
    List<String> downloadedGameIdList;
    long duration;
    int uid;

    public List<String> getDownloadedGameIdList() {
        return this.downloadedGameIdList;
    }

    public long getDuration() {
        return this.duration;
    }

    public int getUid() {
        return this.uid;
    }

    public void setDownloadedGameIdList(List<String> list) {
        this.downloadedGameIdList = list;
    }

    public void setDuration(long j4) {
        this.duration = j4;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
