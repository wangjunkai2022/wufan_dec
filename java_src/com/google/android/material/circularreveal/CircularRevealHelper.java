package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import com.google.android.material.circularreveal.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public class CircularRevealHelper {

    /* renamed from: k  reason: collision with root package name */
    private static final boolean f14463k = false;

    /* renamed from: l  reason: collision with root package name */
    public static final int f14464l = 0;

    /* renamed from: m  reason: collision with root package name */
    public static final int f14465m = 1;

    /* renamed from: n  reason: collision with root package name */
    public static final int f14466n = 2;

    /* renamed from: o  reason: collision with root package name */
    public static final int f14467o;

    /* renamed from: a  reason: collision with root package name */
    private final a f14468a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final View f14469b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final Path f14470c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final Paint f14471d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final Paint f14472e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private b.e f14473f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Drawable f14474g;

    /* renamed from: h  reason: collision with root package name */
    private Paint f14475h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f14476i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f14477j;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Strategy {
    }

    /* loaded from: classes2.dex */
    public interface a {
        void c(Canvas canvas);

        boolean d();
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            f14467o = 2;
        } else if (i2 >= 18) {
            f14467o = 1;
        } else {
            f14467o = 0;
        }
    }

    public CircularRevealHelper(a aVar) {
        this.f14468a = aVar;
        View view = (View) aVar;
        this.f14469b = view;
        view.setWillNotDraw(false);
        this.f14470c = new Path();
        this.f14471d = new Paint(7);
        Paint paint = new Paint(1);
        this.f14472e = paint;
        paint.setColor(0);
    }

    private void d(@NonNull Canvas canvas, int i2, float f4) {
        this.f14475h.setColor(i2);
        this.f14475h.setStrokeWidth(f4);
        b.e eVar = this.f14473f;
        canvas.drawCircle(eVar.f14486a, eVar.f14487b, eVar.f14488c - (f4 / 2.0f), this.f14475h);
    }

    private void e(@NonNull Canvas canvas) {
        this.f14468a.c(canvas);
        if (r()) {
            b.e eVar = this.f14473f;
            canvas.drawCircle(eVar.f14486a, eVar.f14487b, eVar.f14488c, this.f14472e);
        }
        if (p()) {
            d(canvas, -16777216, 10.0f);
            d(canvas, SupportMenu.CATEGORY_MASK, 5.0f);
        }
        f(canvas);
    }

    private void f(@NonNull Canvas canvas) {
        if (q()) {
            Rect bounds = this.f14474g.getBounds();
            float width = this.f14473f.f14486a - (bounds.width() / 2.0f);
            float height = this.f14473f.f14487b - (bounds.height() / 2.0f);
            canvas.translate(width, height);
            this.f14474g.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    private float i(@NonNull b.e eVar) {
        return c1.a.b(eVar.f14486a, eVar.f14487b, 0.0f, 0.0f, this.f14469b.getWidth(), this.f14469b.getHeight());
    }

    private void k() {
        if (f14467o == 1) {
            this.f14470c.rewind();
            b.e eVar = this.f14473f;
            if (eVar != null) {
                this.f14470c.addCircle(eVar.f14486a, eVar.f14487b, eVar.f14488c, Path.Direction.CW);
            }
        }
        this.f14469b.invalidate();
    }

    private boolean p() {
        b.e eVar = this.f14473f;
        boolean z3 = eVar == null || eVar.a();
        return f14467o == 0 ? !z3 && this.f14477j : !z3;
    }

    private boolean q() {
        return (this.f14476i || this.f14474g == null || this.f14473f == null) ? false : true;
    }

    private boolean r() {
        return (this.f14476i || Color.alpha(this.f14472e.getColor()) == 0) ? false : true;
    }

    public void a() {
        if (f14467o == 0) {
            this.f14476i = true;
            this.f14477j = false;
            this.f14469b.buildDrawingCache();
            Bitmap drawingCache = this.f14469b.getDrawingCache();
            if (drawingCache == null && this.f14469b.getWidth() != 0 && this.f14469b.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.f14469b.getWidth(), this.f14469b.getHeight(), Bitmap.Config.ARGB_8888);
                this.f14469b.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.f14471d;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.f14476i = false;
            this.f14477j = true;
        }
    }

    public void b() {
        if (f14467o == 0) {
            this.f14477j = false;
            this.f14469b.destroyDrawingCache();
            this.f14471d.setShader(null);
            this.f14469b.invalidate();
        }
    }

    public void c(@NonNull Canvas canvas) {
        if (p()) {
            int i2 = f14467o;
            if (i2 == 0) {
                b.e eVar = this.f14473f;
                canvas.drawCircle(eVar.f14486a, eVar.f14487b, eVar.f14488c, this.f14471d);
                if (r()) {
                    b.e eVar2 = this.f14473f;
                    canvas.drawCircle(eVar2.f14486a, eVar2.f14487b, eVar2.f14488c, this.f14472e);
                }
            } else if (i2 == 1) {
                int save = canvas.save();
                canvas.clipPath(this.f14470c);
                this.f14468a.c(canvas);
                if (r()) {
                    canvas.drawRect(0.0f, 0.0f, this.f14469b.getWidth(), this.f14469b.getHeight(), this.f14472e);
                }
                canvas.restoreToCount(save);
            } else if (i2 == 2) {
                this.f14468a.c(canvas);
                if (r()) {
                    canvas.drawRect(0.0f, 0.0f, this.f14469b.getWidth(), this.f14469b.getHeight(), this.f14472e);
                }
            } else {
                throw new IllegalStateException("Unsupported strategy " + i2);
            }
        } else {
            this.f14468a.c(canvas);
            if (r()) {
                canvas.drawRect(0.0f, 0.0f, this.f14469b.getWidth(), this.f14469b.getHeight(), this.f14472e);
            }
        }
        f(canvas);
    }

    @Nullable
    public Drawable g() {
        return this.f14474g;
    }

    @ColorInt
    public int h() {
        return this.f14472e.getColor();
    }

    @Nullable
    public b.e j() {
        b.e eVar = this.f14473f;
        if (eVar == null) {
            return null;
        }
        b.e eVar2 = new b.e(eVar);
        if (eVar2.a()) {
            eVar2.f14488c = i(eVar2);
        }
        return eVar2;
    }

    public boolean l() {
        return this.f14468a.d() && !p();
    }

    public void m(@Nullable Drawable drawable) {
        this.f14474g = drawable;
        this.f14469b.invalidate();
    }

    public void n(@ColorInt int i2) {
        this.f14472e.setColor(i2);
        this.f14469b.invalidate();
    }

    public void o(@Nullable b.e eVar) {
        if (eVar == null) {
            this.f14473f = null;
        } else {
            b.e eVar2 = this.f14473f;
            if (eVar2 == null) {
                this.f14473f = new b.e(eVar);
            } else {
                eVar2.c(eVar);
            }
            if (c1.a.e(eVar.f14488c, i(eVar), 1.0E-4f)) {
                this.f14473f.f14488c = Float.MAX_VALUE;
            }
        }
        k();
    }
}
