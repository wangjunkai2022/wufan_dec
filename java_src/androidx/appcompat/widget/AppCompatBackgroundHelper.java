package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatBackgroundHelper {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f917a;

    /* renamed from: d  reason: collision with root package name */
    private TintInfo f920d;

    /* renamed from: e  reason: collision with root package name */
    private TintInfo f921e;

    /* renamed from: f  reason: collision with root package name */
    private TintInfo f922f;

    /* renamed from: c  reason: collision with root package name */
    private int f919c = -1;

    /* renamed from: b  reason: collision with root package name */
    private final AppCompatDrawableManager f918b = AppCompatDrawableManager.get();

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatBackgroundHelper(@NonNull View view) {
        this.f917a = view;
    }

    private boolean a(@NonNull Drawable drawable) {
        if (this.f922f == null) {
            this.f922f = new TintInfo();
        }
        TintInfo tintInfo = this.f922f;
        tintInfo.a();
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(this.f917a);
        if (backgroundTintList != null) {
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = backgroundTintList;
        }
        PorterDuff.Mode backgroundTintMode = ViewCompat.getBackgroundTintMode(this.f917a);
        if (backgroundTintMode != null) {
            tintInfo.mHasTintMode = true;
            tintInfo.mTintMode = backgroundTintMode;
        }
        if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
            AppCompatDrawableManager.e(drawable, tintInfo, this.f917a.getDrawableState());
            return true;
        }
        return false;
    }

    private boolean k() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 > 21 ? this.f920d != null : i2 == 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        Drawable background = this.f917a.getBackground();
        if (background != null) {
            if (k() && a(background)) {
                return;
            }
            TintInfo tintInfo = this.f921e;
            if (tintInfo != null) {
                AppCompatDrawableManager.e(background, tintInfo, this.f917a.getDrawableState());
                return;
            }
            TintInfo tintInfo2 = this.f920d;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.e(background, tintInfo2, this.f917a.getDrawableState());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList c() {
        TintInfo tintInfo = this.f921e;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode d() {
        TintInfo tintInfo = this.f921e;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@Nullable AttributeSet attributeSet, int i2) {
        Context context = this.f917a.getContext();
        int[] iArr = R.styleable.ViewBackgroundHelper;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i2, 0);
        View view = this.f917a;
        ViewCompat.saveAttributeDataForStyleable(view, view.getContext(), iArr, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        try {
            int i4 = R.styleable.ViewBackgroundHelper_android_background;
            if (obtainStyledAttributes.hasValue(i4)) {
                this.f919c = obtainStyledAttributes.getResourceId(i4, -1);
                ColorStateList c4 = this.f918b.c(this.f917a.getContext(), this.f919c);
                if (c4 != null) {
                    h(c4);
                }
            }
            int i5 = R.styleable.ViewBackgroundHelper_backgroundTint;
            if (obtainStyledAttributes.hasValue(i5)) {
                ViewCompat.setBackgroundTintList(this.f917a, obtainStyledAttributes.getColorStateList(i5));
            }
            int i6 = R.styleable.ViewBackgroundHelper_backgroundTintMode;
            if (obtainStyledAttributes.hasValue(i6)) {
                ViewCompat.setBackgroundTintMode(this.f917a, DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(i6, -1), null));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(Drawable drawable) {
        this.f919c = -1;
        h(null);
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(int i2) {
        this.f919c = i2;
        AppCompatDrawableManager appCompatDrawableManager = this.f918b;
        h(appCompatDrawableManager != null ? appCompatDrawableManager.c(this.f917a.getContext(), i2) : null);
        b();
    }

    void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f920d == null) {
                this.f920d = new TintInfo();
            }
            TintInfo tintInfo = this.f920d;
            tintInfo.mTintList = colorStateList;
            tintInfo.mHasTintList = true;
        } else {
            this.f920d = null;
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(ColorStateList colorStateList) {
        if (this.f921e == null) {
            this.f921e = new TintInfo();
        }
        TintInfo tintInfo = this.f921e;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = true;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(PorterDuff.Mode mode) {
        if (this.f921e == null) {
            this.f921e = new TintInfo();
        }
        TintInfo tintInfo = this.f921e;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = true;
        b();
    }
}
