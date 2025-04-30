package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import com.nineoldandroids.animation.j;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IntKeyframeSet.java */
/* loaded from: classes4.dex */
public class i extends k {

    /* renamed from: g  reason: collision with root package name */
    private int f54407g;

    /* renamed from: h  reason: collision with root package name */
    private int f54408h;

    /* renamed from: i  reason: collision with root package name */
    private int f54409i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54410j;

    public i(j.b... bVarArr) {
        super(bVarArr);
        this.f54410j = true;
    }

    @Override // com.nineoldandroids.animation.k
    public Object b(float f4) {
        return Integer.valueOf(i(f4));
    }

    @Override // com.nineoldandroids.animation.k
    /* renamed from: h */
    public i clone() {
        ArrayList<j> arrayList = this.f54422e;
        int size = arrayList.size();
        j.b[] bVarArr = new j.b[size];
        for (int i2 = 0; i2 < size; i2++) {
            bVarArr[i2] = (j.b) arrayList.get(i2).clone();
        }
        return new i(bVarArr);
    }

    public int i(float f4) {
        int i2 = this.f54418a;
        if (i2 == 2) {
            if (this.f54410j) {
                this.f54410j = false;
                this.f54407g = ((j.b) this.f54422e.get(0)).p();
                int p3 = ((j.b) this.f54422e.get(1)).p();
                this.f54408h = p3;
                this.f54409i = p3 - this.f54407g;
            }
            Interpolator interpolator = this.f54421d;
            if (interpolator != null) {
                f4 = interpolator.getInterpolation(f4);
            }
            p pVar = this.f54423f;
            if (pVar == null) {
                return this.f54407g + ((int) (f4 * this.f54409i));
            }
            return ((Number) pVar.evaluate(f4, Integer.valueOf(this.f54407g), Integer.valueOf(this.f54408h))).intValue();
        } else if (f4 <= 0.0f) {
            j.b bVar = (j.b) this.f54422e.get(0);
            j.b bVar2 = (j.b) this.f54422e.get(1);
            int p4 = bVar.p();
            int p5 = bVar2.p();
            float b4 = bVar.b();
            float b5 = bVar2.b();
            Interpolator c4 = bVar2.c();
            if (c4 != null) {
                f4 = c4.getInterpolation(f4);
            }
            float f5 = (f4 - b4) / (b5 - b4);
            p pVar2 = this.f54423f;
            return pVar2 == null ? p4 + ((int) (f5 * (p5 - p4))) : ((Number) pVar2.evaluate(f5, Integer.valueOf(p4), Integer.valueOf(p5))).intValue();
        } else if (f4 >= 1.0f) {
            j.b bVar3 = (j.b) this.f54422e.get(i2 - 2);
            j.b bVar4 = (j.b) this.f54422e.get(this.f54418a - 1);
            int p6 = bVar3.p();
            int p7 = bVar4.p();
            float b6 = bVar3.b();
            float b7 = bVar4.b();
            Interpolator c5 = bVar4.c();
            if (c5 != null) {
                f4 = c5.getInterpolation(f4);
            }
            float f6 = (f4 - b6) / (b7 - b6);
            p pVar3 = this.f54423f;
            return pVar3 == null ? p6 + ((int) (f6 * (p7 - p6))) : ((Number) pVar3.evaluate(f6, Integer.valueOf(p6), Integer.valueOf(p7))).intValue();
        } else {
            j.b bVar5 = (j.b) this.f54422e.get(0);
            int i4 = 1;
            while (true) {
                int i5 = this.f54418a;
                if (i4 < i5) {
                    j.b bVar6 = (j.b) this.f54422e.get(i4);
                    if (f4 < bVar6.b()) {
                        Interpolator c6 = bVar6.c();
                        if (c6 != null) {
                            f4 = c6.getInterpolation(f4);
                        }
                        float b8 = (f4 - bVar5.b()) / (bVar6.b() - bVar5.b());
                        int p8 = bVar5.p();
                        int p9 = bVar6.p();
                        p pVar4 = this.f54423f;
                        return pVar4 == null ? p8 + ((int) (b8 * (p9 - p8))) : ((Number) pVar4.evaluate(b8, Integer.valueOf(p8), Integer.valueOf(p9))).intValue();
                    }
                    i4++;
                    bVar5 = bVar6;
                } else {
                    return ((Number) this.f54422e.get(i5 - 1).d()).intValue();
                }
            }
        }
    }
}
