package com.tencent.cos.task;
/* loaded from: classes4.dex */
public enum TaskType {
    UNKNOW(-1, "unknowTask"),
    CMD_TASK(0, "cmdTask"),
    DOWNLOAD_TASK(1, "downloadTask"),
    UPLOAD_TASK(2, "uploadTask");
    
    private int code;
    private String desc;

    TaskType(int i2, String str) {
        this.code = i2;
        this.desc = str;
    }

    public int getCode() {
        return this.code;
    }

    public String getDesc() {
        return this.desc;
    }
}
