package org.cocos2dx.lib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.TextUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.LinkedList;
/* loaded from: classes5.dex */
public class Cocos2dxBitmap {
    private static final int HORIZONTALALIGN_CENTER = 3;
    private static final int HORIZONTALALIGN_LEFT = 1;
    private static final int HORIZONTALALIGN_RIGHT = 2;
    private static final int VERTICALALIGN_BOTTOM = 2;
    private static final int VERTICALALIGN_CENTER = 3;
    private static final int VERTICALALIGN_TOP = 1;
    private static Context sContext;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class TextProperty {
        private final int mHeightPerLine;
        private final String[] mLines;
        private final int mMaxWidth;
        private final int mTotalHeight;

        TextProperty(int i2, int i4, String[] strArr) {
            this.mMaxWidth = i2;
            this.mHeightPerLine = i4;
            this.mTotalHeight = i4 * strArr.length;
            this.mLines = strArr;
        }
    }

    private static TextProperty computeTextProperty(String str, int i2, int i4, Paint paint) {
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int ceil = (int) Math.ceil(fontMetricsInt.bottom - fontMetricsInt.top);
        String[] splitString = splitString(str, i2, i4, paint);
        if (i2 == 0) {
            int i5 = 0;
            for (String str2 : splitString) {
                int ceil2 = (int) Math.ceil(paint.measureText(str2, 0, str2.length()));
                if (ceil2 > i5) {
                    i5 = ceil2;
                }
            }
            i2 = i5;
        }
        return new TextProperty(i2, ceil, splitString);
    }

    private static int computeX(String str, int i2, int i4) {
        if (i4 != 2) {
            if (i4 != 3) {
                return 0;
            }
            return i2 / 2;
        }
        return i2;
    }

    private static int computeY(Paint.FontMetricsInt fontMetricsInt, int i2, int i4, int i5) {
        int i6;
        int i7;
        int i8 = fontMetricsInt.top;
        int i9 = -i8;
        if (i2 > i4) {
            if (i5 != 1) {
                if (i5 == 2) {
                    i6 = -i8;
                    i7 = i2 - i4;
                } else if (i5 != 3) {
                    return i9;
                } else {
                    i6 = -i8;
                    i7 = (i2 - i4) / 2;
                }
                return i6 + i7;
            }
            return -i8;
        }
        return i9;
    }

    public static void createTextBitmap(String str, String str2, int i2, int i4, int i5, int i6) {
        createTextBitmapShadowStroke(str.getBytes(), str2, i2, 255, 255, 255, 255, i4, i5, i6, false, 0.0f, 0.0f, 0.0f, 0.0f, false, 255, 255, 255, 255, 0.0f);
    }

