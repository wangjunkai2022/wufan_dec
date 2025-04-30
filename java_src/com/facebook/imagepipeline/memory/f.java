package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.VisibleForTesting;
import java.util.LinkedList;
import java.util.Queue;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;
/* compiled from: Bucket.java */
@VisibleForTesting
@NotThreadSafe
/* loaded from: classes.dex */
class f<V> {

    /* renamed from: f  reason: collision with root package name */
    private static final String f12860f = "BUCKET";

    /* renamed from: a  reason: collision with root package name */
    public final int f12861a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12862b;

    /* renamed from: c  reason: collision with root package name */
    final Queue f12863c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f12864d;

    /* renamed from: e  reason: collision with root package name */
    private int f12865e;

    public f(int i2, int i4, int i5, boolean z3) {
        com.facebook.common.internal.h.o(i2 > 0);
        com.facebook.common.internal.h.o(i4 >= 0);
        com.facebook.common.internal.h.o(i5 >= 0);
        this.f12861a = i2;
        this.f12862b = i4;
        this.f12863c = new LinkedList();
        this.f12865e = i5;
        this.f12864d = z3;
    }

    void a(V v3) {
        this.f12863c.add(v3);
    }

    public void b() {
        com.facebook.common.internal.h.o(this.f12865e > 0);
        this.f12865e--;
    }

    @Nullable
    @Deprecated
    public V c() {
        V h4 = h();
        if (h4 != null) {
            this.f12865e++;
        }
        return h4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f12863c.size();
    }

    public int e() {
        return this.f12865e;
    }

    public void f() {
        this.f12865e++;
    }

    public boolean g() {
        return this.f12865e + d() > this.f12862b;
    }

    @Nullable
    public V h() {
        return (V) this.f12863c.poll();
    }

    public void i(V v3) {
        com.facebook.common.internal.h.i(v3);
        if (this.f12864d) {
            com.facebook.common.internal.h.o(this.f12865e > 0);
            this.f12865e--;
            a(v3);
            return;
        }
        int i2 = this.f12865e;
        if (i2 > 0) {
            this.f12865e = i2 - 1;
            a(v3);
            return;
        }
        com.facebook.common.logging.a.w(f12860f, "Tried to release value %s from an empty bucket!", v3);
    }
}
