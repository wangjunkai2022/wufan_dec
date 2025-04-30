package com.facebook.imagepipeline.transcoder;
/* compiled from: SimpleImageTranscoderFactory.java */
/* loaded from: classes2.dex */
public class h implements d {

    /* renamed from: a  reason: collision with root package name */
    private final int f13359a;

    public h(int i2) {
        this.f13359a = i2;
    }

    @Override // com.facebook.imagepipeline.transcoder.d
    public c createImageTranscoder(com.facebook.imageformat.c cVar, boolean z3) {
        return new g(z3, this.f13359a);
    }
}
