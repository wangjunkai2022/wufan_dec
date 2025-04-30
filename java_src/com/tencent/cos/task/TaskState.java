package com.tencent.cos.task;

import com.alipay.sdk.util.f;
/* loaded from: classes4.dex */
public enum TaskState {
    WAITING(0, "waitting"),
    SENDING(1, "sending"),
    FINISH(2, "finish"),
    SUCCEED(3, "succeed"),
    FAILED(4, f.f9840h),
    PAUSE(5, "pause"),
    CANCEL(6, "cancel"),
    RETRY(7, "retry"),
    DISABLE(8, "disable");
    
    private int code;
    private String desc;

    TaskState(int i2, String str) {
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
