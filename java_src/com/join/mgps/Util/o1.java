package com.join.mgps.Util;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: PictureUtil.java */
/* loaded from: classes3.dex */
public class o1 {
    public static String a(String str) {
        Bitmap j4 = j(str);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        j4.compress(Bitmap.CompressFormat.JPEG, 40, byteArrayOutputStream);
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
    }

    public static int b(BitmapFactory.Options options, int i2, int i4) {
        int i5 = options.outHeight;
        int i6 = options.outWidth;
        if (i5 > i4 || i6 > i2) {
            int round = Math.round(i5 / i4);
            int round2 = Math.round(i6 / i2);
            return round < round2 ? round : round2;
        }
        return 1;
    }

    private Bitmap c(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 100;
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        while (byteArrayOutputStream.toByteArray().length > 102400) {
            byteArrayOutputStream.reset();
            bitmap.compress(Bitmap.CompressFormat.JPEG, i2, byteArrayOutputStream);
            i2 -= 10;
        }
        return BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), null, null);
    }

    public static void d(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static Bitmap e(Drawable drawable) {
        Bitmap bitmap = null;
        try {
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                if (bitmapDrawable.getBitmap() != null) {
                    return bitmapDrawable.getBitmap();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (drawable.getIntrinsicWidth() > 0 && drawable.getIntrinsicHeight() > 0) {
            bitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmap;
        }
        bitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(bitmap);
        drawable.setBounds(0, 0, canvas2.getWidth(), canvas2.getHeight());
        drawable.draw(canvas2);
        return bitmap;
    }

    public static void f(Context context, String str) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(new File(str)));
        context.sendBroadcast(intent);
    }

    public static String g(InputStream inputStream) {
        String str;
        try {
            byte[] bArr = new byte[10];
            if (inputStream.read(bArr) == 10) {
                byte b4 = bArr[0];
                byte b5 = bArr[1];
                byte b6 = bArr[2];
                byte b7 = bArr[3];
                byte b8 = bArr[6];
                byte b9 = bArr[7];
                byte b10 = bArr[8];
                byte b11 = bArr[9];
                if (b4 == 71 && b5 == 73 && b6 == 70) {
                    str = "GIF";
                } else if (b5 == 80 && b6 == 78 && b7 == 71) {
                    str = "PNG";
                } else if (b8 != 74 || b9 != 70 || b10 != 73 || b11 != 70) {
                    return "";
                } else {
                    str = "JPEG";
                }
                return str;
            }
            return "";
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static Bitmap h(Bitmap bitmap) {
        return i(bitmap, 14.0f);
    }

    public static Bitmap i(Bitmap bitmap, float f4) {
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint();
            Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            RectF rectF = new RectF(new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()));
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(-16777216);
            canvas.drawRoundRect(rectF, f4, f4, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), rect, paint);
            return createBitmap;
        } catch (Exception unused) {
            return bitmap;
        }
    }

    public static Bitmap j(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = b(options, 480, 800);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap k(java.lang.String r6) {
        /*
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r0.<init>()
            r1 = 1
            r0.inJustDecodeBounds = r1
            android.graphics.BitmapFactory.decodeFile(r6, r0)
            r2 = 0
            r0.inJustDecodeBounds = r2
            int r2 = r0.outWidth
            int r3 = r0.outHeight
            if (r2 <= r3) goto L1f
            float r4 = (float) r2
            r5 = 1145044992(0x44400000, float:768.0)
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L1f
            float r2 = (float) r2
            float r2 = r2 / r5
        L1d:
            int r2 = (int) r2
            goto L2c
        L1f:
            if (r2 >= r3) goto L2b
            float r2 = (float) r3
            r4 = 1149239296(0x44800000, float:1024.0)
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 <= 0) goto L2b
            float r2 = (float) r3
            float r2 = r2 / r4
            goto L1d
        L2b:
            r2 = 1
        L2c:
            if (r2 > 0) goto L2f
            goto L30
        L2f:
            r1 = r2
        L30:
            r0.inSampleSize = r1
            android.graphics.Bitmap r6 = android.graphics.BitmapFactory.decodeFile(r6, r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.o1.k(java.lang.String):android.graphics.Bitmap");
    }

    public static Bitmap l(String str, int i2) throws IOException {
        FileInputStream fileInputStream;
        Throwable th;
        File file = new File(str);
        FileInputStream fileInputStream2 = new FileInputStream(file);
        Bitmap bitmap = null;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(fileInputStream2, null, options);
            fileInputStream2.close();
            fileInputStream = new FileInputStream(file);
            try {
                options.inSampleSize = i2;
                options.inJustDecodeBounds = false;
                bitmap = BitmapFactory.decodeStream(fileInputStream, null, options);
                fileInputStream.close();
            } catch (Exception unused) {
                fileInputStream2 = fileInputStream;
                fileInputStream2.close();
                return bitmap;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream.close();
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            fileInputStream = fileInputStream2;
            th = th3;
        }
        return bitmap;
    }

    public static Bitmap m(String str, int i2, int i4) throws IOException {
        File file = new File(str);
        FileInputStream fileInputStream = new FileInputStream(file);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(fileInputStream, null, options);
        fileInputStream.close();
        int i5 = 0;
        while (true) {
            if ((options.outWidth >> i5) <= i2 && (options.outHeight >> i5) <= i4) {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                options.inSampleSize = (int) Math.pow(2.0d, i5);
                options.inJustDecodeBounds = false;
                Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream2, null, options);
                fileInputStream2.close();
                return decodeStream;
            }
            i5++;
        }
    }

    public static void n(Bitmap bitmap, String str) {
        o(bitmap, str, 100);
    }

    public static void o(Bitmap bitmap, String str, int i2) {
        p(bitmap, str, Bitmap.CompressFormat.JPEG, i2);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0041 -> B:34:0x0050). Please submit an issue!!! */
    public static void p(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat, int i2) {
        FileOutputStream fileOutputStream;
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        if (bitmap != null) {
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    try {
                        fileOutputStream = new FileOutputStream(str);
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Exception e4) {
                    e = e4;
                }
            } catch (IOException e5) {
                e5.printStackTrace();
            }
            try {
                bitmap.compress(compressFormat, i2, fileOutputStream);
                fileOutputStream.close();
            } catch (Exception e6) {
                e = e6;
                fileOutputStream2 = fileOutputStream;
                e.printStackTrace();
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                }
                throw th;
            }
        }
    }

    public static void q(Bitmap bitmap, String str) {
        p(bitmap, str, Bitmap.CompressFormat.PNG, 100);
    }

    public static void r(String str, String str2) {
        Bitmap l4;
        FileOutputStream fileOutputStream;
        if (str != null) {
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    try {
                        l4 = l(str, 1);
                        fileOutputStream = new FileOutputStream(str2);
                    } catch (Exception e4) {
                        e = e4;
                    }
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    l4.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                    fileOutputStream.close();
                } catch (Exception e5) {
                    e = e5;
                    fileOutputStream2 = fileOutputStream;
                    e.printStackTrace();
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e7) {
                e7.printStackTrace();
            }
        }
    }
}
