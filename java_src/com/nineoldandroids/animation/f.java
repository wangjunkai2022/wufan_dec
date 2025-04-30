package com.nineoldandroids.animation;
/* compiled from: FloatEvaluator.java */
/* loaded from: classes4.dex */
public class f implements p<Number> {
    @Override // com.nineoldandroids.animation.p
    /* renamed from: a */
    public Float evaluate(float f4, Number number, Number number2) {
        float floatValue = number.floatValue();
        return Float.valueOf(floatValue + (f4 * (number2.floatValue() - floatValue)));
    }
}
