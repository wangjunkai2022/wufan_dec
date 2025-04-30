package com.facebook.fresco.animation.drawable;

import com.facebook.fresco.animation.drawable.a;
/* compiled from: AnimatedDrawable2DebugDrawListener.java */
/* loaded from: classes2.dex */
public class b implements a.b {

    /* renamed from: e  reason: collision with root package name */
    private static final Class<?> f12315e = b.class;

    /* renamed from: a  reason: collision with root package name */
    private int f12316a = -1;

    /* renamed from: b  reason: collision with root package name */
    private int f12317b;

    /* renamed from: c  reason: collision with root package name */
    private int f12318c;

    /* renamed from: d  reason: collision with root package name */
    private int f12319d;

    @Override // com.facebook.fresco.animation.drawable.a.b
    public void a(a aVar, com.facebook.fresco.animation.frame.b bVar, int i2, boolean z3, boolean z4, long j4, long j5, long j6, long j7, long j8, long j9, long j10) {
        if (aVar.c() == null) {
            return;
        }
        int b4 = aVar.c().b();
        long j11 = j5 - j6;
        this.f12319d++;
        int i4 = this.f12316a;
        int i5 = (i4 + 1) % b4;
        if (i5 != i2) {
            if (i4 == i2) {
                this.f12318c++;
            } else {
                int i6 = (i2 - i5) % b4;
                if (i6 < 0) {
                    i6 += b4;
                }
                this.f12317b += i6;
            }
        }
        this.f12316a = i2;
        com.facebook.common.logging.a.g(f12315e, "draw: frame: %2d, drawn: %b, delay: %3d ms, rendering: %3d ms, prev: %3d ms ago, duplicates: %3d, skipped: %3d, draw calls: %4d, anim time: %6d ms, next start: %6d ms, next scheduled: %6d ms", Integer.valueOf(i2), Boolean.valueOf(z3), Long.valueOf((j5 % bVar.e()) - bVar.a(i2)), Long.valueOf(j8 - j7), Long.valueOf(j11), Integer.valueOf(this.f12318c), Integer.valueOf(this.f12317b), Integer.valueOf(this.f12319d), Long.valueOf(j5), Long.valueOf(j9), Long.valueOf(j10));
    }
}
