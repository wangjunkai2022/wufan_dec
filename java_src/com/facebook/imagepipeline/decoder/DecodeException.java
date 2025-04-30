package com.facebook.imagepipeline.decoder;
/* loaded from: classes2.dex */
public class DecodeException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.image.e f12726a;

    public DecodeException(String str, com.facebook.imagepipeline.image.e eVar) {
        super(str);
        this.f12726a = eVar;
    }

    public com.facebook.imagepipeline.image.e a() {
        return this.f12726a;
    }

    public DecodeException(String str, Throwable th, com.facebook.imagepipeline.image.e eVar) {
        super(str, th);
        this.f12726a = eVar;
    }
}