    public static boolean createTextBitmapShadowStroke(byte[] bArr, String str, int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10, boolean z3, float f4, float f5, float f6, float f7, boolean z4, int i11, int i12, int i13, int i14, float f8) {
        int i15 = i8 & 15;
        int i16 = (i8 >> 4) & 15;
        String refactorString = refactorString((bArr == null || bArr.length == 0) ? "" : new String(bArr));
        Paint newPaint = newPaint(str, i2, i15);
        int i17 = 0;
        if (i9 == 0 || ((int) Math.ceil(newPaint.measureText(refactorString, 0, 1))) <= i9) {
            newPaint.setARGB(i7, i4, i5, i6);
            TextProperty computeTextProperty = computeTextProperty(refactorString, i9, i10, newPaint);
            int i18 = i10 == 0 ? computeTextProperty.mTotalHeight : i10;
            if (computeTextProperty.mMaxWidth == 0 || i18 == 0) {
                return false;
            }
            int i19 = (int) 0.0f;
            Bitmap createBitmap = Bitmap.createBitmap(computeTextProperty.mMaxWidth + i19, i18 + i19, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Paint.FontMetricsInt fontMetricsInt = newPaint.getFontMetricsInt();
            if (!z4) {
                int computeY = computeY(fontMetricsInt, i10, computeTextProperty.mTotalHeight, i16);
                String[] strArr = computeTextProperty.mLines;
                int length = strArr.length;
                while (i17 < length) {
                    String str2 = strArr[i17];
                    canvas.drawText(str2, computeX(str2, computeTextProperty.mMaxWidth, i15) + 0.0f, computeY + 0.0f, newPaint);
                    computeY += computeTextProperty.mHeightPerLine;
                    i17++;
                }
            } else {
                Paint newPaint2 = newPaint(str, i2, i15);
                newPaint2.setStyle(Paint.Style.STROKE);
                newPaint2.setStrokeWidth(f8);
                newPaint2.setARGB(i14, i11, i12, i13);
                int computeY2 = computeY(fontMetricsInt, i10, computeTextProperty.mTotalHeight, i16);
                String[] strArr2 = computeTextProperty.mLines;
                int length2 = strArr2.length;
                while (i17 < length2) {
                    String str3 = strArr2[i17];
                    float computeX = computeX(str3, computeTextProperty.mMaxWidth, i15) + 0.0f;
                    float f9 = computeY2 + 0.0f;
                    canvas.drawText(str3, computeX, f9, newPaint2);
                    canvas.drawText(str3, computeX, f9, newPaint);
                    computeY2 += computeTextProperty.mHeightPerLine;
                    i17++;
                }
            }
            initNativeObject(createBitmap);
            return true;
        }
        return false;
    }

    private static LinkedList<String> divideStringWithMaxWidth(String str, int i2, Paint paint) {
        int length = str.length();
        LinkedList<String> linkedList = new LinkedList<>();
        int i4 = 1;
        int i5 = 0;
        while (i4 <= length) {
            int ceil = (int) Math.ceil(paint.measureText(str, i5, i4));
            if (ceil >= i2) {
                int lastIndexOf = str.substring(0, i4).lastIndexOf(" ");
                if (lastIndexOf != -1 && lastIndexOf > i5) {
                    linkedList.add(str.substring(i5, lastIndexOf));
                    i4 = lastIndexOf + 1;
                } else if (ceil > i2 && i4 != i5 + 1) {
                    linkedList.add(str.substring(i5, i4 - 1));
                    i4--;
                } else {
                    linkedList.add(str.substring(i5, i4));
                }
                while (i4 < length && str.charAt(i4) == ' ') {
                    i4++;
                }
                i5 = i4;
            }
            i4++;
        }
        if (i5 < length) {
            linkedList.add(str.substring(i5));
        }
        return linkedList;
    }

    private static int getFontSizeAccordingHeight(int i2) {
        Paint paint = new Paint();
        Rect rect = new Rect();
        paint.setTypeface(Typeface.DEFAULT);
        boolean z3 = false;
        int i4 = 1;
        while (!z3) {
            paint.setTextSize(i4);
            paint.getTextBounds("SghMNy", 0, 6, rect);
            i4++;
            if (i2 - rect.height() <= 2) {
                z3 = true;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("incr size:");
            sb.append(i4);
        }
        return i4;
    }

    private static byte[] getPixels(Bitmap bitmap) {
        if (bitmap != null) {
            byte[] bArr = new byte[bitmap.getWidth() * bitmap.getHeight() * 4];
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.order(ByteOrder.nativeOrder());
            bitmap.copyPixelsToBuffer(wrap);
            return bArr;
        }
        return null;
    }

    private static String getStringWithEllipsis(String str, float f4, float f5) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        TextPaint textPaint = new TextPaint();
        textPaint.setTypeface(Typeface.DEFAULT);
        textPaint.setTextSize(f5);
        return TextUtils.ellipsize(str, textPaint, f4, TextUtils.TruncateAt.END).toString();
    }

    private static void initNativeObject(Bitmap bitmap) {
        byte[] pixels = getPixels(bitmap);
        if (pixels == null) {
            return;
        }
        nativeInitBitmapDC(bitmap.getWidth(), bitmap.getHeight(), pixels);
    }

    private static native void nativeInitBitmapDC(int i2, int i4, byte[] bArr);

    private static Paint newPaint(String str, int i2, int i4) {
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setTextSize(i2);
        paint.setAntiAlias(true);
        if (str.endsWith(".ttf")) {
            try {
                paint.setTypeface(Cocos2dxTypefaces.get(sContext, str));
            } catch (Exception unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("error to create ttf type face: ");
                sb.append(str);
                paint.setTypeface(Typeface.create(str, 0));
            }
        } else {
            paint.setTypeface(Typeface.create(str, 0));
        }
        if (i4 == 2) {
            paint.setTextAlign(Paint.Align.RIGHT);
        } else if (i4 != 3) {
            paint.setTextAlign(Paint.Align.LEFT);
        } else {
            paint.setTextAlign(Paint.Align.CENTER);
        }
        return paint;
    }

    private static String refactorString(String str) {
        if (str.compareTo("") == 0) {
            return " ";
        }
        StringBuilder sb = new StringBuilder(str);
        int i2 = 0;
        for (int indexOf = sb.indexOf("\n"); indexOf != -1; indexOf = sb.indexOf("\n", i2)) {
            if (indexOf == 0 || sb.charAt(indexOf - 1) == '\n') {
                sb.insert(i2, " ");
                i2 = indexOf + 2;
            } else {
                i2 = indexOf + 1;
            }
            if (i2 > sb.length() || indexOf == sb.length()) {
                break;
            }
        }
        return sb.toString();
    }

    public static void setContext(Context context) {
        sContext = context;
    }

    private static String[] splitString(String str, int i2, int i4, Paint paint) {
        String[] split = str.split("\\n");
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int ceil = i4 / ((int) Math.ceil(fontMetricsInt.bottom - fontMetricsInt.top));
        int i5 = 0;
        if (i2 != 0) {
            LinkedList linkedList = new LinkedList();
            int length = split.length;
            while (i5 < length) {
                String str2 = split[i5];
                if (((int) Math.ceil(paint.measureText(str2))) > i2) {
                    linkedList.addAll(divideStringWithMaxWidth(str2, i2, paint));
                } else {
                    linkedList.add(str2);
                }
                if (ceil > 0 && linkedList.size() >= ceil) {
                    break;
                }
                i5++;
            }
            if (ceil > 0 && linkedList.size() > ceil) {
                while (linkedList.size() > ceil) {
                    linkedList.removeLast();
                }
            }
            String[] strArr = new String[linkedList.size()];
            linkedList.toArray(strArr);
            return strArr;
        } else if (i4 == 0 || split.length <= ceil) {
            return split;
        } else {
            LinkedList linkedList2 = new LinkedList();
            while (i5 < ceil) {
                linkedList2.add(split[i5]);
                i5++;
            }
            String[] strArr2 = new String[linkedList2.size()];
            linkedList2.toArray(strArr2);
            return strArr2;
        }
    }
}
