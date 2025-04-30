package org.ppsspp.ppsspp;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Typeface;
/* loaded from: classes5.dex */
public class TextRenderer {
    private static final String TAG = "TextRenderer";
    private static Paint bg;

    /* renamed from: p  reason: collision with root package name */
    private static Paint f73835p;
    private static Typeface robotoCondensed;

    static {
        Paint paint = new Paint(129);
        f73835p = paint;
        paint.setColor(-1);
        Paint paint2 = new Paint();
        bg = paint2;
        paint2.setColor(-16777216);
    }

    public static void init(Context context) {
        Typeface createFromFile = Typeface.createFromFile(NativeActivity.assetsPath + "Roboto-Condensed.ttf");
        robotoCondensed = createFromFile;
        if (createFromFile != null) {
            f73835p.setTypeface(robotoCondensed);
        }
    }

    private static Point measure(String str, double d4) {
        String[] split = str.replaceAll("\\r", "").split("\n");
        Point point = new Point();
        point.x = 0;
        for (String str2 : split) {
            point.x = Math.max(measureLine(str2, d4).x, point.x);
        }
        point.y = (((int) (f73835p.descent() - f73835p.ascent())) * split.length) + 2;
        return point;
    }

    private static Point measureLine(String str, double d4) {
        int i2;
        if (str.length() > 0) {
            f73835p.setTextSize((float) d4);
            i2 = (((int) f73835p.measureText(str)) + 5) & (-2);
        } else {
            i2 = 1;
        }
        Point point = new Point();
        point.x = i2;
        point.y = (int) ((f73835p.descent() - f73835p.ascent()) + 2.0f);
        return point;
    }

    public static int measureText(String str, double d4) {
        Point measure = measure(str, d4);
        return measure.y | (measure.x << 16);
    }

    public static int[] renderText(String str, double d4) {
        String[] split;
        Point measure = measure(str, d4);
        int i2 = measure.x;
        int i4 = measure.y;
        int i5 = i2 == 0 ? 1 : i2;
        int i6 = i4 == 0 ? 1 : i4;
        Bitmap createBitmap = Bitmap.createBitmap(i5, i6, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawRect(0.0f, 0.0f, i5, i6, bg);
        float f4 = 1.0f;
        for (String str2 : str.replaceAll("\\r", "").split("\n")) {
            if (str2.length() > 0) {
                canvas.drawText(str2, 1.0f, (-f73835p.ascent()) + f4, f73835p);
            }
            f4 += f73835p.descent() - f73835p.ascent();
        }
        int[] iArr = new int[i5 * i6];
        createBitmap.getPixels(iArr, 0, i5, 0, 0, i5, i6);
        createBitmap.recycle();
        return iArr;
    }
}
