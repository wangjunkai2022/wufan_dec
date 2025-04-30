package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.facebook.common.internal.VisibleForTesting;
import java.util.Arrays;
/* compiled from: FadeDrawable.java */
/* loaded from: classes2.dex */
public class g extends a {
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    public static final int f12043t = 0;
    @VisibleForTesting

    /* renamed from: u  reason: collision with root package name */
    public static final int f12044u = 1;
    @VisibleForTesting

    /* renamed from: v  reason: collision with root package name */
    public static final int f12045v = 2;

    /* renamed from: i  reason: collision with root package name */
    private final Drawable[] f12046i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f12047j;

    /* renamed from: k  reason: collision with root package name */
    private final int f12048k;
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    int f12049l;
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    int f12050m;
    @VisibleForTesting

    /* renamed from: n  reason: collision with root package name */
    long f12051n;
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    int[] f12052o;
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    int[] f12053p;
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    int f12054q;
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    boolean[] f12055r;
    @VisibleForTesting

    /* renamed from: s  reason: collision with root package name */
    int f12056s;

    public g(Drawable[] drawableArr) {
        this(drawableArr, false);
    }

    private void h(Canvas canvas, Drawable drawable, int i2) {
        if (drawable == null || i2 <= 0) {
            return;
        }
        this.f12056s++;
        drawable.mutate().setAlpha(i2);
        this.f12056s--;
        drawable.draw(canvas);
    }

    private void x() {
        this.f12049l = 2;
        Arrays.fill(this.f12052o, this.f12048k);
        this.f12052o[0] = 255;
        Arrays.fill(this.f12053p, this.f12048k);
        this.f12053p[0] = 255;
        Arrays.fill(this.f12055r, this.f12047j);
        this.f12055r[0] = true;
    }

    private boolean z(float f4) {
        boolean z3 = true;
        for (int i2 = 0; i2 < this.f12046i.length; i2++) {
            boolean[] zArr = this.f12055r;
            int i4 = zArr[i2] ? 1 : -1;
            int[] iArr = this.f12053p;
            iArr[i2] = (int) (this.f12052o[i2] + (i4 * 255 * f4));
            if (iArr[i2] < 0) {
                iArr[i2] = 0;
            }
            if (iArr[i2] > 255) {
                iArr[i2] = 255;
            }
            if (zArr[i2] && iArr[i2] < 255) {
                z3 = false;
            }
            if (!zArr[i2] && iArr[i2] > 0) {
                z3 = false;
            }
        }
        return z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0053 A[LOOP:0: B:25:0x004e->B:27:0x0053, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0065 A[EDGE_INSN: B:31:0x0065->B:28:0x0065 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    @Override // com.facebook.drawee.drawable.a, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r9) {
        /*
            r8 = this;
            int r0 = r8.f12049l
            r1 = 2
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L2b
            if (r0 == r3) goto La
            goto L4e
        La:
            int r0 = r8.f12050m
            if (r0 <= 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            com.facebook.common.internal.h.o(r0)
            long r4 = r8.s()
            long r6 = r8.f12051n
            long r4 = r4 - r6
            float r0 = (float) r4
            int r4 = r8.f12050m
            float r4 = (float) r4
            float r0 = r0 / r4
            boolean r0 = r8.z(r0)
            if (r0 == 0) goto L27
            goto L28
        L27:
            r1 = 1
        L28:
            r8.f12049l = r1
            goto L4d
        L2b:
            int[] r0 = r8.f12053p
            int[] r4 = r8.f12052o
            android.graphics.drawable.Drawable[] r5 = r8.f12046i
            int r5 = r5.length
            java.lang.System.arraycopy(r0, r2, r4, r2, r5)
            long r4 = r8.s()
            r8.f12051n = r4
            int r0 = r8.f12050m
            if (r0 != 0) goto L42
            r0 = 1065353216(0x3f800000, float:1.0)
            goto L43
        L42:
            r0 = 0
        L43:
            boolean r0 = r8.z(r0)
            if (r0 == 0) goto L4a
            goto L4b
        L4a:
            r1 = 1
        L4b:
            r8.f12049l = r1
        L4d:
            r3 = r0
        L4e:
            android.graphics.drawable.Drawable[] r0 = r8.f12046i
            int r1 = r0.length
            if (r2 >= r1) goto L65
            r0 = r0[r2]
            int[] r1 = r8.f12053p
            r1 = r1[r2]
            int r4 = r8.f12054q
            int r1 = r1 * r4
            int r1 = r1 / 255
            r8.h(r9, r0, r1)
            int r2 = r2 + 1
            goto L4e
        L65:
            if (r3 != 0) goto L6a
            r8.invalidateSelf()
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.drawee.drawable.g.draw(android.graphics.Canvas):void");
    }

    public void g() {
        this.f12056s++;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f12054q;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f12056s == 0) {
            super.invalidateSelf();
        }
    }

    public void j() {
        this.f12056s--;
        invalidateSelf();
    }

    public void k() {
        this.f12049l = 0;
        Arrays.fill(this.f12055r, true);
        invalidateSelf();
    }

    public void l(int i2) {
        this.f12049l = 0;
        this.f12055r[i2] = true;
        invalidateSelf();
    }

    public void m() {
        this.f12049l = 0;
        Arrays.fill(this.f12055r, false);
        invalidateSelf();
    }

    public void n(int i2) {
        this.f12049l = 0;
        this.f12055r[i2] = false;
        invalidateSelf();
    }

    public void p(int i2) {
        this.f12049l = 0;
        Arrays.fill(this.f12055r, false);
        this.f12055r[i2] = true;
        invalidateSelf();
    }

    public void q(int i2) {
        this.f12049l = 0;
        int i4 = i2 + 1;
        Arrays.fill(this.f12055r, 0, i4, true);
        Arrays.fill(this.f12055r, i4, this.f12046i.length, false);
        invalidateSelf();
    }

    public void r() {
        this.f12049l = 2;
        for (int i2 = 0; i2 < this.f12046i.length; i2++) {
            this.f12053p[i2] = this.f12055r[i2] ? 255 : 0;
        }
        invalidateSelf();
    }

    protected long s() {
        return SystemClock.uptimeMillis();
    }

    @Override // com.facebook.drawee.drawable.a, android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.f12054q != i2) {
            this.f12054q = i2;
            invalidateSelf();
        }
    }

    public int t() {
        return this.f12050m;
    }

    @VisibleForTesting
    public int u() {
        return this.f12049l;
    }

    public boolean v(int i2) {
        return this.f12055r[i2];
    }

    public void w() {
        x();
        invalidateSelf();
    }

    public void y(int i2) {
        this.f12050m = i2;
        if (this.f12049l == 1) {
            this.f12049l = 0;
        }
    }

    public g(Drawable[] drawableArr, boolean z3) {
        super(drawableArr);
        com.facebook.common.internal.h.p(drawableArr.length >= 1, "At least one layer required!");
        this.f12046i = drawableArr;
        this.f12052o = new int[drawableArr.length];
        this.f12053p = new int[drawableArr.length];
        this.f12054q = 255;
        this.f12055r = new boolean[drawableArr.length];
        this.f12056s = 0;
        this.f12047j = z3;
        this.f12048k = z3 ? 255 : 0;
        x();
    }
}
