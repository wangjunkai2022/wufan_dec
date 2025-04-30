package com.join.mgps.activity.screenshot;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes3.dex */
public class ImageFactory {
    public void compressAndGenImage(Bitmap bitmap, String str, int i2) throws IOException {
        if (bitmap == null) {
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i4 = 100;
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        while (byteArrayOutputStream.toByteArray().length / 1024 > i2) {
            byteArrayOutputStream.reset();
            i4 -= 10;
            bitmap.compress(Bitmap.CompressFormat.JPEG, i4, byteArrayOutputStream);
        }
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        fileOutputStream.write(byteArrayOutputStream.toByteArray());
        fileOutputStream.flush();
        fileOutputStream.close();
    }

    public Bitmap getBitmap(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = 1;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        return BitmapFactory.decodeFile(str, options);
    }

    public Bitmap ratio(String str, float f4, float f5) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        int i2 = options.outWidth;
        int i4 = options.outHeight;
        int i5 = (i2 <= i4 || ((float) i2) <= f4) ? (i2 >= i4 || ((float) i4) <= f5) ? 1 : (int) (i4 / f5) : (int) (i2 / f4);
        options.inSampleSize = i5 > 0 ? i5 : 1;
        return BitmapFactory.decodeFile(str, options);
    }

    public void ratioAndGenThumb(Bitmap bitmap, String str, float f4, float f5) throws FileNotFoundException {
        storeImage(ratio(bitmap, f4, f5), str);
    }

    public void storeImage(Bitmap bitmap, String str) throws FileNotFoundException {
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(str));
    }

    public void ratioAndGenThumb(String str, String str2, float f4, float f5, boolean z3) throws FileNotFoundException {
        storeImage(ratio(str, f4, f5), str2);
        if (z3) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public void compressAndGenImage(String str, String str2, int i2, boolean z3) throws IOException {
        compressAndGenImage(getBitmap(str), str2, i2);
        if (z3) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap ratio(android.graphics.Bitmap r7, float r8, float r9) {
        /*
            r6 = this;
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r0.<init>()
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG
            r2 = 100
            r7.compress(r1, r2, r0)
            byte[] r1 = r0.toByteArray()
            int r1 = r1.length
            r2 = 1024(0x400, float:1.435E-42)
            int r1 = r1 / r2
            if (r1 <= r2) goto L20
            r0.reset()
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG
            r2 = 50
            r7.compress(r1, r2, r0)
        L20:
            java.io.ByteArrayInputStream r7 = new java.io.ByteArrayInputStream
            byte[] r1 = r0.toByteArray()
            r7.<init>(r1)
            android.graphics.BitmapFactory$Options r1 = new android.graphics.BitmapFactory$Options
            r1.<init>()
            r2 = 1
            r1.inJustDecodeBounds = r2
            android.graphics.Bitmap$Config r3 = android.graphics.Bitmap.Config.RGB_565
            r1.inPreferredConfig = r3
            r3 = 0
            android.graphics.BitmapFactory.decodeStream(r7, r3, r1)
            r7 = 0
            r1.inJustDecodeBounds = r7
            int r7 = r1.outWidth
            int r4 = r1.outHeight
            if (r7 <= r4) goto L4b
            float r5 = (float) r7
            int r5 = (r5 > r8 ? 1 : (r5 == r8 ? 0 : -1))
            if (r5 <= 0) goto L4b
            float r7 = (float) r7
            float r7 = r7 / r8
        L49:
            int r7 = (int) r7
            goto L56
        L4b:
            if (r7 >= r4) goto L55
            float r7 = (float) r4
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 <= 0) goto L55
            float r7 = (float) r4
            float r7 = r7 / r9
            goto L49
        L55:
            r7 = 1
        L56:
            if (r7 > 0) goto L59
            goto L5a
        L59:
            r2 = r7
        L5a:
            r1.inSampleSize = r2
            java.io.ByteArrayInputStream r7 = new java.io.ByteArrayInputStream
            byte[] r8 = r0.toByteArray()
            r7.<init>(r8)
            android.graphics.Bitmap r7 = android.graphics.BitmapFactory.decodeStream(r7, r3, r1)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.screenshot.ImageFactory.ratio(android.graphics.Bitmap, float, float):android.graphics.Bitmap");
    }

    public void compressAndGenImage(String str, String str2, int i2, boolean z3, Context context) throws IOException {
        if (str.startsWith("content://")) {
            compressAndGenImage(MediaStore.Images.Media.getBitmap(context.getContentResolver(), Uri.parse(str)), str2, i2);
        } else {
            compressAndGenImage(getBitmap(str), str2, i2);
        }
        if (z3) {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
    }
}
