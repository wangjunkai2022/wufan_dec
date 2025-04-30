package com.tencent.cos.utils;

import android.util.Log;
import net.lingala.zip4j.util.e;
/* loaded from: classes4.dex */
public class Record {
    private String level;
    private String msg;
    private String tag;
    private String threadName;
    private Throwable throwable;
    private long timestamp = System.currentTimeMillis();
    private long threadId = Thread.currentThread().getId();

    public Record(String str, String str2, String str3, Throwable th) {
        this.tag = null;
        this.msg = null;
        this.throwable = null;
        this.level = null;
        this.threadName = null;
        this.level = str2;
        this.tag = str;
        this.msg = str3;
        this.throwable = th;
        this.threadName = Thread.currentThread().getName();
    }

    public long getLength() {
        String str = this.msg;
        return (str != null ? str.length() : 0) + 40;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.level);
        sb.append(e.F0);
        sb.append(TimesUtils.timeUtils(this.timestamp, "yyyy-MM-dd HH:mm:ss"));
        sb.append("[");
        sb.append(this.threadName + " " + this.threadId);
        sb.append("]");
        sb.append("[");
        sb.append(this.tag);
        sb.append("]");
        sb.append("[");
        sb.append(this.msg);
        sb.append("]");
        if (this.throwable != null) {
            sb.append(" * Exception :\n");
            sb.append(Log.getStackTraceString(this.throwable));
        }
        sb.append("\n");
        return sb.toString();
    }
}
