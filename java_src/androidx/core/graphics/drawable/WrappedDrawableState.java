package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class WrappedDrawableState extends Drawable.ConstantState {

    /* renamed from: a  reason: collision with root package name */
    int f4355a;

    /* renamed from: b  reason: collision with root package name */
    Drawable.ConstantState f4356b;

    /* renamed from: c  reason: collision with root package name */
    ColorStateList f4357c;

    /* renamed from: d  reason: collision with root package name */
    PorterDuff.Mode f4358d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WrappedDrawableState(@Nullable WrappedDrawableState wrappedDrawableState) {
        this.f4357c = null;
        this.f4358d = WrappedDrawableApi14.f4346g;
        if (wrappedDrawableState != null) {
            this.f4355a = wrappedDrawableState.f4355a;
            this.f4356b = wrappedDrawableState.f4356b;
            this.f4357c = wrappedDrawableState.f4357c;
            this.f4358d = wrappedDrawableState.f4358d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f4356b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i2 = this.f4355a;
        Drawable.ConstantState constantState = this.f4356b;
        return i2 | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    @NonNull
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    @NonNull
    public Drawable newDrawable(@Nullable Resources resources) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new WrappedDrawableApi21(this, resources);
        }
        return new WrappedDrawableApi14(this, resources);
    }
}
