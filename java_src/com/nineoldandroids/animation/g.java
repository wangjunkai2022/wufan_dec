package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import com.nineoldandroids.animation.j;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FloatKeyframeSet.java */
/* loaded from: classes4.dex */
public class g extends k {

    /* renamed from: g  reason: collision with root package name */
    private float f54403g;

    /* renamed from: h  reason: collision with root package name */
    private float f54404h;

    /* renamed from: i  reason: collision with root package name */
    private float f54405i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54406j;

    public g(j.a... aVarArr) {
        super(aVarArr);
        this.f54406j = true;
    }

    @Override // com.nineoldandroids.animation.k
    public Object b(float f4) {
        return Float.valueOf(i(f4));
    }

    @Override // com.nineoldandroids.animation.k
    /* renamed from: h */
    public g clone() {
        ArrayList<j> arrayList = this.f54422e;
        int size = arrayList.size();
        j.a[] aVarArr = new j.a[size];
        for (int i2 = 0; i2 < size; i2++) {
            aVarArr[i2] = (j.a) arrayList.get(i2).clone();
        }
        return new g(aVarArr);
    }

    public float i(float f4) {
        int i2 = this.f54418a;
        if (i2 == 2) {
            if (this.f54406j) {
                this.f54406j = false;
                this.f54403g = ((j.a) this.f54422e.get(0)).p();
                float p3 = ((j.a) this.f54422e.get(1)).p();
                this.f54404h = p3;
                this.f54405i = p3 - this.f54403g;
            }
            Interpolator interpolator = this.f54421d;
            if (interpolator != null) {
                f4 = interpolator.getInterpolation(f4);
            }
            p pVar = this.f54423f;
            if (pVar == null) {
                return this.f54403g + (f4 * this.f54405i);
            }
            return ((Number) pVar.evaluate(f4, Float.valueOf(this.f54403g), Float.valueOf(this.f54404h))).floatValue();
        } else if (f4 <= 0.0f) {
            j.a aVar = (j.a) this.f54422e.get(0);
            j.a aVar2 = (j.a) this.f54422e.get(1);
            float p4 = aVar.p();
            float p5 = aVar2.p();
            float b4 = aVar.b();
            float b5 = aVar2.b();
            Interpolator c4 = aVar2.c();
            if (c4 != null) {
                f4 = c4.getInterpolation(f4);
            }
            float f5 = (f4 - b4) / (b5 - b4);
            p pVar2 = this.f54423f;
            return pVar2 == null ? p4 + (f5 * (p5 - p4)) : ((Number) pVar2.evaluate(f5, Float.valueOf(p4), Float.valueOf(p5))).floatValue();
        } else if (f4 >= 1.0f) {
            j.a aVar3 = (j.a) this.f54422e.get(i2 - 2);
            j.a aVar4 = (j.a) this.f54422e.get(this.f54418a - 1);
            float p6 = aVar3.p();
            float p7 = aVar4.p();
            float b6 = aVar3.b();
            float b7 = aVar4.b();
            Interpolator c5 = aVar4.c();
            if (c5 != null) {
                f4 = c5.getInterpolation(f4);
            }
            float f6 = (f4 - b6) / (b7 - b6);
            p pVar3 = this.f54423f;
            return pVar3 == null ? p6 + (f6 * (p7 - p6)) : ((Number) pVar3.evaluate(f6, Float.valueOf(p6), Float.valueOf(p7))).floatValue();
        } else {
            j.a aVar5 = (j.a) this.f54422e.get(0);
            int i4 = 1;
            while (true) {
                int i5 = this.f54418a;
                if (i4 < i5) {
                    j.a aVar6 = (j.a) this.f54422e.get(i4);
                    if (f4 < aVar6.b()) {
                        Interpolator c6 = aVar6.c();
                        if (c6 != null) {
                            f4 = c6.getInterpolation(f4);
                        }
                        float b8 = (f4 - aVar5.b()) / (aVar6.b() - aVar5.b());
                        float p8 = aVar5.p();
                        float p9 = aVar6.p();
                        p pVar4 = this.f54423f;
                        return pVar4 == null ? p8 + (b8 * (p9 - p8)) : ((Number) pVar4.evaluate(b8, Float.valueOf(p8), Float.valueOf(p9))).floatValue();
                    }
                    i4++;
                    aVar5 = aVar6;
                } else {
                    return ((Number) this.f54422e.get(i5 - 1).d()).floatValue();
                }
            }
        }
    }
}
