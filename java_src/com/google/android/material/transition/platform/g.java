package com.google.android.material.transition.platform;

import android.graphics.RectF;
import androidx.annotation.RequiresApi;
/* compiled from: FitModeEvaluators.java */
@RequiresApi(21)
/* loaded from: classes2.dex */
class g {

    /* renamed from: a  reason: collision with root package name */
    private static final f f16573a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final f f16574b = new b();

    /* compiled from: FitModeEvaluators.java */
    /* loaded from: classes2.dex */
    class a implements f {
        a() {
        }

        @Override // com.google.android.material.transition.platform.f
        public h a(float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
            float m4 = s.m(f7, f9, f5, f6, f4, true);
            float f11 = m4 / f7;
            float f12 = m4 / f9;
            return new h(f11, f12, m4, f8 * f11, m4, f10 * f12);
        }

        @Override // com.google.android.material.transition.platform.f
        public boolean b(h hVar) {
            return hVar.f16578d > hVar.f16580f;
        }

        @Override // com.google.android.material.transition.platform.f
        public void c(RectF rectF, float f4, h hVar) {
            rectF.bottom -= Math.abs(hVar.f16580f - hVar.f16578d) * f4;
        }
    }

    /* compiled from: FitModeEvaluators.java */
    /* loaded from: classes2.dex */
    class b implements f {
        b() {
        }

        @Override // com.google.android.material.transition.platform.f
        public h a(float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
            float m4 = s.m(f8, f10, f5, f6, f4, true);
            float f11 = m4 / f8;
            float f12 = m4 / f10;
            return new h(f11, f12, f7 * f11, m4, f9 * f12, m4);
        }

        @Override // com.google.android.material.transition.platform.f
        public boolean b(h hVar) {
            return hVar.f16577c > hVar.f16579e;
        }

        @Override // com.google.android.material.transition.platform.f
        public void c(RectF rectF, float f4, h hVar) {
            float abs = (Math.abs(hVar.f16579e - hVar.f16577c) / 2.0f) * f4;
            rectF.left += abs;
            rectF.right -= abs;
        }
    }

    private g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f a(int i2, boolean z3, RectF rectF, RectF rectF2) {
        if (i2 == 0) {
            return b(z3, rectF, rectF2) ? f16573a : f16574b;
        } else if (i2 != 1) {
            if (i2 == 2) {
                return f16574b;
            }
            throw new IllegalArgumentException("Invalid fit mode: " + i2);
        } else {
            return f16573a;
        }
    }

    private static boolean b(boolean z3, RectF rectF, RectF rectF2) {
        float width = rectF.width();
        float height = rectF.height();
        float width2 = rectF2.width();
        float height2 = rectF2.height();
        float f4 = (height2 * width) / width2;
        float f5 = (width2 * height) / width;
        if (z3) {
            if (f4 >= height) {
                return true;
            }
        } else if (f5 >= height2) {
            return true;
        }
        return false;
    }
}
