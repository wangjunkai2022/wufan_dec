package com.tencent.stat;
/* loaded from: classes4.dex */
public class StatAppMonitor implements Cloneable {
    public static final int FAILURE_RESULT_TYPE = 1;
    public static final int LOGIC_FAILURE_RESULT_TYPE = 2;
    public static final int SUCCESS_RESULT_TYPE = 0;

    /* renamed from: a  reason: collision with root package name */
    private String f59929a;

    /* renamed from: b  reason: collision with root package name */
    private long f59930b;

    /* renamed from: c  reason: collision with root package name */
    private long f59931c;

    /* renamed from: d  reason: collision with root package name */
    private int f59932d;

    /* renamed from: e  reason: collision with root package name */
    private long f59933e;

    /* renamed from: f  reason: collision with root package name */
    private int f59934f;

    /* renamed from: g  reason: collision with root package name */
    private int f59935g;

    public StatAppMonitor(String str) {
        this.f59929a = null;
        this.f59930b = 0L;
        this.f59931c = 0L;
        this.f59932d = 0;
        this.f59933e = 0L;
        this.f59934f = 0;
        this.f59935g = 1;
        this.f59929a = str;
    }

    public StatAppMonitor(String str, int i2, int i4, long j4, long j5, long j6, int i5) {
        this.f59929a = null;
        this.f59930b = 0L;
        this.f59931c = 0L;
        this.f59932d = 0;
        this.f59933e = 0L;
        this.f59934f = 0;
        this.f59935g = 1;
        this.f59929a = str;
        this.f59930b = j4;
        this.f59931c = j5;
        this.f59932d = i2;
        this.f59933e = j6;
        this.f59934f = i4;
        this.f59935g = i5;
    }

    /* renamed from: clone */
    public StatAppMonitor m15clone() {
        try {
            return (StatAppMonitor) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public String getInterfaceName() {
        return this.f59929a;
    }

    public long getMillisecondsConsume() {
        return this.f59933e;
    }

    public long getReqSize() {
        return this.f59930b;
    }

    public long getRespSize() {
        return this.f59931c;
    }

    public int getResultType() {
        return this.f59932d;
    }

    public int getReturnCode() {
        return this.f59934f;
    }

    public int getSampling() {
        return this.f59935g;
    }

    public void setInterfaceName(String str) {
        this.f59929a = str;
    }

    public void setMillisecondsConsume(long j4) {
        this.f59933e = j4;
    }

    public void setReqSize(long j4) {
        this.f59930b = j4;
    }

    public void setRespSize(long j4) {
        this.f59931c = j4;
    }

    public void setResultType(int i2) {
        this.f59932d = i2;
    }

    public void setReturnCode(int i2) {
        this.f59934f = i2;
    }

    public void setSampling(int i2) {
        if (i2 <= 0) {
            i2 = 1;
        }
        this.f59935g = i2;
    }
}
