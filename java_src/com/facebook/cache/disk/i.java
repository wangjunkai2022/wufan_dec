package com.facebook.cache.disk;

import com.facebook.cache.disk.c;
import com.facebook.common.internal.VisibleForTesting;
/* compiled from: ScoreBasedEvictionComparatorSupplier.java */
/* loaded from: classes2.dex */
public class i implements g {

    /* renamed from: a  reason: collision with root package name */
    private final float f11649a;

    /* renamed from: b  reason: collision with root package name */
    private final float f11650b;

    /* compiled from: ScoreBasedEvictionComparatorSupplier.java */
    /* loaded from: classes2.dex */
    class a implements f {

        /* renamed from: a  reason: collision with root package name */
        long f11651a = System.currentTimeMillis();

        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(c.InterfaceC0059c interfaceC0059c, c.InterfaceC0059c interfaceC0059c2) {
            float a4 = i.this.a(interfaceC0059c, this.f11651a);
            float a5 = i.this.a(interfaceC0059c2, this.f11651a);
            if (a4 < a5) {
                return 1;
            }
            return a5 == a4 ? 0 : -1;
        }
    }

    public i(float f4, float f5) {
        this.f11649a = f4;
        this.f11650b = f5;
    }

    @VisibleForTesting
    float a(c.InterfaceC0059c interfaceC0059c, long j4) {
        return (this.f11649a * ((float) (j4 - interfaceC0059c.getTimestamp()))) + (this.f11650b * ((float) interfaceC0059c.getSize()));
    }

    @Override // com.facebook.cache.disk.g
    public f get() {
        return new a();
    }
}
