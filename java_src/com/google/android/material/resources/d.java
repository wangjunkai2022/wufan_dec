package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.material.R;
/* compiled from: TextAppearance.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class d {

    /* renamed from: r  reason: collision with root package name */
    private static final String f15486r = "TextAppearance";

    /* renamed from: s  reason: collision with root package name */
    private static final int f15487s = 1;

    /* renamed from: t  reason: collision with root package name */
    private static final int f15488t = 2;

    /* renamed from: u  reason: collision with root package name */
    private static final int f15489u = 3;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final ColorStateList f15490a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final ColorStateList f15491b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final ColorStateList f15492c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f15493d;

    /* renamed from: e  reason: collision with root package name */
    public final int f15494e;

    /* renamed from: f  reason: collision with root package name */
    public final int f15495f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f15496g;

    /* renamed from: h  reason: collision with root package name */
    public final float f15497h;

    /* renamed from: i  reason: collision with root package name */
    public final float f15498i;

    /* renamed from: j  reason: collision with root package name */
    public final float f15499j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f15500k;

    /* renamed from: l  reason: collision with root package name */
    public final float f15501l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private ColorStateList f15502m;

    /* renamed from: n  reason: collision with root package name */
    private float f15503n;
    @FontRes

    /* renamed from: o  reason: collision with root package name */
    private final int f15504o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f15505p = false;

    /* renamed from: q  reason: collision with root package name */
    private Typeface f15506q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TextAppearance.java */
    /* loaded from: classes2.dex */
    public class a extends ResourcesCompat.FontCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f15507a;

        a(f fVar) {
            this.f15507a = fVar;
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrievalFailed(int i2) {
            d.this.f15505p = true;
            this.f15507a.a(i2);
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrieved(@NonNull Typeface typeface) {
            d dVar = d.this;
            dVar.f15506q = Typeface.create(typeface, dVar.f15494e);
            d.this.f15505p = true;
            this.f15507a.b(d.this.f15506q, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TextAppearance.java */
    /* loaded from: classes2.dex */
    public class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f15509a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TextPaint f15510b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ f f15511c;

        b(Context context, TextPaint textPaint, f fVar) {
            this.f15509a = context;
            this.f15510b = textPaint;
            this.f15511c = fVar;
        }

        @Override // com.google.android.material.resources.f
        public void a(int i2) {
            this.f15511c.a(i2);
        }

        @Override // com.google.android.material.resources.f
        public void b(@NonNull Typeface typeface, boolean z3) {
            d.this.p(this.f15509a, this.f15510b, typeface);
            this.f15511c.b(typeface, z3);
        }
    }

    public d(@NonNull Context context, @StyleRes int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, R.styleable.TextAppearance);
        l(obtainStyledAttributes.getDimension(R.styleable.TextAppearance_android_textSize, 0.0f));
        k(c.a(context, obtainStyledAttributes, R.styleable.TextAppearance_android_textColor));
        this.f15490a = c.a(context, obtainStyledAttributes, R.styleable.TextAppearance_android_textColorHint);
        this.f15491b = c.a(context, obtainStyledAttributes, R.styleable.TextAppearance_android_textColorLink);
        this.f15494e = obtainStyledAttributes.getInt(R.styleable.TextAppearance_android_textStyle, 0);
        this.f15495f = obtainStyledAttributes.getInt(R.styleable.TextAppearance_android_typeface, 1);
        int f4 = c.f(obtainStyledAttributes, R.styleable.TextAppearance_fontFamily, R.styleable.TextAppearance_android_fontFamily);
        this.f15504o = obtainStyledAttributes.getResourceId(f4, 0);
        this.f15493d = obtainStyledAttributes.getString(f4);
        this.f15496g = obtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
        this.f15492c = c.a(context, obtainStyledAttributes, R.styleable.TextAppearance_android_shadowColor);
        this.f15497h = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f15498i = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f15499j = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 21) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i2, R.styleable.MaterialTextAppearance);
            int i4 = R.styleable.MaterialTextAppearance_android_letterSpacing;
            this.f15500k = obtainStyledAttributes2.hasValue(i4);
            this.f15501l = obtainStyledAttributes2.getFloat(i4, 0.0f);
            obtainStyledAttributes2.recycle();
            return;
        }
        this.f15500k = false;
        this.f15501l = 0.0f;
    }

    private void d() {
        String str;
        if (this.f15506q == null && (str = this.f15493d) != null) {
            this.f15506q = Typeface.create(str, this.f15494e);
        }
        if (this.f15506q == null) {
            int i2 = this.f15495f;
            if (i2 == 1) {
                this.f15506q = Typeface.SANS_SERIF;
            } else if (i2 == 2) {
                this.f15506q = Typeface.SERIF;
            } else if (i2 != 3) {
                this.f15506q = Typeface.DEFAULT;
            } else {
                this.f15506q = Typeface.MONOSPACE;
            }
            this.f15506q = Typeface.create(this.f15506q, this.f15494e);
        }
    }

    private boolean m(Context context) {
        if (e.b()) {
            return true;
        }
        int i2 = this.f15504o;
        return (i2 != 0 ? ResourcesCompat.getCachedFont(context, i2) : null) != null;
    }

    public Typeface e() {
        d();
        return this.f15506q;
    }

    @NonNull
    @VisibleForTesting
    public Typeface f(@NonNull Context context) {
        if (this.f15505p) {
            return this.f15506q;
        }
        if (!context.isRestricted()) {
            try {
                Typeface font = ResourcesCompat.getFont(context, this.f15504o);
                this.f15506q = font;
                if (font != null) {
                    this.f15506q = Typeface.create(font, this.f15494e);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception unused2) {
                StringBuilder sb = new StringBuilder();
                sb.append("Error loading font ");
                sb.append(this.f15493d);
            }
        }
        d();
        this.f15505p = true;
        return this.f15506q;
    }

    public void g(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull f fVar) {
        p(context, textPaint, e());
        h(context, new b(context, textPaint, fVar));
    }

    public void h(@NonNull Context context, @NonNull f fVar) {
        if (m(context)) {
            f(context);
        } else {
            d();
        }
        int i2 = this.f15504o;
        if (i2 == 0) {
            this.f15505p = true;
        }
        if (this.f15505p) {
            fVar.b(this.f15506q, true);
            return;
        }
        try {
            ResourcesCompat.getFont(context, i2, new a(fVar), null);
        } catch (Resources.NotFoundException unused) {
            this.f15505p = true;
            fVar.a(1);
        } catch (Exception unused2) {
            StringBuilder sb = new StringBuilder();
            sb.append("Error loading font ");
            sb.append(this.f15493d);
            this.f15505p = true;
            fVar.a(-3);
        }
    }

    @Nullable
    public ColorStateList i() {
        return this.f15502m;
    }

    public float j() {
        return this.f15503n;
    }

    public void k(@Nullable ColorStateList colorStateList) {
        this.f15502m = colorStateList;
    }

    public void l(float f4) {
        this.f15503n = f4;
    }

    public void n(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull f fVar) {
        o(context, textPaint, fVar);
        ColorStateList colorStateList = this.f15502m;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f4 = this.f15499j;
        float f5 = this.f15497h;
        float f6 = this.f15498i;
        ColorStateList colorStateList2 = this.f15492c;
        textPaint.setShadowLayer(f4, f5, f6, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void o(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull f fVar) {
        if (m(context)) {
            p(context, textPaint, f(context));
        } else {
            g(context, textPaint, fVar);
        }
    }

    public void p(@NonNull Context context, @NonNull TextPaint textPaint, @NonNull Typeface typeface) {
        Typeface a4 = g.a(context, typeface);
        if (a4 != null) {
            typeface = a4;
        }
        textPaint.setTypeface(typeface);
        int style = this.f15494e & (typeface.getStyle() ^ (-1));
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f15503n);
        if (Build.VERSION.SDK_INT < 21 || !this.f15500k) {
            return;
        }
        textPaint.setLetterSpacing(this.f15501l);
    }
}
