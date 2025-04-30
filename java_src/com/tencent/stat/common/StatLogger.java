package com.tencent.stat.common;
/* loaded from: classes4.dex */
public final class StatLogger {

    /* renamed from: a  reason: collision with root package name */
    private String f60039a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f60040b;

    /* renamed from: c  reason: collision with root package name */
    private int f60041c;

    public StatLogger() {
        this.f60039a = "default";
        this.f60040b = true;
        this.f60041c = 2;
    }

    public StatLogger(String str) {
        this.f60039a = "default";
        this.f60040b = true;
        this.f60041c = 2;
        this.f60039a = str;
    }

    private String a() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null) {
            return null;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!stackTraceElement.isNativeMethod() && !stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(StatLogger.class.getName())) {
                return "[" + Thread.currentThread().getName() + "(" + Thread.currentThread().getId() + "): " + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + "]";
            }
        }
        return null;
    }

    public void d(Object obj) {
        if (isDebugEnable()) {
            debug(obj);
        }
    }

    public void debug(Object obj) {
        if (this.f60041c <= 3) {
            String a4 = a();
            if (a4 == null) {
                obj.toString();
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(a4);
            sb.append(" - ");
            sb.append(obj);
        }
    }

    public void e(Exception exc) {
        if (isDebugEnable()) {
            error(exc);
        }
    }

    public void e(Object obj) {
        if (isDebugEnable()) {
            error(obj);
        }
    }

    public void error(Exception exc) {
        if (this.f60041c <= 6) {
            StringBuffer stringBuffer = new StringBuffer();
            String a4 = a();
            StackTraceElement[] stackTrace = exc.getStackTrace();
            stringBuffer.append(a4 != null ? a4 + " - " + exc + "\r\n" : exc + "\r\n");
            if (stackTrace == null || stackTrace.length <= 0) {
                return;
            }
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (stackTraceElement != null) {
                    stringBuffer.append("[ " + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + " ]\r\n");
                }
            }
        }
    }

    public void error(Object obj) {
        if (this.f60041c <= 6) {
            String a4 = a();
            if (a4 == null) {
                obj.toString();
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(a4);
            sb.append(" - ");
            sb.append(obj);
        }
    }

    public int getLogLevel() {
        return this.f60041c;
    }

    public void i(Object obj) {
        if (isDebugEnable()) {
            info(obj);
        }
    }

    public void info(Object obj) {
        if (this.f60041c <= 4) {
            String a4 = a();
            if (a4 == null) {
                obj.toString();
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(a4);
            sb.append(" - ");
            sb.append(obj);
        }
    }

    public boolean isDebugEnable() {
        return this.f60040b;
    }

    public void setDebugEnable(boolean z3) {
        this.f60040b = z3;
    }

    public void setLogLevel(int i2) {
        this.f60041c = i2;
    }

    public void setTag(String str) {
        this.f60039a = str;
    }

    public void v(Object obj) {
        if (isDebugEnable()) {
            verbose(obj);
        }
    }

    public void verbose(Object obj) {
        if (this.f60041c <= 2) {
            String a4 = a();
            if (a4 == null) {
                obj.toString();
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(a4);
            sb.append(" - ");
            sb.append(obj);
        }
    }

    public void w(Object obj) {
        if (isDebugEnable()) {
            warn(obj);
        }
    }

    public void warn(Object obj) {
        if (this.f60041c <= 5) {
            String a4 = a();
            if (a4 == null) {
                obj.toString();
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(a4);
            sb.append(" - ");
            sb.append(obj);
        }
    }
}
