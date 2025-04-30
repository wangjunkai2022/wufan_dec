package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
/* loaded from: classes3.dex */
public class ClipZoomImageView extends ImageView implements ScaleGestureDetector.OnScaleGestureListener, View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: o  reason: collision with root package name */
    private static final String f45090o = ClipZoomImageView.class.getSimpleName();

    /* renamed from: p  reason: collision with root package name */
    public static float f45091p = 4.0f;

    /* renamed from: q  reason: collision with root package name */
    private static float f45092q = 2.0f;

    /* renamed from: a  reason: collision with root package name */
    private float f45093a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f45094b;

    /* renamed from: c  reason: collision with root package name */
    private final float[] f45095c;

    /* renamed from: d  reason: collision with root package name */
    private ScaleGestureDetector f45096d;

    /* renamed from: e  reason: collision with root package name */
    private final Matrix f45097e;

    /* renamed from: f  reason: collision with root package name */
    private GestureDetector f45098f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f45099g;

    /* renamed from: h  reason: collision with root package name */
    private int f45100h;

    /* renamed from: i  reason: collision with root package name */
    private float f45101i;

    /* renamed from: j  reason: collision with root package name */
    private float f45102j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f45103k;

    /* renamed from: l  reason: collision with root package name */
    private int f45104l;

    /* renamed from: m  reason: collision with root package name */
    private int f45105m;

    /* renamed from: n  reason: collision with root package name */
    private int f45106n;

    /* loaded from: classes3.dex */
    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (ClipZoomImageView.this.f45099g) {
                return true;
            }
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            if (ClipZoomImageView.this.getScale() < ClipZoomImageView.f45092q) {
                ClipZoomImageView clipZoomImageView = ClipZoomImageView.this;
                clipZoomImageView.postDelayed(new b(ClipZoomImageView.f45092q, x3, y3), 16L);
                ClipZoomImageView.this.f45099g = true;
            } else {
                ClipZoomImageView clipZoomImageView2 = ClipZoomImageView.this;
                clipZoomImageView2.postDelayed(new b(clipZoomImageView2.f45093a, x3, y3), 16L);
                ClipZoomImageView.this.f45099g = true;
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    private class b implements Runnable {

        /* renamed from: f  reason: collision with root package name */
        static final float f45108f = 1.07f;

        /* renamed from: g  reason: collision with root package name */
        static final float f45109g = 0.93f;

        /* renamed from: a  reason: collision with root package name */
        private float f45110a;

        /* renamed from: b  reason: collision with root package name */
        private float f45111b;

        /* renamed from: c  reason: collision with root package name */
        private float f45112c;

        /* renamed from: d  reason: collision with root package name */
        private float f45113d;

        public b(float f4, float f5, float f6) {
            this.f45110a = f4;
            this.f45112c = f5;
            this.f45113d = f6;
            if (ClipZoomImageView.this.getScale() < this.f45110a) {
                this.f45111b = f45108f;
            } else {
                this.f45111b = f45109g;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Matrix matrix = ClipZoomImageView.this.f45097e;
            float f4 = this.f45111b;
            matrix.postScale(f4, f4, this.f45112c, this.f45113d);
            ClipZoomImageView.this.g();
            ClipZoomImageView clipZoomImageView = ClipZoomImageView.this;
            clipZoomImageView.setImageMatrix(clipZoomImageView.f45097e);
            float scale = ClipZoomImageView.this.getScale();
            float f5 = this.f45111b;
            if ((f5 > 1.0f && scale < this.f45110a) || (f5 < 1.0f && this.f45110a < scale)) {
                ClipZoomImageView.this.postDelayed(this, 16L);
                return;
            }
            float f6 = this.f45110a / scale;
            ClipZoomImageView.this.f45097e.postScale(f6, f6, this.f45112c, this.f45113d);
            ClipZoomImageView.this.g();
            ClipZoomImageView clipZoomImageView2 = ClipZoomImageView.this;
            clipZoomImageView2.setImageMatrix(clipZoomImageView2.f45097e);
            ClipZoomImageView.this.f45099g = false;
        }
    }

    public ClipZoomImageView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        float f4;
        RectF matrixRectF = getMatrixRectF();
        int width = getWidth();
        int height = getHeight();
        StringBuilder sb = new StringBuilder();
        sb.append("rect.width() =  ");
        sb.append(matrixRectF.width());
        sb.append(" , width - 2 * mHorizontalPadding =");
        sb.append(width - (this.f45105m * 2));
        double width2 = matrixRectF.width();
        Double.isNaN(width2);
        int i2 = this.f45105m;
        if (width2 + 0.01d >= width - (i2 * 2)) {
            float f5 = matrixRectF.left;
            f4 = f5 > ((float) i2) ? (-f5) + i2 : 0.0f;
            float f6 = matrixRectF.right;
            if (f6 < width - i2) {
                f4 = (width - i2) - f6;
            }
        } else {
            f4 = 0.0f;
        }
        double height2 = matrixRectF.height();
        Double.isNaN(height2);
        int i4 = this.f45106n;
        if (height2 + 0.01d >= height - (i4 * 2)) {
            float f7 = matrixRectF.top;
            r10 = f7 > ((float) i4) ? (-f7) + i4 : 0.0f;
            float f8 = matrixRectF.bottom;
            if (f8 < height - i4) {
                r10 = (height - i4) - f8;
            }
        }
        this.f45097e.postTranslate(f4, r10);
    }

    private RectF getMatrixRectF() {
        Matrix matrix = this.f45097e;
        RectF rectF = new RectF();
        Drawable drawable = getDrawable();
        if (drawable != null) {
            rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(rectF);
        }
        return rectF;
    }

    private boolean i(float f4, float f5) {
        return Math.sqrt((double) ((f4 * f4) + (f5 * f5))) >= ((double) this.f45100h);
    }

    public final float getScale() {
        this.f45097e.getValues(this.f45095c);
        return this.f45095c[0];
    }

    public Bitmap h() {
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        draw(new Canvas(createBitmap));
        return Bitmap.createBitmap(createBitmap, this.f45105m, this.f45106n, getWidth() - (this.f45105m * 2), getWidth() - (this.f45105m * 2));
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        Drawable drawable;
        if (!this.f45094b || (drawable = getDrawable()) == null) {
            return;
        }
        this.f45106n = (getHeight() - (getWidth() - (this.f45105m * 2))) / 2;
        int width = getWidth();
        int height = getHeight();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        float width2 = (intrinsicWidth >= getWidth() - (this.f45105m * 2) || intrinsicHeight <= getHeight() - (this.f45106n * 2)) ? 1.0f : ((getWidth() * 1.0f) - (this.f45105m * 2)) / intrinsicWidth;
        if (intrinsicHeight < getHeight() - (this.f45106n * 2) && intrinsicWidth > getWidth() - (this.f45105m * 2)) {
            width2 = ((getHeight() * 1.0f) - (this.f45106n * 2)) / intrinsicHeight;
        }
        if (intrinsicWidth < getWidth() - (this.f45105m * 2) && intrinsicHeight < getHeight() - (this.f45106n * 2)) {
            width2 = Math.max(((getWidth() * 1.0f) - (this.f45105m * 2)) / intrinsicWidth, ((getHeight() * 1.0f) - (this.f45106n * 2)) / intrinsicHeight);
        }
        this.f45093a = width2;
        f45092q = 2.0f * width2;
        f45091p = 4.0f * width2;
        this.f45097e.postTranslate((width - intrinsicWidth) / 2, (height - intrinsicHeight) / 2);
        this.f45097e.postScale(width2, width2, getWidth() / 2, getHeight() / 2);
        setImageMatrix(this.f45097e);
        this.f45094b = false;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scale = getScale();
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        if (getDrawable() == null) {
            return true;
        }
        float f4 = f45091p;
        if ((scale < f4 && scaleFactor > 1.0f) || (scale > this.f45093a && scaleFactor < 1.0f)) {
            float f5 = this.f45093a;
            if (scaleFactor * scale < f5) {
                scaleFactor = f5 / scale;
            }
            if (scaleFactor * scale > f4) {
                scaleFactor = f4 / scale;
            }
            this.f45097e.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            g();
            setImageMatrix(this.f45097e);
        }
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0040, code lost:
        if (r10 != 3) goto L18;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r10, android.view.MotionEvent r11) {
        /*
            r9 = this;
            android.view.GestureDetector r10 = r9.f45098f
            boolean r10 = r10.onTouchEvent(r11)
            r0 = 1
            if (r10 == 0) goto La
            return r0
        La:
            android.view.ScaleGestureDetector r10 = r9.f45096d
            r10.onTouchEvent(r11)
            int r10 = r11.getPointerCount()
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
        L18:
            if (r3 >= r10) goto L27
            float r6 = r11.getX(r3)
            float r4 = r4 + r6
            float r6 = r11.getY(r3)
            float r5 = r5 + r6
            int r3 = r3 + 1
            goto L18
        L27:
            float r3 = (float) r10
            float r4 = r4 / r3
            float r5 = r5 / r3
            int r3 = r9.f45104l
            if (r10 == r3) goto L34
            r9.f45103k = r1
            r9.f45101i = r4
            r9.f45102j = r5
        L34:
            r9.f45104l = r10
            int r10 = r11.getAction()
            if (r10 == r0) goto L9c
            r11 = 2
            if (r10 == r11) goto L43
            r11 = 3
            if (r10 == r11) goto L9c
            goto L9e
        L43:
            float r10 = r9.f45101i
            float r10 = r4 - r10
            float r1 = r9.f45102j
            float r1 = r5 - r1
            boolean r3 = r9.f45103k
            if (r3 != 0) goto L55
            boolean r3 = r9.i(r10, r1)
            r9.f45103k = r3
        L55:
            boolean r3 = r9.f45103k
            if (r3 == 0) goto L97
            android.graphics.drawable.Drawable r3 = r9.getDrawable()
            if (r3 == 0) goto L97
            android.graphics.RectF r3 = r9.getMatrixRectF()
            float r6 = r3.width()
            int r7 = r9.getWidth()
            int r8 = r9.f45105m
            int r8 = r8 * 2
            int r7 = r7 - r8
            float r7 = (float) r7
            int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r6 > 0) goto L76
            r10 = 0
        L76:
            float r3 = r3.height()
            int r6 = r9.getHeight()
            int r7 = r9.f45106n
            int r7 = r7 * 2
            int r6 = r6 - r7
            float r11 = (float) r6
            int r11 = (r3 > r11 ? 1 : (r3 == r11 ? 0 : -1))
            if (r11 > 0) goto L89
            goto L8a
        L89:
            r2 = r1
        L8a:
            android.graphics.Matrix r11 = r9.f45097e
            r11.postTranslate(r10, r2)
            r9.g()
            android.graphics.Matrix r10 = r9.f45097e
            r9.setImageMatrix(r10)
        L97:
            r9.f45101i = r4
            r9.f45102j = r5
            goto L9e
        L9c:
            r9.f45104l = r1
        L9e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.customview.ClipZoomImageView.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public void setHorizontalPadding(int i2) {
        this.f45105m = i2;
    }

    public ClipZoomImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45093a = 1.0f;
        this.f45094b = true;
        this.f45095c = new float[9];
        this.f45096d = null;
        this.f45097e = new Matrix();
        setScaleType(ImageView.ScaleType.MATRIX);
        this.f45098f = new GestureDetector(context, new a());
        this.f45096d = new ScaleGestureDetector(context, this);
        setOnTouchListener(this);
    }
}
