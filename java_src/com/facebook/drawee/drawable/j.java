package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;
/* compiled from: OrientedDrawable.java */
/* loaded from: classes2.dex */
public class j extends h {
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    final Matrix f12065e;

    /* renamed from: f  reason: collision with root package name */
    private int f12066f;

    /* renamed from: g  reason: collision with root package name */
    private int f12067g;

    /* renamed from: h  reason: collision with root package name */
    private final Matrix f12068h;

    /* renamed from: i  reason: collision with root package name */
    private final RectF f12069i;

    public j(Drawable drawable, int i2) {
        this(drawable, i2, 0);
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i2;
        if (this.f12066f <= 0 && ((i2 = this.f12067g) == 0 || i2 == 1)) {
            super.draw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.concat(this.f12065e);
        super.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // com.facebook.drawee.drawable.h, com.facebook.drawee.drawable.t
    public void e(Matrix matrix) {
        u(matrix);
        if (this.f12065e.isIdentity()) {
            return;
        }
        matrix.preConcat(this.f12065e);
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i2 = this.f12067g;
        if (i2 != 5 && i2 != 7 && this.f12066f % 180 == 0) {
            return super.getIntrinsicHeight();
        }
        return super.getIntrinsicWidth();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i2 = this.f12067g;
        if (i2 != 5 && i2 != 7 && this.f12066f % 180 == 0) {
            return super.getIntrinsicWidth();
        }
        return super.getIntrinsicHeight();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        int i2;
        Drawable current = getCurrent();
        int i4 = this.f12066f;
        if (i4 <= 0 && ((i2 = this.f12067g) == 0 || i2 == 1)) {
            current.setBounds(rect);
            return;
        }
        int i5 = this.f12067g;
        if (i5 == 2) {
            this.f12065e.setScale(-1.0f, 1.0f);
        } else if (i5 == 7) {
            this.f12065e.setRotate(270.0f, rect.centerX(), rect.centerY());
            this.f12065e.postScale(-1.0f, 1.0f);
        } else if (i5 == 4) {
            this.f12065e.setScale(1.0f, -1.0f);
        } else if (i5 != 5) {
            this.f12065e.setRotate(i4, rect.centerX(), rect.centerY());
        } else {
            this.f12065e.setRotate(270.0f, rect.centerX(), rect.centerY());
            this.f12065e.postScale(1.0f, -1.0f);
        }
        this.f12068h.reset();
        this.f12065e.invert(this.f12068h);
        this.f12069i.set(rect);
        this.f12068h.mapRect(this.f12069i);
        RectF rectF = this.f12069i;
        current.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    public j(Drawable drawable, int i2, int i4) {
        super(drawable);
        this.f12068h = new Matrix();
        this.f12069i = new RectF();
        boolean z3 = true;
        com.facebook.common.internal.h.d(i2 % 90 == 0);
        com.facebook.common.internal.h.d((i4 < 0 || i4 > 8) ? false : false);
        this.f12065e = new Matrix();
        this.f12066f = i2;
        this.f12067g = i4;
    }
}
