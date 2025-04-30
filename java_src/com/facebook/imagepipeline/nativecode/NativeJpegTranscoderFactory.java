package com.facebook.imagepipeline.nativecode;

import com.facebook.common.internal.DoNotStrip;
import javax.annotation.Nullable;
@DoNotStrip
/* loaded from: classes.dex */
public class NativeJpegTranscoderFactory implements com.facebook.imagepipeline.transcoder.d {

    /* renamed from: a  reason: collision with root package name */
    private final int f12924a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f12925b;

    @DoNotStrip
    public NativeJpegTranscoderFactory(int i2, boolean z3) {
        this.f12924a = i2;
        this.f12925b = z3;
    }

    @Override // com.facebook.imagepipeline.transcoder.d
    @DoNotStrip
    @Nullable
    public com.facebook.imagepipeline.transcoder.c createImageTranscoder(com.facebook.imageformat.c cVar, boolean z3) {
        if (cVar != com.facebook.imageformat.b.f12372a) {
            return null;
        }
        return new NativeJpegTranscoder(z3, this.f12924a, this.f12925b);
    }
}
