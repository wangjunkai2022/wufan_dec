package com.facebook.fresco.animation.frame;

import com.facebook.common.internal.VisibleForTesting;
import com.facebook.fresco.animation.backend.d;
/* compiled from: DropFramesFrameScheduler.java */
/* loaded from: classes2.dex */
public class a implements b {

    /* renamed from: e  reason: collision with root package name */
    private static final int f12350e = -1;

    /* renamed from: c  reason: collision with root package name */
    private final d f12351c;

    /* renamed from: d  reason: collision with root package name */
    private long f12352d = -1;

    public a(d dVar) {
        this.f12351c = dVar;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public long a(int i2) {
        long j4 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            j4 += this.f12351c.j(i2);
        }
        return j4;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public long b(long j4) {
        long e4 = e();
        long j5 = 0;
        if (e4 == 0) {
            return -1L;
        }
        if (d() || j4 / e() < this.f12351c.d()) {
            long j6 = j4 % e4;
            int b4 = this.f12351c.b();
            for (int i2 = 0; i2 < b4 && j5 <= j6; i2++) {
                j5 += this.f12351c.j(i2);
            }
            return j4 + (j5 - j6);
        }
        return -1L;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public int c(long j4, long j5) {
        if (d() || j4 / e() < this.f12351c.d()) {
            return f(j4 % e());
        }
        return -1;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public boolean d() {
        return this.f12351c.d() == 0;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public long e() {
        long j4 = this.f12352d;
        if (j4 != -1) {
            return j4;
        }
        this.f12352d = 0L;
        int b4 = this.f12351c.b();
        for (int i2 = 0; i2 < b4; i2++) {
            this.f12352d += this.f12351c.j(i2);
        }
        return this.f12352d;
    }

    @VisibleForTesting
    int f(long j4) {
        int i2 = 0;
        long j5 = 0;
        do {
            j5 += this.f12351c.j(i2);
            i2++;
        } while (j4 >= j5);
        return i2 - 1;
    }
}
