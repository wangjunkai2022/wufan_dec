package com.nineoldandroids.animation;
/* compiled from: ArgbEvaluator.java */
/* loaded from: classes4.dex */
public class e implements p {
    @Override // com.nineoldandroids.animation.p
    public Object evaluate(float f4, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        int i2 = intValue >> 24;
        int i4 = (intValue >> 16) & 255;
        int i5 = (intValue >> 8) & 255;
        int i6 = intValue & 255;
        int intValue2 = ((Integer) obj2).intValue();
        return Integer.valueOf(((i2 + ((int) (((intValue2 >> 24) - i2) * f4))) << 24) | ((i4 + ((int) ((((intValue2 >> 16) & 255) - i4) * f4))) << 16) | ((i5 + ((int) ((((intValue2 >> 8) & 255) - i5) * f4))) << 8) | (i6 + ((int) (f4 * ((intValue2 & 255) - i6)))));
    }
}
