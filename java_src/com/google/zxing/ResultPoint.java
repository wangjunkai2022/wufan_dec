package com.google.zxing;

import io.netty.util.internal.StringUtil;
/* loaded from: classes2.dex */
public class ResultPoint {

    /* renamed from: x  reason: collision with root package name */
    private final float f16643x;

    /* renamed from: y  reason: collision with root package name */
    private final float f16644y;

    public ResultPoint(float f4, float f5) {
        this.f16643x = f4;
        this.f16644y = f5;
    }

    private static float crossProductZ(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        float f4 = resultPoint2.f16643x;
        float f5 = resultPoint2.f16644y;
        return ((resultPoint3.f16643x - f4) * (resultPoint.f16644y - f5)) - ((resultPoint3.f16644y - f5) * (resultPoint.f16643x - f4));
    }

    public static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        float f4 = resultPoint.f16643x - resultPoint2.f16643x;
        float f5 = resultPoint.f16644y - resultPoint2.f16644y;
        return (float) Math.sqrt((f4 * f4) + (f5 * f5));
    }

    public static void orderBestPatterns(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        float distance = distance(resultPointArr[0], resultPointArr[1]);
        float distance2 = distance(resultPointArr[1], resultPointArr[2]);
        float distance3 = distance(resultPointArr[0], resultPointArr[2]);
        if (distance2 >= distance && distance2 >= distance3) {
            resultPoint = resultPointArr[0];
            resultPoint2 = resultPointArr[1];
            resultPoint3 = resultPointArr[2];
        } else if (distance3 >= distance2 && distance3 >= distance) {
            resultPoint = resultPointArr[1];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[2];
        } else {
            resultPoint = resultPointArr[2];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[1];
        }
        if (crossProductZ(resultPoint2, resultPoint, resultPoint3) < 0.0f) {
            ResultPoint resultPoint4 = resultPoint3;
            resultPoint3 = resultPoint2;
            resultPoint2 = resultPoint4;
        }
        resultPointArr[0] = resultPoint2;
        resultPointArr[1] = resultPoint;
        resultPointArr[2] = resultPoint3;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ResultPoint) {
            ResultPoint resultPoint = (ResultPoint) obj;
            return this.f16643x == resultPoint.f16643x && this.f16644y == resultPoint.f16644y;
        }
        return false;
    }

    public final float getX() {
        return this.f16643x;
    }

    public final float getY() {
        return this.f16644y;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f16643x) * 31) + Float.floatToIntBits(this.f16644y);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(25);
        sb.append('(');
        sb.append(this.f16643x);
        sb.append(StringUtil.COMMA);
        sb.append(this.f16644y);
        sb.append(')');
        return sb.toString();
    }
}
