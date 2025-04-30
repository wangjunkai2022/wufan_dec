package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.widget.AutoSizeableTextView;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatTextHelper {

    /* renamed from: n  reason: collision with root package name */
    private static final int f1079n = -1;

    /* renamed from: o  reason: collision with root package name */
    private static final int f1080o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final int f1081p = 2;

    /* renamed from: q  reason: collision with root package name */
    private static final int f1082q = 3;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final TextView f1083a;

    /* renamed from: b  reason: collision with root package name */
    private TintInfo f1084b;

    /* renamed from: c  reason: collision with root package name */
    private TintInfo f1085c;

    /* renamed from: d  reason: collision with root package name */
    private TintInfo f1086d;

    /* renamed from: e  reason: collision with root package name */
    private TintInfo f1087e;

    /* renamed from: f  reason: collision with root package name */
    private TintInfo f1088f;

    /* renamed from: g  reason: collision with root package name */
    private TintInfo f1089g;

    /* renamed from: h  reason: collision with root package name */
    private TintInfo f1090h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final AppCompatTextViewAutoSizeHelper f1091i;

    /* renamed from: j  reason: collision with root package name */
    private int f1092j = 0;

    /* renamed from: k  reason: collision with root package name */
    private int f1093k = -1;

    /* renamed from: l  reason: collision with root package name */
    private Typeface f1094l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f1095m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatTextHelper(@NonNull TextView textView) {
        this.f1083a = textView;
        this.f1091i = new AppCompatTextViewAutoSizeHelper(textView);
    }

    private void B(int i2, float f4) {
        this.f1091i.y(i2, f4);
    }

    private void C(Context context, TintTypedArray tintTypedArray) {
        String string;
        this.f1092j = tintTypedArray.getInt(R.styleable.TextAppearance_android_textStyle, this.f1092j);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            int i4 = tintTypedArray.getInt(R.styleable.TextAppearance_android_textFontWeight, -1);
            this.f1093k = i4;
            if (i4 != -1) {
                this.f1092j = (this.f1092j & 2) | 0;
            }
        }
        int i5 = R.styleable.TextAppearance_android_fontFamily;
        if (!tintTypedArray.hasValue(i5) && !tintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
            int i6 = R.styleable.TextAppearance_android_typeface;
            if (tintTypedArray.hasValue(i6)) {
                this.f1095m = false;
                int i7 = tintTypedArray.getInt(i6, 1);
                if (i7 == 1) {
                    this.f1094l = Typeface.SANS_SERIF;
                    return;
                } else if (i7 == 2) {
                    this.f1094l = Typeface.SERIF;
                    return;
                } else if (i7 != 3) {
                    return;
                } else {
                    this.f1094l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f1094l = null;
        int i8 = R.styleable.TextAppearance_fontFamily;
        if (tintTypedArray.hasValue(i8)) {
            i5 = i8;
        }
        final int i9 = this.f1093k;
        final int i10 = this.f1092j;
        if (!context.isRestricted()) {
            final WeakReference weakReference = new WeakReference(this.f1083a);
            try {
                Typeface font = tintTypedArray.getFont(i5, this.f1092j, new ResourcesCompat.FontCallback() { // from class: androidx.appcompat.widget.AppCompatTextHelper.1
                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    public void onFontRetrievalFailed(int i11) {
                    }

                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    public void onFontRetrieved(@NonNull Typeface typeface) {
                        int i11;
                        if (Build.VERSION.SDK_INT >= 28 && (i11 = i9) != -1) {
                            typeface = Typeface.create(typeface, i11, (i10 & 2) != 0);
                        }
                        AppCompatTextHelper.this.n(weakReference, typeface);
                    }
                });
                if (font != null) {
                    if (i2 >= 28 && this.f1093k != -1) {
                        this.f1094l = Typeface.create(Typeface.create(font, 0), this.f1093k, (this.f1092j & 2) != 0);
                    } else {
                        this.f1094l = font;
                    }
                }
                this.f1095m = this.f1094l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f1094l != null || (string = tintTypedArray.getString(i5)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 28 && this.f1093k != -1) {
            this.f1094l = Typeface.create(Typeface.create(string, 0), this.f1093k, (this.f1092j & 2) != 0);
        } else {
            this.f1094l = Typeface.create(string, this.f1092j);
        }
    }

    private void a(Drawable drawable, TintInfo tintInfo) {
        if (drawable == null || tintInfo == null) {
            return;
        }
        AppCompatDrawableManager.e(drawable, tintInfo, this.f1083a.getDrawableState());
    }

    private static TintInfo d(Context context, AppCompatDrawableManager appCompatDrawableManager, int i2) {
        ColorStateList c4 = appCompatDrawableManager.c(context, i2);
        if (c4 != null) {
            TintInfo tintInfo = new TintInfo();
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = c4;
            return tintInfo;
        }
        return null;
    }

    private void y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f1083a.getCompoundDrawablesRelative();
            TextView textView = this.f1083a;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
        } else if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
        } else {
            if (i2 >= 17) {
                Drawable[] compoundDrawablesRelative2 = this.f1083a.getCompoundDrawablesRelative();
                if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                    TextView textView2 = this.f1083a;
                    Drawable drawable7 = compoundDrawablesRelative2[0];
                    if (drawable2 == null) {
                        drawable2 = compoundDrawablesRelative2[1];
                    }
                    Drawable drawable8 = compoundDrawablesRelative2[2];
                    if (drawable4 == null) {
                        drawable4 = compoundDrawablesRelative2[3];
                    }
                    textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                    return;
                }
            }
            Drawable[] compoundDrawables = this.f1083a.getCompoundDrawables();
            TextView textView3 = this.f1083a;
            if (drawable == null) {
                drawable = compoundDrawables[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawables[1];
            }
            if (drawable3 == null) {
                drawable3 = compoundDrawables[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawables[3];
            }
            textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }
    }

    private void z() {
        TintInfo tintInfo = this.f1090h;
        this.f1084b = tintInfo;
        this.f1085c = tintInfo;
        this.f1086d = tintInfo;
        this.f1087e = tintInfo;
        this.f1088f = tintInfo;
        this.f1089g = tintInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void A(int i2, float f4) {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE || l()) {
            return;
        }
        B(i2, f4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.f1084b != null || this.f1085c != null || this.f1086d != null || this.f1087e != null) {
            Drawable[] compoundDrawables = this.f1083a.getCompoundDrawables();
            a(compoundDrawables[0], this.f1084b);
            a(compoundDrawables[1], this.f1085c);
            a(compoundDrawables[2], this.f1086d);
            a(compoundDrawables[3], this.f1087e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f1088f == null && this.f1089g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f1083a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f1088f);
            a(compoundDrawablesRelative[2], this.f1089g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void c() {
        this.f1091i.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f1091i.j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f1091i.k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.f1091i.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] h() {
        return this.f1091i.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        return this.f1091i.n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList j() {
        TintInfo tintInfo = this.f1090h;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public PorterDuff.Mode k() {
        TintInfo tintInfo = this.f1090h;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean l() {
        return this.f1091i.s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:163:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01c5 A[ADDED_TO_REGION] */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m(@androidx.annotation.Nullable android.util.AttributeSet r24, int r25) {
        /*
            Method dump skipped, instructions count: 794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatTextHelper.m(android.util.AttributeSet, int):void");
    }

    void n(WeakReference<TextView> weakReference, final Typeface typeface) {
        if (this.f1095m) {
            this.f1094l = typeface;
            final TextView textView = weakReference.get();
            if (textView != null) {
                if (ViewCompat.isAttachedToWindow(textView)) {
                    final int i2 = this.f1092j;
                    textView.post(new Runnable() { // from class: androidx.appcompat.widget.AppCompatTextHelper.2
                        @Override // java.lang.Runnable
                        public void run() {
                            textView.setTypeface(typeface, i2);
                        }
                    });
                    return;
                }
                textView.setTypeface(typeface, this.f1092j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void o(boolean z3, int i2, int i4, int i5, int i6) {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            return;
        }
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p() {
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(Context context, int i2) {
        String string;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i2, R.styleable.TextAppearance);
        int i4 = R.styleable.TextAppearance_textAllCaps;
        if (obtainStyledAttributes.hasValue(i4)) {
            s(obtainStyledAttributes.getBoolean(i4, false));
        }
        int i5 = Build.VERSION.SDK_INT;
        if (i5 < 23) {
            int i6 = R.styleable.TextAppearance_android_textColor;
            if (obtainStyledAttributes.hasValue(i6) && (colorStateList3 = obtainStyledAttributes.getColorStateList(i6)) != null) {
                this.f1083a.setTextColor(colorStateList3);
            }
            int i7 = R.styleable.TextAppearance_android_textColorLink;
            if (obtainStyledAttributes.hasValue(i7) && (colorStateList2 = obtainStyledAttributes.getColorStateList(i7)) != null) {
                this.f1083a.setLinkTextColor(colorStateList2);
            }
            int i8 = R.styleable.TextAppearance_android_textColorHint;
            if (obtainStyledAttributes.hasValue(i8) && (colorStateList = obtainStyledAttributes.getColorStateList(i8)) != null) {
                this.f1083a.setHintTextColor(colorStateList);
            }
        }
        int i9 = R.styleable.TextAppearance_android_textSize;
        if (obtainStyledAttributes.hasValue(i9) && obtainStyledAttributes.getDimensionPixelSize(i9, -1) == 0) {
            this.f1083a.setTextSize(0, 0.0f);
        }
        C(context, obtainStyledAttributes);
        if (i5 >= 26) {
            int i10 = R.styleable.TextAppearance_fontVariationSettings;
            if (obtainStyledAttributes.hasValue(i10) && (string = obtainStyledAttributes.getString(i10)) != null) {
                this.f1083a.setFontVariationSettings(string);
            }
        }
        obtainStyledAttributes.recycle();
        Typeface typeface = this.f1094l;
        if (typeface != null) {
            this.f1083a.setTypeface(typeface, this.f1092j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(@NonNull TextView textView, @Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textView.getText());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(boolean z3) {
        this.f1083a.setAllCaps(z3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(int i2, int i4, int i5, int i6) throws IllegalArgumentException {
        this.f1091i.u(i2, i4, i5, i6);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(@NonNull int[] iArr, int i2) throws IllegalArgumentException {
        this.f1091i.v(iArr, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(int i2) {
        this.f1091i.w(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(@Nullable ColorStateList colorStateList) {
        if (this.f1090h == null) {
            this.f1090h = new TintInfo();
        }
        TintInfo tintInfo = this.f1090h;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = colorStateList != null;
        z();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(@Nullable PorterDuff.Mode mode) {
        if (this.f1090h == null) {
            this.f1090h = new TintInfo();
        }
        TintInfo tintInfo = this.f1090h;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = mode != null;
        z();
    }
}
