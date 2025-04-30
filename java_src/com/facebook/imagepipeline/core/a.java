package com.facebook.imagepipeline.core;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* compiled from: DefaultExecutorSupplier.java */
/* loaded from: classes2.dex */
public class a implements e {

    /* renamed from: e  reason: collision with root package name */
    private static final int f12574e = 2;

    /* renamed from: f  reason: collision with root package name */
    private static final int f12575f = 1;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f12577b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f12578c;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f12576a = Executors.newFixedThreadPool(2, new j(10, "FrescoIoBoundExecutor", true));

    /* renamed from: d  reason: collision with root package name */
    private final Executor f12579d = Executors.newFixedThreadPool(1, new j(10, "FrescoLightWeightBackgroundExecutor", true));

    public a(int i2) {
        this.f12577b = Executors.newFixedThreadPool(i2, new j(10, "FrescoDecodeExecutor", true));
        this.f12578c = Executors.newFixedThreadPool(i2, new j(10, "FrescoBackgroundExecutor", true));
    }

    @Override // com.facebook.imagepipeline.core.e
    public Executor a() {
        return this.f12579d;
    }

    @Override // com.facebook.imagepipeline.core.e
    public Executor b() {
        return this.f12576a;
    }

    @Override // com.facebook.imagepipeline.core.e
    public Executor c() {
        return this.f12577b;
    }

    @Override // com.facebook.imagepipeline.core.e
    public Executor d() {
        return this.f12578c;
    }

    @Override // com.facebook.imagepipeline.core.e
    public Executor e() {
        return this.f12576a;
    }
}
