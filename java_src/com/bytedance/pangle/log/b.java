package com.bytedance.pangle.log;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private String f10270a;

    /* renamed from: b  reason: collision with root package name */
    private String f10271b;

    /* renamed from: c  reason: collision with root package name */
    private String f10272c;

    /* renamed from: d  reason: collision with root package name */
    private long f10273d;

    /* renamed from: e  reason: collision with root package name */
    private long f10274e;

    private b(String str, String str2, String str3) {
        this.f10270a = str;
        this.f10271b = str2;
        this.f10272c = str3;
        long currentTimeMillis = System.currentTimeMillis();
        this.f10274e = currentTimeMillis;
        this.f10273d = currentTimeMillis;
        String str4 = this.f10270a;
        ZeusLogger.i(str4, this.f10271b + String.format(" watcher[%s]-start", str3));
    }

    public static b a(String str, String str2, String str3) {
        return new b(str, str2, str3);
    }

    public final long b(String str) {
        long currentTimeMillis = System.currentTimeMillis() - this.f10274e;
        long currentTimeMillis2 = System.currentTimeMillis() - this.f10273d;
        String str2 = this.f10270a;
        ZeusLogger.i(str2, this.f10271b + String.format(" watcher[%s]-%s cost=%s, total=%s", this.f10272c, str, Long.valueOf(currentTimeMillis), Long.valueOf(currentTimeMillis2)));
        return currentTimeMillis2;
    }

    public final long a(String str) {
        long currentTimeMillis = System.currentTimeMillis() - this.f10274e;
        String str2 = this.f10270a;
        ZeusLogger.i(str2, this.f10271b + String.format(" watcher[%s]-%s cost=%s", this.f10272c, str, Long.valueOf(currentTimeMillis)));
        this.f10274e = System.currentTimeMillis();
        return currentTimeMillis;
    }

    public final long a() {
        return System.currentTimeMillis() - this.f10273d;
    }
}
