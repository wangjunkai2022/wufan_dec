package com.join.mgps.Util;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.ImageView;
/* compiled from: TipViewUtil.java */
/* loaded from: classes3.dex */
public class h2 {
    public static Drawable a(Context context, String str) {
        if (d2.h(str)) {
            str = "#8dbbec";
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        float h4 = com.join.android.app.common.utils.j.n(context).h(context);
        int i2 = (int) (5.0f * h4);
        shapeDrawable.setPadding(i2, 0, i2, 0);
        shapeDrawable.setBounds(0, 0, 65, (int) (h4 * 16.0f));
        float g4 = com.join.android.app.common.utils.j.n(context).g() * 4.0f;
        com.join.android.app.common.utils.j.n(context).g();
        shapeDrawable.setShape(new RoundRectShape(new float[]{g4, g4, g4, g4, g4, g4, g4, g4}, null, null));
        Paint paint = shapeDrawable.getPaint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(Color.parseColor(str));
        paint.setStrokeWidth((int) (com.join.android.app.common.utils.j.n(context).g() * 1.0f));
        return shapeDrawable;
    }

    public static Drawable b(Context context, String str, float f4) {
        if (d2.h(str)) {
            str = "#8dbbec";
        }
        Drawable c4 = com.join.mgps.customview.k0.c(new ColorDrawable(Color.parseColor(str)));
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (c4 != null && (c4 instanceof com.join.mgps.customview.k0)) {
            com.join.mgps.customview.k0 k0Var = (com.join.mgps.customview.k0) c4;
            k0Var.o(TypedValue.applyDimension(0, f4, displayMetrics));
            k0Var.q(ImageView.ScaleType.FIT_XY);
        }
        return c4;
    }

    public static Drawable c(Context context, String str, String str2) {
        if (d2.h(str)) {
            str = "#8dbbec";
        }
        if (d2.h(str2)) {
            str2 = "#8dbbec";
        }
        Drawable c4 = com.join.mgps.customview.k0.c(new ColorDrawable(Color.parseColor(str)));
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (c4 != null && (c4 instanceof com.join.mgps.customview.k0)) {
            com.join.mgps.customview.k0 k0Var = (com.join.mgps.customview.k0) c4;
            k0Var.l(Color.parseColor(str2));
            k0Var.n(TypedValue.applyDimension(1, 1.0f, displayMetrics));
            k0Var.o(TypedValue.applyDimension(1, 2.0f, displayMetrics));
            k0Var.q(ImageView.ScaleType.FIT_XY);
        }
        return c4;
    }

    public static Drawable d(Context context, String str, int i2) {
        if (d2.h(str)) {
            str = "#8dbbec";
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        float h4 = com.join.android.app.common.utils.j.n(context).h(context);
        shapeDrawable.setBounds(0, 0, i2 * 65, (int) (16.0f * h4));
        float f4 = h4 * 4.0f;
        shapeDrawable.setShape(new RoundRectShape(new float[]{f4, f4, f4, f4, f4, f4, f4, f4}, new RectF(0.0f, 0.0f, 0.0f, 0.0f), new float[]{f4, f4, f4, f4, f4, f4, f4, f4}));
        Paint paint = shapeDrawable.getPaint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(Color.parseColor(str));
        paint.setStrokeWidth(2.0f);
        return shapeDrawable;
    }
}
