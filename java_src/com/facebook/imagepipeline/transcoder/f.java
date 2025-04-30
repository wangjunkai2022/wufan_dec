package com.facebook.imagepipeline.transcoder;

import javax.annotation.Nullable;
/* compiled from: MultiImageTranscoderFactory.java */
/* loaded from: classes.dex */
public class f implements d {

    /* renamed from: a  reason: collision with root package name */
    private final int f13352a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f13353b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final d f13354c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final Integer f13355d;

    public f(int i2, boolean z3, @Nullable d dVar, @Nullable Integer num) {
        this.f13352a = i2;
        this.f13353b = z3;
        this.f13354c = dVar;
        this.f13355d = num;
    }

    @Nullable
    private c a(com.facebook.imageformat.c cVar, boolean z3) {
        d dVar = this.f13354c;
        if (dVar == null) {
            return null;
        }
        return dVar.createImageTranscoder(cVar, z3);
    }

    @Nullable
    private c b(com.facebook.imageformat.c cVar, boolean z3) {
        Integer num = this.f13355d;
        if (num == null) {
            return null;
        }
        int intValue = num.intValue();
        if (intValue != 0) {
            if (intValue == 1) {
                return d(cVar, z3);
            }
            throw new IllegalArgumentException("Invalid ImageTranscoderType");
        }
        return c(cVar, z3);
    }

    @Nullable
    private c c(com.facebook.imageformat.c cVar, boolean z3) {
        return com.facebook.imagepipeline.nativecode.c.a(this.f13352a, this.f13353b).createImageTranscoder(cVar, z3);
    }

    private c d(com.facebook.imageformat.c cVar, boolean z3) {
        return new h(this.f13352a).createImageTranscoder(cVar, z3);
    }

    @Override // com.facebook.imagepipeline.transcoder.d
    public c createImageTranscoder(com.facebook.imageformat.c cVar, boolean z3) {
        c a4 = a(cVar, z3);
        if (a4 == null) {
            a4 = b(cVar, z3);
        }
        if (a4 == null) {
            a4 = c(cVar, z3);
        }
        return a4 == null ? d(cVar, z3) : a4;
    }
}
