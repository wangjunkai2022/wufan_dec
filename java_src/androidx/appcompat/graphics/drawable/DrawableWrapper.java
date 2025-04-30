package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class DrawableWrapper extends Drawable implements Drawable.Callback {

    /* renamed from: a  reason: collision with root package name */
    private Drawable f425a;

    public DrawableWrapper(Drawable drawable) {
        setWrappedDrawable(drawable);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f425a.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f425a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f425a.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f425a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f425a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f425a.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f425a.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f425a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f425a.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f425a.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f425a.getTransparentRegion();
    }

    public Drawable getWrappedDrawable() {
        return this.f425a;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return DrawableCompat.isAutoMirrored(this.f425a);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f425a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f425a.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f425a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i2) {
        return this.f425a.setLevel(i2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j4) {
        scheduleSelf(runnable, j4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f425a.setAlpha(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z3) {
        DrawableCompat.setAutoMirrored(this.f425a, z3);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i2) {
        this.f425a.setChangingConfigurations(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f425a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z3) {
        this.f425a.setDither(z3);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z3) {
        this.f425a.setFilterBitmap(z3);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f4, float f5) {
        DrawableCompat.setHotspot(this.f425a, f4, f5);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i2, int i4, int i5, int i6) {
        DrawableCompat.setHotspotBounds(this.f425a, i2, i4, i5, i6);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return this.f425a.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i2) {
        DrawableCompat.setTint(this.f425a, i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.f425a, colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        DrawableCompat.setTintMode(this.f425a, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z3, boolean z4) {
        return super.setVisible(z3, z4) || this.f425a.setVisible(z3, z4);
    }

    public void setWrappedDrawable(Drawable drawable) {
        Drawable drawable2 = this.f425a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f425a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
