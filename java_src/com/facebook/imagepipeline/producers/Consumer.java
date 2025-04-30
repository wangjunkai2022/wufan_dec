package com.facebook.imagepipeline.producers;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public interface Consumer<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final int f12957a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f12958b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f12959c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f12960d = 4;

    /* renamed from: e  reason: collision with root package name */
    public static final int f12961e = 8;

    /* renamed from: f  reason: collision with root package name */
    public static final int f12962f = 16;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Status {
    }

    void a();

    void b(T t3, int i2);

    void c(float f4);

    void onFailure(Throwable th);
}
