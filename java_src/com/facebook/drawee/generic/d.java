package com.facebook.drawee.generic;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.drawee.drawable.h;
import com.facebook.drawee.drawable.u;
import com.facebook.drawee.drawable.v;
import javax.annotation.Nullable;
/* compiled from: RootDrawable.java */
/* loaded from: classes.dex */
public class d extends h implements u {
    @VisibleForTesting
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    Drawable f12199e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private v f12200f;

    public d(Drawable drawable) {
        super(drawable);
        this.f12199e = null;
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    @SuppressLint({"WrongCall"})
    public void draw(Canvas canvas) {
        if (isVisible()) {
            v vVar = this.f12200f;
            if (vVar != null) {
                vVar.a();
            }
            super.draw(canvas);
            Drawable drawable = this.f12199e;
            if (drawable != null) {
                drawable.setBounds(getBounds());
                this.f12199e.draw(canvas);
            }
        }
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return -1;
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return -1;
    }

    @Override // com.facebook.drawee.drawable.u
    public void p(@Nullable v vVar) {
        this.f12200f = vVar;
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z3, boolean z4) {
        v vVar = this.f12200f;
        if (vVar != null) {
            vVar.onVisibilityChange(z3);
        }
        return super.setVisible(z3, z4);
    }

    public void y(@Nullable Drawable drawable) {
        this.f12199e = drawable;
        invalidateSelf();
    }
}
