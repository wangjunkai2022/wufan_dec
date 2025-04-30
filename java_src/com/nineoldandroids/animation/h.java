package com.nineoldandroids.animation;
/* compiled from: IntEvaluator.java */
/* loaded from: classes4.dex */
public class h implements p<Integer> {
    @Override // com.nineoldandroids.animation.p
    /* renamed from: a */
    public Integer evaluate(float f4, Integer num, Integer num2) {
        int intValue = num.intValue();
        return Integer.valueOf((int) (intValue + (f4 * (num2.intValue() - intValue))));
    }
}
