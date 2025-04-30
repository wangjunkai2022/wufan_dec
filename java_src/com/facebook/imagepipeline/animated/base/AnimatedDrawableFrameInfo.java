package com.facebook.imagepipeline.animated.base;
/* loaded from: classes2.dex */
public class AnimatedDrawableFrameInfo {

    /* renamed from: a  reason: collision with root package name */
    public final int f12391a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12392b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12393c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12394d;

    /* renamed from: e  reason: collision with root package name */
    public final int f12395e;

    /* renamed from: f  reason: collision with root package name */
    public final BlendOperation f12396f;

    /* renamed from: g  reason: collision with root package name */
    public final DisposalMethod f12397g;

    /* loaded from: classes2.dex */
    public enum BlendOperation {
        BLEND_WITH_PREVIOUS,
        NO_BLEND
    }

    /* loaded from: classes2.dex */
    public enum DisposalMethod {
        DISPOSE_DO_NOT,
        DISPOSE_TO_BACKGROUND,
        DISPOSE_TO_PREVIOUS
    }

    public AnimatedDrawableFrameInfo(int i2, int i4, int i5, int i6, int i7, BlendOperation blendOperation, DisposalMethod disposalMethod) {
        this.f12391a = i2;
        this.f12392b = i4;
        this.f12393c = i5;
        this.f12394d = i6;
        this.f12395e = i7;
        this.f12396f = blendOperation;
        this.f12397g = disposalMethod;
    }
}
