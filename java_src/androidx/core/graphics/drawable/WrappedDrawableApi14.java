package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class WrappedDrawableApi14 extends Drawable implements Drawable.Callback, WrappedDrawable, TintAwareDrawable {

    /* renamed from: g  reason: collision with root package name */
    static final PorterDuff.Mode f4346g = PorterDuff.Mode.SRC_IN;

    /* renamed from: a  reason: collision with root package name */
    private int f4347a;

    /* renamed from: b  reason: collision with root package name */
    private PorterDuff.Mode f4348b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f4349c;

    /* renamed from: d  reason: collision with root package name */
    WrappedDrawableState f4350d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4351e;

    /* renamed from: f  reason: collision with root package name */
    Drawable f4352f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WrappedDrawableApi14(@NonNull WrappedDrawableState wrappedDrawableState, @Nullable Resources resources) {
        this.f4350d = wrappedDrawableState;
        c(resources);
    }

    @NonNull
    private WrappedDrawableState b() {
        return new WrappedDrawableState(this.f4350d);
    }

    private void c(@Nullable Resources resources) {
        Drawable.ConstantState constantState;
        WrappedDrawableState wrappedDrawableState = this.f4350d;
        if (wrappedDrawableState == null || (constantState = wrappedDrawableState.f4356b) == null) {
            return;
        }
        setWrappedDrawable(constantState.newDrawable(resources));
    }

    private boolean d(int[] iArr) {
        if (a()) {
            WrappedDrawableState wrappedDrawableState = this.f4350d;
            ColorStateList colorStateList = wrappedDrawableState.f4357c;
            PorterDuff.Mode mode = wrappedDrawableState.f4358d;
            if (colorStateList != null && mode != null) {
                int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
                if (!this.f4349c || colorForState != this.f4347a || mode != this.f4348b) {
                    setColorFilter(colorForState, mode);
                    this.f4347a = colorForState;
                    this.f4348b = mode;
                    this.f4349c = true;
                    return true;
                }
            } else {
                this.f4349c = false;
                clearColorFilter();
            }
            return false;
        }
        return false;
    }

    protected boolean a() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f4352f.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        WrappedDrawableState wrappedDrawableState = this.f4350d;
        return changingConfigurations | (wrappedDrawableState != null ? wrappedDrawableState.getChangingConfigurations() : 0) | this.f4352f.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        WrappedDrawableState wrappedDrawableState = this.f4350d;
        if (wrappedDrawableState == null || !wrappedDrawableState.a()) {
            return null;
        }
        this.f4350d.f4355a = getChangingConfigurations();
        return this.f4350d;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.f4352f.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f4352f.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f4352f.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(23)
    public int getLayoutDirection() {
        return DrawableCompat.getLayoutDirection(this.f4352f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f4352f.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f4352f.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f4352f.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        return this.f4352f.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public int[] getState() {
        return this.f4352f.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f4352f.getTransparentRegion();
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawable
    public final Drawable getWrappedDrawable() {
        return this.f4352f;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(19)
    public boolean isAutoMirrored() {
        return DrawableCompat.isAutoMirrored(this.f4352f);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        WrappedDrawableState wrappedDrawableState;
        ColorStateList colorStateList = (!a() || (wrappedDrawableState = this.f4350d) == null) ? null : wrappedDrawableState.f4357c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f4352f.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f4352f.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f4351e && super.mutate() == this) {
            this.f4350d = b();
            Drawable drawable = this.f4352f;
            if (drawable != null) {
                drawable.mutate();
            }
            WrappedDrawableState wrappedDrawableState = this.f4350d;
            if (wrappedDrawableState != null) {
                Drawable drawable2 = this.f4352f;
                wrappedDrawableState.f4356b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f4351e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f4352f;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(23)
    public boolean onLayoutDirectionChanged(int i2) {
        return DrawableCompat.setLayoutDirection(this.f4352f, i2);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        return this.f4352f.setLevel(i2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j4) {
        scheduleSelf(runnable, j4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f4352f.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(19)
    public void setAutoMirrored(boolean z3) {
        DrawableCompat.setAutoMirrored(this.f4352f, z3);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i2) {
        this.f4352f.setChangingConfigurations(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f4352f.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z3) {
        this.f4352f.setDither(z3);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z3) {
        this.f4352f.setFilterBitmap(z3);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(@NonNull int[] iArr) {
        return d(iArr) || this.f4352f.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        this.f4350d.f4357c = colorStateList;
        d(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        this.f4350d.f4358d = mode;
        d(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z3, boolean z4) {
        return super.setVisible(z3, z4) || this.f4352f.setVisible(z3, z4);
    }

    @Override // androidx.core.graphics.drawable.WrappedDrawable
    public final void setWrappedDrawable(Drawable drawable) {
        Drawable drawable2 = this.f4352f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f4352f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            WrappedDrawableState wrappedDrawableState = this.f4350d;
            if (wrappedDrawableState != null) {
                wrappedDrawableState.f4356b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        unscheduleSelf(runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WrappedDrawableApi14(@Nullable Drawable drawable) {
        this.f4350d = b();
        setWrappedDrawable(drawable);
    }
}
