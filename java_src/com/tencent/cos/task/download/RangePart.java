package com.tencent.cos.task.download;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class RangePart implements Serializable {
    private static final long serialVersionUID = 6878277820689901616L;
    protected String downloadUrl;
    protected String fileName;
    protected long length;
    protected String localPath;
    protected long range;

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public String getFileName() {
        return this.fileName;
    }

    public long getLength() {
        return this.length;
    }

    public String getLocalPath() {
        return this.localPath;
    }

    public long getRange() {
        return this.range;
    }
}
