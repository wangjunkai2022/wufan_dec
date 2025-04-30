package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class EverdayLogin implements Serializable {
    private String filePath;
    private String source;
    private int uid;
    private int version;
    private long showTime = 0;
    private long hasGetGiftTime = 0;

    public String getFilePath() {
        return this.filePath;
    }

    public long getHasGetGiftTime() {
        return this.hasGetGiftTime;
    }

    public long getShowTime() {
        return this.showTime;
    }

    public String getSource() {
        return this.source;
    }

    public int getUid() {
        return this.uid;
    }

    public int getVersion() {
        return this.version;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setHasGetGiftTime(long j4) {
        this.hasGetGiftTime = j4;
    }

    public void setShowTime(long j4) {
        this.showTime = j4;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setVersion(int i2) {
        this.version = i2;
    }
}
