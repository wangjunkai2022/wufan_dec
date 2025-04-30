package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.m;
/* compiled from: CutoutDrawable.java */
/* loaded from: classes2.dex */
class c extends MaterialShapeDrawable {
    @NonNull
    private final Paint E;
    @NonNull
    private final RectF F;

    c() {
        this(null);
    }

    private void T0() {
        this.E.setStyle(Paint.Style.FILL_AND_STROKE);
        this.E.setColor(-1);
        this.E.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean P0() {
        return !this.F.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q0() {
        R0(0.0f, 0.0f, 0.0f, 0.0f);
    }

    void R0(float f4, float f5, float f6, float f7) {
        RectF rectF = this.F;
        if (f4 == rectF.left && f5 == rectF.top && f6 == rectF.right && f7 == rectF.bottom) {
            return;
        }
        rectF.set(f4, f5, f6, f7);
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void S0(@NonNull RectF rectF) {
        R0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.shape.MaterialShapeDrawable
    public void s(@NonNull Canvas canvas) {
        if (this.F.isEmpty()) {
            super.s(canvas);
            return;
        }
        canvas.save();
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutRect(this.F);
        } else {
            canvas.clipRect(this.F, Region.Op.DIFFERENCE);
        }
        super.s(canvas);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@Nullable m mVar) {
        super(mVar == null ? new m() : mVar);
        this.E = new Paint(1);
        T0();
        this.F = new RectF();
    }
}
