package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ImageViewCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class AppCompatImageHelper {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ImageView f997a;

    /* renamed from: b  reason: collision with root package name */
    private TintInfo f998b;

    /* renamed from: c  reason: collision with root package name */
    private TintInfo f999c;

    /* renamed from: d  reason: collision with root package name */
    private TintInfo f1000d;

    /* renamed from: e  reason: collision with root package name */
    private int f1001e = 0;

    public AppCompatImageHelper(@NonNull ImageView imageView) {
        this.f997a = imageView;
    }

    private boolean a(@NonNull Drawable drawable) {
        if (this.f1000d == null) {
            this.f1000d = new TintInfo();
        }
        TintInfo tintInfo = this.f1000d;
        tintInfo.a();
        ColorStateList imageTintList = ImageViewCompat.getImageTintList(this.f997a);
        if (imageTintList != null) {
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = imageTintList;
        }
        PorterDuff.Mode imageTintMode = ImageViewCompat.getImageTintMode(this.f997a);
        if (imageTintMode != null) {
            tintInfo.mHasTintMode = true;
            tintInfo.mTintMode = imageTintMode;
        }
        if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
            AppCompatDrawableManager.e(drawable, tintInfo, this.f997a.getDrawableState());
            return true;
        }
        return false;
    }

    private boolean k() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 > 21 ? this.f998b != null : i2 == 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.f997a.getDrawable() != null) {
            this.f997a.getDrawable().setLevel(this.f1001e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        Drawable drawable = this.f997a.getDrawable();
        if (drawable != null) {
            DrawableUtils.a(drawable);
        }
        if (drawable != null) {
            if (k() && a(drawable)) {
                return;
            }
            TintInfo tintInfo = this.f999c;
            if (tintInfo != null) {
                AppCompatDrawableManager.e(drawable, tintInfo, this.f997a.getDrawableState());
                return;
            }
            TintInfo tintInfo2 = this.f998b;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.e(drawable, tintInfo2, this.f997a.getDrawableState());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList d() {
        TintInfo tintInfo = this.f999c;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode e() {
        TintInfo tintInfo = this.f999c;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return Build.VERSION.SDK_INT < 21 || !(this.f997a.getBackground() instanceof RippleDrawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(@NonNull Drawable drawable) {
        this.f1001e = drawable.getLevel();
    }

    void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f998b == null) {
                this.f998b = new TintInfo();
            }
            TintInfo tintInfo = this.f998b;
            tintInfo.mTintList = colorStateList;
            tintInfo.mHasTintList = true;
        } else {
            this.f998b = null;
        }
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(ColorStateList colorStateList) {
        if (this.f999c == null) {
            this.f999c = new TintInfo();
        }
        TintInfo tintInfo = this.f999c;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = true;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(PorterDuff.Mode mode) {
        if (this.f999c == null) {
            this.f999c = new TintInfo();
        }
        TintInfo tintInfo = this.f999c;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = true;
        c();
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i2) {
        int resourceId;
        Context context = this.f997a.getContext();
        int[] iArr = R.styleable.AppCompatImageView;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i2, 0);
        ImageView imageView = this.f997a;
        ViewCompat.saveAttributeDataForStyleable(imageView, imageView.getContext(), iArr, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        try {
            Drawable drawable = this.f997a.getDrawable();
            if (drawable == null && (resourceId = obtainStyledAttributes.getResourceId(R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = AppCompatResources.getDrawable(this.f997a.getContext(), resourceId)) != null) {
                this.f997a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                DrawableUtils.a(drawable);
            }
            int i4 = R.styleable.AppCompatImageView_tint;
            if (obtainStyledAttributes.hasValue(i4)) {
                ImageViewCompat.setImageTintList(this.f997a, obtainStyledAttributes.getColorStateList(i4));
            }
            int i5 = R.styleable.AppCompatImageView_tintMode;
            if (obtainStyledAttributes.hasValue(i5)) {
                ImageViewCompat.setImageTintMode(this.f997a, DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(i5, -1), null));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void setImageResource(int i2) {
        if (i2 != 0) {
            Drawable drawable = AppCompatResources.getDrawable(this.f997a.getContext(), i2);
            if (drawable != null) {
                DrawableUtils.a(drawable);
            }
            this.f997a.setImageDrawable(drawable);
        } else {
            this.f997a.setImageDrawable(null);
        }
        c();
    }
}
