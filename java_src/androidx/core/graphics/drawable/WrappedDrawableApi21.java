package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(21)
/* loaded from: classes.dex */
public class WrappedDrawableApi21 extends WrappedDrawableApi14 {

    /* renamed from: h  reason: collision with root package name */
    private static final String f4353h = "WrappedDrawableApi21";

    /* renamed from: i  reason: collision with root package name */
    private static Method f4354i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WrappedDrawableApi21(Drawable drawable) {
        super(drawable);
        e();
    }

    private void e() {
        if (f4354i == null) {
            try {
                f4354i = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception unused) {
            }
        }
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawableApi14
    protected boolean a() {
        if (Build.VERSION.SDK_INT == 21) {
            Drawable drawable = this.f4352f;
            return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Rect getDirtyBounds() {
        return this.f4352f.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(@NonNull Outline outline) {
        this.f4352f.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        Method method;
        Drawable drawable = this.f4352f;
        if (drawable != null && (method = f4354i) != null) {
            try {
                return ((Boolean) method.invoke(drawable, new Object[0])).booleanValue();
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f4, float f5) {
        this.f4352f.setHotspot(f4, f5);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i2, int i4, int i5, int i6) {
        this.f4352f.setHotspotBounds(i2, i4, i5, i6);
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawableApi14, android.graphics.drawable.Drawable
    public boolean setState(@NonNull int[] iArr) {
        if (super.setState(iArr)) {
            invalidateSelf();
            return true;
        }
        return false;
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawableApi14, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i2) {
        if (a()) {
            super.setTint(i2);
        } else {
            this.f4352f.setTint(i2);
        }
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawableApi14, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        if (a()) {
            super.setTintList(colorStateList);
        } else {
            this.f4352f.setTintList(colorStateList);
        }
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawableApi14, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (a()) {
            super.setTintMode(mode);
        } else {
            this.f4352f.setTintMode(mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WrappedDrawableApi21(WrappedDrawableState wrappedDrawableState, Resources resources) {
        super(wrappedDrawableState, resources);
        e();
    }
}
