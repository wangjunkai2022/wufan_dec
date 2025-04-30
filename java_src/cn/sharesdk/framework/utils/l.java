package cn.sharesdk.framework.utils;

import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
/* compiled from: ViewRound.java */
/* loaded from: classes2.dex */
public class l {
    public static ShapeDrawable a(float f4, int i2) {
        float[] fArr = new float[8];
        float[] fArr2 = new float[8];
        for (int i4 = 0; i4 < 8; i4++) {
            fArr[i4] = 0.0f + f4;
            fArr2[i4] = f4;
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, new RectF(0.0f, 0.0f, 0.0f, 0.0f), fArr2));
        shapeDrawable.getPaint().setColor(i2);
        return shapeDrawable;
    }
}
