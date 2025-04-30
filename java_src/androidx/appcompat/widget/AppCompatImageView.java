package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableImageSourceView;
/* loaded from: classes.dex */
public class AppCompatImageView extends ImageView implements TintableBackgroundView, TintableImageSourceView {

    /* renamed from: a  reason: collision with root package name */
    private final AppCompatBackgroundHelper f1002a;

    /* renamed from: b  reason: collision with root package name */
    private final AppCompatImageHelper f1003b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f1004c;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatImageView> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1005a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f1006b;

        /* renamed from: c  reason: collision with root package name */
        private int f1007c;

        /* renamed from: d  reason: collision with root package name */
        private int f1008d;

        /* renamed from: e  reason: collision with root package name */
        private int f1009e;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1006b = propertyMapper.mapObject("backgroundTint", R.attr.backgroundTint);
            this.f1007c = propertyMapper.mapObject("backgroundTintMode", R.attr.backgroundTintMode);
            this.f1008d = propertyMapper.mapObject("tint", R.attr.tint);
            this.f1009e = propertyMapper.mapObject("tintMode", R.attr.tintMode);
            this.f1005a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatImageView appCompatImageView, @NonNull PropertyReader propertyReader) {
            if (this.f1005a) {
                propertyReader.readObject(this.f1006b, appCompatImageView.getBackgroundTintList());
                propertyReader.readObject(this.f1007c, appCompatImageView.getBackgroundTintMode());
                propertyReader.readObject(this.f1008d, appCompatImageView.getImageTintList());
                propertyReader.readObject(this.f1009e, appCompatImageView.getImageTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    public AppCompatImageView(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1002a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.b();
        }
        AppCompatImageHelper appCompatImageHelper = this.f1003b;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.c();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1002a;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1002a;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportImageTintList() {
        AppCompatImageHelper appCompatImageHelper = this.f1003b;
        if (appCompatImageHelper != null) {
            return appCompatImageHelper.d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportImageTintMode() {
        AppCompatImageHelper appCompatImageHelper = this.f1003b;
        if (appCompatImageHelper != null) {
            return appCompatImageHelper.e();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f1003b.f() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1002a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1002a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.g(i2);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        AppCompatImageHelper appCompatImageHelper = this.f1003b;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.c();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        AppCompatImageHelper appCompatImageHelper = this.f1003b;
        if (appCompatImageHelper != null && drawable != null && !this.f1004c) {
            appCompatImageHelper.g(drawable);
        }
        super.setImageDrawable(drawable);
        AppCompatImageHelper appCompatImageHelper2 = this.f1003b;
        if (appCompatImageHelper2 != null) {
            appCompatImageHelper2.c();
            if (this.f1004c) {
                return;
            }
            this.f1003b.b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i2) {
        super.setImageLevel(i2);
        this.f1004c = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i2) {
        AppCompatImageHelper appCompatImageHelper = this.f1003b;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.setImageResource(i2);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(@Nullable Uri uri) {
        super.setImageURI(uri);
        AppCompatImageHelper appCompatImageHelper = this.f1003b;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.c();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1002a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1002a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.j(mode);
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        AppCompatImageHelper appCompatImageHelper = this.f1003b;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.i(colorStateList);
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatImageHelper appCompatImageHelper = this.f1003b;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.j(mode);
        }
    }

    public AppCompatImageView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(TintContextWrapper.wrap(context), attributeSet, i2);
        this.f1004c = false;
        ThemeUtils.checkAppCompatTheme(this, getContext());
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
        this.f1002a = appCompatBackgroundHelper;
        appCompatBackgroundHelper.e(attributeSet, i2);
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.f1003b = appCompatImageHelper;
        appCompatImageHelper.loadFromAttributes(attributeSet, i2);
    }
}
