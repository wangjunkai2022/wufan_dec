package com.facebook.imagepipeline.animated.impl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
/* loaded from: classes2.dex */
public class AnimatedImageCompositor {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.base.a f12426a;

    /* renamed from: b  reason: collision with root package name */
    private final b f12427b;

    /* renamed from: c  reason: collision with root package name */
    private final Paint f12428c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum FrameNeededResult {
        REQUIRED,
        NOT_REQUIRED,
        SKIP,
        ABORT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12429a;

        static {
            int[] iArr = new int[FrameNeededResult.values().length];
            f12429a = iArr;
            try {
                iArr[FrameNeededResult.REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12429a[FrameNeededResult.NOT_REQUIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12429a[FrameNeededResult.ABORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12429a[FrameNeededResult.SKIP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(int i2, Bitmap bitmap);

        com.facebook.common.references.a<Bitmap> b(int i2);
    }

    public AnimatedImageCompositor(com.facebook.imagepipeline.animated.base.a aVar, b bVar) {
        this.f12426a = aVar;
        this.f12427b = bVar;
        Paint paint = new Paint();
        this.f12428c = paint;
        paint.setColor(0);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
    }

    private void a(Canvas canvas, AnimatedDrawableFrameInfo animatedDrawableFrameInfo) {
        int i2 = animatedDrawableFrameInfo.f12392b;
        int i4 = animatedDrawableFrameInfo.f12393c;
        canvas.drawRect(i2, i4, i2 + animatedDrawableFrameInfo.f12394d, i4 + animatedDrawableFrameInfo.f12395e, this.f12428c);
    }

    private FrameNeededResult b(int i2) {
        AnimatedDrawableFrameInfo f4 = this.f12426a.f(i2);
        AnimatedDrawableFrameInfo.DisposalMethod disposalMethod = f4.f12397g;
        if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT) {
            return FrameNeededResult.REQUIRED;
        }
        if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
            if (c(f4)) {
                return FrameNeededResult.NOT_REQUIRED;
            }
            return FrameNeededResult.REQUIRED;
        } else if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS) {
            return FrameNeededResult.SKIP;
        } else {
            return FrameNeededResult.ABORT;
        }
    }

    private boolean c(AnimatedDrawableFrameInfo animatedDrawableFrameInfo) {
        return animatedDrawableFrameInfo.f12392b == 0 && animatedDrawableFrameInfo.f12393c == 0 && animatedDrawableFrameInfo.f12394d == this.f12426a.p() && animatedDrawableFrameInfo.f12395e == this.f12426a.o();
    }

    private boolean d(int i2) {
        if (i2 == 0) {
            return true;
        }
        AnimatedDrawableFrameInfo f4 = this.f12426a.f(i2);
        AnimatedDrawableFrameInfo f5 = this.f12426a.f(i2 - 1);
        if (f4.f12396f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND && c(f4)) {
            return true;
        }
        return f5.f12397g == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND && c(f5);
    }

    private int e(int i2, Canvas canvas) {
        while (i2 >= 0) {
            int i4 = a.f12429a[b(i2).ordinal()];
            if (i4 == 1) {
                AnimatedDrawableFrameInfo f4 = this.f12426a.f(i2);
                com.facebook.common.references.a<Bitmap> b4 = this.f12427b.b(i2);
                if (b4 != null) {
                    try {
                        canvas.drawBitmap(b4.i(), 0.0f, 0.0f, (Paint) null);
                        if (f4.f12397g == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
                            a(canvas, f4);
                        }
                        return i2 + 1;
                    } finally {
                        b4.close();
                    }
                } else if (d(i2)) {
                    return i2;
                }
            } else if (i4 == 2) {
                return i2 + 1;
            } else {
                if (i4 == 3) {
                    return i2;
                }
            }
            i2--;
        }
        return 0;
    }

    public void f(int i2, Bitmap bitmap) {
        Canvas canvas = new Canvas(bitmap);
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        for (int e4 = !d(i2) ? e(i2 - 1, canvas) : i2; e4 < i2; e4++) {
            AnimatedDrawableFrameInfo f4 = this.f12426a.f(e4);
            AnimatedDrawableFrameInfo.DisposalMethod disposalMethod = f4.f12397g;
            if (disposalMethod != AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS) {
                if (f4.f12396f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND) {
                    a(canvas, f4);
                }
                this.f12426a.g(e4, canvas);
                this.f12427b.a(e4, bitmap);
                if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
                    a(canvas, f4);
                }
            }
        }
        AnimatedDrawableFrameInfo f5 = this.f12426a.f(i2);
        if (f5.f12396f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND) {
            a(canvas, f5);
        }
        this.f12426a.g(i2, canvas);
    }
}
