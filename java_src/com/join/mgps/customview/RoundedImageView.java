package com.join.mgps.customview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class RoundedImageView extends ImageView {

    /* renamed from: l  reason: collision with root package name */
    private static final int f45970l = -2;

    /* renamed from: m  reason: collision with root package name */
    private static final int f45971m = 0;

    /* renamed from: n  reason: collision with root package name */
    private static final int f45972n = 1;

    /* renamed from: o  reason: collision with root package name */
    private static final int f45973o = 2;

    /* renamed from: p  reason: collision with root package name */
    public static final String f45974p = "RoundedImageView";

    /* renamed from: q  reason: collision with root package name */
    public static final float f45975q = 6.0f;

    /* renamed from: r  reason: collision with root package name */
    public static final float f45976r = 0.0f;

    /* renamed from: s  reason: collision with root package name */
    public static final Shader.TileMode f45977s = Shader.TileMode.CLAMP;

    /* renamed from: t  reason: collision with root package name */
    private static final ImageView.ScaleType[] f45978t = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* renamed from: u  reason: collision with root package name */
    static final /* synthetic */ boolean f45979u = false;

    /* renamed from: a  reason: collision with root package name */
    private float f45980a;

    /* renamed from: b  reason: collision with root package name */
    private float f45981b;

    /* renamed from: c  reason: collision with root package name */
    private ColorStateList f45982c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f45983d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f45984e;

    /* renamed from: f  reason: collision with root package name */
    private Shader.TileMode f45985f;

    /* renamed from: g  reason: collision with root package name */
    private Shader.TileMode f45986g;

    /* renamed from: h  reason: collision with root package name */
    private int f45987h;

    /* renamed from: i  reason: collision with root package name */
    private Drawable f45988i;

    /* renamed from: j  reason: collision with root package name */
    private Drawable f45989j;

    /* renamed from: k  reason: collision with root package name */
    private ImageView.ScaleType f45990k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45991a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f45991a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45991a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45991a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f45991a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f45991a[ImageView.ScaleType.FIT_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f45991a[ImageView.ScaleType.FIT_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f45991a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public RoundedImageView(Context context) {
        super(context);
        this.f45980a = 6.0f;
        this.f45981b = 0.0f;
        this.f45982c = ColorStateList.valueOf(-16777216);
        this.f45983d = false;
        this.f45984e = false;
        Shader.TileMode tileMode = f45977s;
        this.f45985f = tileMode;
        this.f45986g = tileMode;
    }

    private static Shader.TileMode d(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return null;
                }
                return Shader.TileMode.MIRROR;
            }
            return Shader.TileMode.REPEAT;
        }
        return Shader.TileMode.CLAMP;
    }

    private Drawable e() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i2 = this.f45987h;
        if (i2 != 0) {
            try {
                drawable = resources.getDrawable(i2);
            } catch (Exception unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unable to find resource: ");
                sb.append(this.f45987h);
                this.f45987h = 0;
            }
        }
        return k0.c(drawable);
    }

    private void f(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof k0) {
            ((k0) drawable).q(this.f45990k).o(this.f45980a).n(this.f45981b).m(this.f45982c).p(this.f45983d).r(this.f45985f).s(this.f45986g);
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                f(layerDrawable.getDrawable(i2));
            }
        }
        invalidate();
    }

    private void g(boolean z3) {
        if (this.f45984e) {
            if (z3) {
                this.f45989j = k0.c(this.f45989j);
            }
            f(this.f45989j);
        }
    }

    private void h() {
        f(this.f45988i);
    }

    public boolean a() {
        return this.f45983d;
    }

    public void b(boolean z3) {
        if (this.f45984e == z3) {
            return;
        }
        this.f45984e = z3;
        g(true);
        invalidate();
    }

    public boolean c() {
        return this.f45984e;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public int getBorderColor() {
        return this.f45982c.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.f45982c;
    }

    public float getBorderWidth() {
        return this.f45981b;
    }

    public float getCornerRadius() {
        return this.f45980a;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f45990k;
    }

    public Shader.TileMode getTileModeX() {
        return this.f45985f;
    }

    public Shader.TileMode getTileModeY() {
        return this.f45986g;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.f45989j = drawable;
        g(true);
        super.setBackgroundDrawable(this.f45989j);
    }

    public void setBorderColor(int i2) {
        setBorderColor(ColorStateList.valueOf(i2));
    }

    public void setBorderWidth(int i2) {
        setBorderWidth(getResources().getDimension(i2));
    }

    public void setCornerRadius(int i2) {
        setCornerRadius(getResources().getDimension(i2));
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.f45987h = 0;
        this.f45988i = k0.b(bitmap);
        h();
        super.setImageDrawable(this.f45988i);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.f45987h = 0;
        this.f45988i = k0.c(drawable);
        h();
        super.setImageDrawable(this.f45988i);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i2) {
        if (this.f45987h != i2) {
            this.f45987h = i2;
            this.f45988i = e();
            h();
            super.setImageDrawable(this.f45988i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setOval(boolean z3) {
        this.f45983d = z3;
        h();
        g(false);
        invalidate();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (this.f45990k != scaleType) {
            this.f45990k = scaleType;
            switch (a.f45991a[scaleType.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    super.setScaleType(ImageView.ScaleType.FIT_XY);
                    break;
                default:
                    super.setScaleType(scaleType);
                    break;
            }
            h();
            g(false);
            invalidate();
        }
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.f45985f == tileMode) {
            return;
        }
        this.f45985f = tileMode;
        h();
        g(false);
        invalidate();
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.f45986g == tileMode) {
            return;
        }
        this.f45986g = tileMode;
        h();
        g(false);
        invalidate();
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (this.f45982c.equals(colorStateList)) {
            return;
        }
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(-16777216);
        }
        this.f45982c = colorStateList;
        h();
        g(false);
        if (this.f45981b > 0.0f) {
            invalidate();
        }
    }

    public void setBorderWidth(float f4) {
        if (this.f45981b == f4) {
            return;
        }
        this.f45981b = f4;
        h();
        g(false);
        invalidate();
    }

    public void setCornerRadius(float f4) {
        if (this.f45980a == f4) {
            return;
        }
        this.f45980a = f4;
        h();
        g(false);
    }

    public RoundedImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundedImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45980a = 6.0f;
        this.f45981b = 0.0f;
        this.f45982c = ColorStateList.valueOf(-16777216);
        this.f45983d = false;
        this.f45984e = false;
        Shader.TileMode tileMode = f45977s;
        this.f45985f = tileMode;
        this.f45986g = tileMode;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RoundedImageView, i2, 0);
        int i4 = obtainStyledAttributes.getInt(0, -1);
        if (i4 >= 0) {
            setScaleType(f45978t[i4]);
        } else {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        this.f45980a = obtainStyledAttributes.getDimensionPixelSize(3, -1);
        float dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        this.f45981b = dimensionPixelSize;
        if (this.f45980a < 0.0f) {
            this.f45980a = 6.0f;
        }
        if (dimensionPixelSize < 0.0f) {
            this.f45981b = 0.0f;
        }
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(1);
        this.f45982c = colorStateList;
        if (colorStateList == null) {
            this.f45982c = ColorStateList.valueOf(-16777216);
        }
        this.f45984e = obtainStyledAttributes.getBoolean(4, false);
        this.f45983d = obtainStyledAttributes.getBoolean(5, false);
        int i5 = obtainStyledAttributes.getInt(6, -2);
        if (i5 != -2) {
            setTileModeX(d(i5));
            setTileModeY(d(i5));
        }
        int i6 = obtainStyledAttributes.getInt(7, -2);
        if (i6 != -2) {
            setTileModeX(d(i6));
        }
        int i7 = obtainStyledAttributes.getInt(8, -2);
        if (i7 != -2) {
            setTileModeY(d(i7));
        }
        h();
        g(true);
        obtainStyledAttributes.recycle();
    }
}
