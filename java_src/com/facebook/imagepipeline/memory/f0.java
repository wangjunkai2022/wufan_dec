package com.facebook.imagepipeline.memory;
/* compiled from: PoolStatsTracker.java */
/* loaded from: classes2.dex */
public interface f0 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12866a = "buckets_used_";

    /* renamed from: b  reason: collision with root package name */
    public static final String f12867b = "used_count";

    /* renamed from: c  reason: collision with root package name */
    public static final String f12868c = "used_bytes";

    /* renamed from: d  reason: collision with root package name */
    public static final String f12869d = "free_count";

    /* renamed from: e  reason: collision with root package name */
    public static final String f12870e = "free_bytes";

    /* renamed from: f  reason: collision with root package name */
    public static final String f12871f = "soft_cap";

    /* renamed from: g  reason: collision with root package name */
    public static final String f12872g = "hard_cap";

    void a();

    void b(int i2);

    void c(int i2);

    void d(int i2);

    void e(int i2);

    void f(BasePool basePool);

    void g();
}
