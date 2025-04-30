package com.mob.tools.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.opengl.GLES10;
import android.text.TextUtils;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.g0;
import com.mob.commons.i;
import com.mob.tools.MobLog;
import com.mob.tools.network.HttpConnection;
import com.mob.tools.network.HttpResponseCallback;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class BitmapHelper implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private static int f53924a;

    /* renamed from: b  reason: collision with root package name */
    private static int f53925b;

    static {
        int[] iArr = new int[1];
        GLES10.glGetIntegerv(3379, iArr, 0);
        int max = Math.max(iArr[0], 2048);
        f53924a = max;
        f53925b = max;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(HttpConnection httpConnection, String str) throws Throwable {
        String str2;
        List<String> list;
        int lastIndexOf;
        List<String> list2;
        String[] split;
        Map<String, List<String>> headerFields = httpConnection.getHeaderFields();
        if (headerFields == null || (list2 = headerFields.get("Content-Disposition")) == null || list2.size() <= 0) {
            str2 = null;
        } else {
            str2 = null;
            for (String str3 : list2.get(0).split(";")) {
                if (str3.trim().startsWith("filename")) {
                    String[] split2 = str3.split(SimpleComparison.EQUAL_TO_OPERATION);
                    if (split2.length >= 2) {
                        str2 = split2[1];
                        if (!TextUtils.isEmpty(str2) && str2.startsWith(m.a.f72569g) && str2.endsWith(m.a.f72569g)) {
                            str2 = str2.substring(1, str2.length() - 1);
                        }
                    }
                }
            }
        }
        if (str2 == null) {
            String MD5 = Data.MD5(str);
            if (headerFields == null || (list = headerFields.get("Content-Type")) == null || list.size() <= 0) {
                return MD5;
            }
            String str4 = list.get(0);
            String trim = str4 == null ? "" : str4.trim();
            if (trim.startsWith("image/")) {
                String substring = trim.substring(6);
                StringBuilder sb = new StringBuilder();
                sb.append(MD5);
                sb.append(g0.f27568a);
                if ("jpeg".equals(substring)) {
                    substring = "jpg";
                }
                sb.append(substring);
                return sb.toString();
            }
            int lastIndexOf2 = str.lastIndexOf(47);
            String substring2 = lastIndexOf2 > 0 ? str.substring(lastIndexOf2 + 1) : null;
            if (substring2 == null || substring2.length() <= 0 || (lastIndexOf = substring2.lastIndexOf(46)) <= 0 || substring2.length() - lastIndexOf >= 10) {
                return MD5;
            }
            return MD5 + substring2.substring(lastIndexOf);
        }
        return str2;
    }

    public static Bitmap blur(Bitmap bitmap, int i2, int i4) {
        float f4 = i4;
        Bitmap createBitmap = Bitmap.createBitmap((int) ((bitmap.getWidth() / f4) + 0.5f), (int) ((bitmap.getHeight() / f4) + 0.5f), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        float f5 = 1.0f / f4;
        canvas.scale(f5, f5);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        a(createBitmap, (int) ((i2 / f4) + 0.5f), true);
        return createBitmap;
    }

    public static Bitmap captureView(View view, int i2, int i4) throws Throwable {
        Bitmap createBitmap = Bitmap.createBitmap(i2, i4, Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    public static Bitmap compressByQuality(Bitmap bitmap, int i2) {
        return compressByQuality(bitmap, i2, false);
    }

    public static Bitmap cropBitmap(Bitmap bitmap, int i2, int i4, int i5, int i6) throws Throwable {
        int width = (bitmap.getWidth() - i2) - i5;
        int height = (bitmap.getHeight() - i4) - i6;
        if (width == bitmap.getWidth() && height == bitmap.getHeight()) {
            return bitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        new Canvas(createBitmap).drawBitmap(bitmap, -i2, -i4, new Paint());
        return createBitmap;
    }

    public static String downloadBitmap(Context context, final String str) throws Throwable {
        final String cachePath = ResHelper.getCachePath(context, "images");
        File file = new File(cachePath, Data.MD5(str));
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        final HashMap hashMap = new HashMap();
        new NetworkHelper().rawGet(str, new HttpResponseCallback() { // from class: com.mob.tools.utils.BitmapHelper.1
            @Override // com.mob.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                int responseCode = httpConnection.getResponseCode();
                if (responseCode == 200) {
                    String b4 = BitmapHelper.b(httpConnection, str);
                    File file2 = new File(cachePath, b4);
                    if (!file2.getParentFile().exists()) {
                        file2.getParentFile().mkdirs();
                    }
                    if (file2.exists()) {
                        file2.delete();
                    }
                    try {
                        Bitmap bitmap = BitmapHelper.getBitmap(new FilterInputStream(httpConnection.getInputStream()) { // from class: com.mob.tools.utils.BitmapHelper.1.1
                            @Override // java.io.FilterInputStream, java.io.InputStream
                            public long skip(long j4) throws IOException {
                                long j5 = 0;
                                while (j5 < j4) {
                                    long skip = ((FilterInputStream) this).in.skip(j4 - j5);
                                    if (skip == 0) {
                                        break;
                                    }
                                    j5 += skip;
                                }
                                return j5;
                            }
                        }, 1);
                        if (bitmap == null || bitmap.isRecycled()) {
                            return;
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        if (!b4.toLowerCase().endsWith(".gif") && !b4.toLowerCase().endsWith(".png")) {
                            bitmap.compress(Bitmap.CompressFormat.JPEG, 80, fileOutputStream);
                        } else {
                            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                        }
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        hashMap.put("bitmap", file2.getAbsolutePath());
                        return;
                    } catch (Throwable th) {
                        if (file2.exists()) {
                            file2.delete();
                        }
                        throw th;
                    }
                }
                StringBuilder sb = new StringBuilder();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpConnection.getErrorStream(), Charset.forName("utf-8")));
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    if (sb.length() > 0) {
                        sb.append('\n');
                    }
                    sb.append(readLine);
                }
                bufferedReader.close();
                HashMap hashMap2 = new HashMap();
                hashMap2.put(i.a("005k'fjfjgefj"), sb.toString());
                hashMap2.put(i.a("006,hi9fWfhWf)fehi"), Integer.valueOf(responseCode));
                throw new Throwable(HashonHelper.fromHashMap(hashMap2));
            }
        }, (NetworkHelper.NetworkTimeOut) null);
        return (String) hashMap.get("bitmap");
    }

    public static int[] fixRect(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[2];
        if (iArr[0] / iArr[1] > iArr2[0] / iArr2[1]) {
            iArr3[0] = iArr2[0];
            iArr3[1] = (int) (((iArr[1] * iArr2[0]) / iArr[0]) + 0.5f);
        } else {
            iArr3[1] = iArr2[1];
            iArr3[0] = (int) (((iArr[0] * iArr2[1]) / iArr[1]) + 0.5f);
        }
        return iArr3;
    }

    public static int[] fixRect_2(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[2];
        if (iArr[0] / iArr[1] > iArr2[0] / iArr2[1]) {
            iArr3[1] = iArr2[1];
            iArr3[0] = (int) (((iArr[0] * iArr2[1]) / iArr[1]) + 0.5f);
        } else {
            iArr3[0] = iArr2[0];
            iArr3[1] = (int) (((iArr[1] * iArr2[0]) / iArr[0]) + 0.5f);
        }
        return iArr3;
    }

    public static Bitmap getBitmap(String str, int i2) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return getBitmap(new File(str), i2);
    }

    public static Bitmap getBitmapByCompressQuality(String str, int i2, int i4, int i5, long j4) throws Throwable {
        Bitmap bitmapByCompressSize = getBitmapByCompressSize(str, i2, i4);
        i5 = (i5 < 10 || i5 > 100) ? 100 : 100;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Bitmap.CompressFormat bmpFormat = getBmpFormat(str);
        bitmapByCompressSize.compress(bmpFormat, i5, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (j4 < 10240) {
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
            try {
                byteArrayOutputStream.close();
            } catch (Throwable unused) {
            }
            return decodeByteArray;
        }
        while (byteArray.length > j4 && i5 >= 11) {
            byteArrayOutputStream.reset();
            i5 -= 6;
            bitmapByCompressSize.compress(bmpFormat, i5, byteArrayOutputStream);
            byteArray = byteArrayOutputStream.toByteArray();
        }
        if (i5 != 100) {
            bitmapByCompressSize = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
        }
        try {
            byteArrayOutputStream.close();
        } catch (Throwable unused2) {
        }
        return bitmapByCompressSize;
    }

    public static Bitmap getBitmapByCompressSize(String str, int i2, int i4) throws Throwable {
        int i5;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int i6 = options.outWidth;
        int i7 = options.outHeight;
        if (i2 <= 1 || i4 <= 1) {
            i5 = 1;
        } else {
            float f4 = 1.0f;
            float min = (Math.min(i6, i7) * 1.0f) / Math.min(i2, i4);
            float max = (Math.max(i6, i7) * 1.0f) / Math.max(i2, i4);
            float f5 = i6 / i7;
            if (f5 <= 2.0f && f5 >= 0.5d) {
                float min2 = Math.min(min, max);
                while (true) {
                    float f6 = f4 * 2.0f;
                    if (f6 > min2) {
                        break;
                    }
                    f4 = f6;
                }
            } else {
                while (true) {
                    float f7 = f4 * 2.0f;
                    if (f7 > min) {
                        break;
                    }
                    f4 = f7;
                }
            }
            i5 = (int) f4;
        }
        int i8 = i5 >= 1 ? i5 : 1;
        while (true) {
            if (i6 / i8 <= f53924a && i7 / i8 <= f53925b) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inPreferredConfig = Bitmap.Config.RGB_565;
                options2.inSampleSize = i8;
                return BitmapFactory.decodeFile(str, options2);
            }
            i8++;
        }
    }

    public static Bitmap.CompressFormat getBmpFormat(byte[] bArr) {
        String a4 = a(bArr);
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
        return a4 != null ? (a4.endsWith("png") || a4.endsWith("gif")) ? Bitmap.CompressFormat.PNG : compressFormat : compressFormat;
    }

    public static String getMime(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            byte[] bArr = new byte[8];
            fileInputStream.read(bArr);
            fileInputStream.close();
            return a(bArr);
        } catch (Exception e4) {
            MobLog.getInstance().w(e4);
            return "";
        }
    }

    public static boolean isBlackBitmap(Bitmap bitmap) throws Throwable {
        if (bitmap == null || bitmap.isRecycled()) {
            return true;
        }
        int width = bitmap.getWidth() * bitmap.getHeight();
        int[] iArr = new int[width];
        bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        boolean z3 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= width) {
                break;
            } else if ((iArr[i2] & 16777215) != 0) {
                z3 = true;
                break;
            } else {
                i2++;
            }
        }
        return !z3;
    }

    public static int mixAlpha(int i2, int i4) {
        int i5 = i2 >>> 24;
        int i6 = 255 - i5;
        return ((((((i2 & 16711680) >>> 16) * i5) + (((16711680 & i4) >>> 16) * i6)) / 255) << 16) | (-16777216) | ((((((i2 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8) * i5) + (((65280 & i4) >>> 8) * i6)) / 255) << 8) | (((i5 * (i2 & 255)) + (i6 * (i4 & 255))) / 255);
    }

    public static Bitmap roundBitmap(Bitmap bitmap, int i2, int i4, float f4, float f5, float f6, float f7) throws Throwable {
        Bitmap createBitmap;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Rect rect = new Rect(0, 0, width, height);
        if (width == i2 && height == i4) {
            createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        } else {
            createBitmap = Bitmap.createBitmap(i2, i4, Bitmap.Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect2 = new Rect(0, 0, i2, i4);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        float[] fArr = {f4, f4, f5, f5, f6, f6, f7, f7};
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, new RectF(0.0f, 0.0f, 0.0f, 0.0f), fArr));
        shapeDrawable.setBounds(rect2);
        shapeDrawable.draw(canvas);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect2, paint);
        return createBitmap;
    }

    public static boolean save(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat) {
        return save(bitmap, FileUtils.getFileByPath(str), compressFormat, false);
    }

    public static String saveBitmap(Context context, Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i2) throws Throwable {
        String cachePath = ResHelper.getCachePath(context, "images");
        String str = compressFormat == Bitmap.CompressFormat.PNG ? ".png" : ".jpg";
        File file = new File(cachePath, String.valueOf(System.currentTimeMillis()) + str);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        bitmap.compress(compressFormat, i2, fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
        return file.getAbsolutePath();
    }

    public static String saveBitmapByCompress(String str, int i2, int i4, int i5) throws Throwable {
        Bitmap bitmapByCompressSize = getBitmapByCompressSize(str, i2, i4);
        if (i5 > 100) {
            i5 = 100;
        } else if (i5 < 10) {
            i5 = 10;
        }
        Bitmap.CompressFormat bmpFormat = getBmpFormat(str);
        String str2 = bmpFormat == Bitmap.CompressFormat.PNG ? ".png" : ".jpg";
        String parent = new File(str).getParent();
        File file = new File(parent, String.valueOf(System.currentTimeMillis()) + str2);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        bitmapByCompressSize.compress(bmpFormat, i5, fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
        return file.getAbsolutePath();
    }

    public static String saveViewToImage(View view) throws Throwable {
        if (view == null) {
            return null;
        }
        int width = view.getWidth();
        int height = view.getHeight();
        if (width <= 0 || height <= 0) {
            return null;
        }
        return saveViewToImage(view, width, height);
    }

    public static Bitmap scaleBitmapByHeight(Context context, int i2, int i4) throws Throwable {
        Bitmap decodeResource = BitmapFactory.decodeResource(context.getResources(), i2);
        boolean z3 = i4 != decodeResource.getHeight();
        Bitmap scaleBitmapByHeight = scaleBitmapByHeight(decodeResource, i4);
        if (z3) {
            decodeResource.recycle();
        }
        return scaleBitmapByHeight;
    }

    private static Bitmap a(Bitmap bitmap, int i2, boolean z3) {
        int[] iArr;
        int i4 = i2;
        Bitmap copy = z3 ? bitmap : bitmap.copy(bitmap.getConfig(), true);
        if (i4 < 1) {
            return null;
        }
        int width = copy.getWidth();
        int height = copy.getHeight();
        int i5 = width * height;
        int[] iArr2 = new int[i5];
        copy.getPixels(iArr2, 0, width, 0, 0, width, height);
        int i6 = width - 1;
        int i7 = height - 1;
        int i8 = i4 + i4 + 1;
        int[] iArr3 = new int[i5];
        int[] iArr4 = new int[i5];
        int[] iArr5 = new int[i5];
        int[] iArr6 = new int[Math.max(width, height)];
        int i9 = (i8 + 1) >> 1;
        int i10 = i9 * i9;
        int i11 = i10 * 256;
        int[] iArr7 = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            iArr7[i12] = i12 / i10;
        }
        int[][] iArr8 = (int[][]) Array.newInstance(int.class, i8, 3);
        int i13 = i4 + 1;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i14 < height) {
            Bitmap bitmap2 = copy;
            int i17 = height;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            int i25 = 0;
            int i26 = -i4;
            int i27 = 0;
            while (i26 <= i4) {
                int i28 = i7;
                int[] iArr9 = iArr6;
                int i29 = iArr2[i15 + Math.min(i6, Math.max(i26, 0))];
                int[] iArr10 = iArr8[i26 + i4];
                iArr10[0] = (i29 & 16711680) >> 16;
                iArr10[1] = (i29 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr10[2] = i29 & 255;
                int abs = i13 - Math.abs(i26);
                i27 += iArr10[0] * abs;
                i18 += iArr10[1] * abs;
                i19 += iArr10[2] * abs;
                if (i26 > 0) {
                    i23 += iArr10[0];
                    i24 += iArr10[1];
                    i25 += iArr10[2];
                } else {
                    i20 += iArr10[0];
                    i21 += iArr10[1];
                    i22 += iArr10[2];
                }
                i26++;
                i7 = i28;
                iArr6 = iArr9;
            }
            int i30 = i7;
            int[] iArr11 = iArr6;
            int i31 = i4;
            int i32 = i27;
            int i33 = 0;
            while (i33 < width) {
                iArr3[i15] = iArr7[i32];
                iArr4[i15] = iArr7[i18];
                iArr5[i15] = iArr7[i19];
                int i34 = i32 - i20;
                int i35 = i18 - i21;
                int i36 = i19 - i22;
                int[] iArr12 = iArr8[((i31 - i4) + i8) % i8];
                int i37 = i20 - iArr12[0];
                int i38 = i21 - iArr12[1];
                int i39 = i22 - iArr12[2];
                if (i14 == 0) {
                    iArr = iArr7;
                    iArr11[i33] = Math.min(i33 + i4 + 1, i6);
                } else {
                    iArr = iArr7;
                }
                int i40 = iArr2[i16 + iArr11[i33]];
                iArr12[0] = (i40 & 16711680) >> 16;
                iArr12[1] = (i40 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr12[2] = i40 & 255;
                int i41 = i23 + iArr12[0];
                int i42 = i24 + iArr12[1];
                int i43 = i25 + iArr12[2];
                i32 = i34 + i41;
                i18 = i35 + i42;
                i19 = i36 + i43;
                i31 = (i31 + 1) % i8;
                int[] iArr13 = iArr8[i31 % i8];
                i20 = i37 + iArr13[0];
                i21 = i38 + iArr13[1];
                i22 = i39 + iArr13[2];
                i23 = i41 - iArr13[0];
                i24 = i42 - iArr13[1];
                i25 = i43 - iArr13[2];
                i15++;
                i33++;
                iArr7 = iArr;
            }
            i16 += width;
            i14++;
            copy = bitmap2;
            height = i17;
            i7 = i30;
            iArr6 = iArr11;
        }
        Bitmap bitmap3 = copy;
        int i44 = i7;
        int[] iArr14 = iArr6;
        int i45 = height;
        int[] iArr15 = iArr7;
        int i46 = 0;
        while (i46 < width) {
            int i47 = -i4;
            int i48 = i8;
            int[] iArr16 = iArr2;
            int i49 = 0;
            int i50 = 0;
            int i51 = 0;
            int i52 = 0;
            int i53 = 0;
            int i54 = 0;
            int i55 = 0;
            int i56 = i47;
            int i57 = i47 * width;
            int i58 = 0;
            int i59 = 0;
            while (i56 <= i4) {
                int i60 = width;
                int max = Math.max(0, i57) + i46;
                int[] iArr17 = iArr8[i56 + i4];
                iArr17[0] = iArr3[max];
                iArr17[1] = iArr4[max];
                iArr17[2] = iArr5[max];
                int abs2 = i13 - Math.abs(i56);
                i58 += iArr3[max] * abs2;
                i59 += iArr4[max] * abs2;
                i49 += iArr5[max] * abs2;
                if (i56 > 0) {
                    i53 += iArr17[0];
                    i54 += iArr17[1];
                    i55 += iArr17[2];
                } else {
                    i50 += iArr17[0];
                    i51 += iArr17[1];
                    i52 += iArr17[2];
                }
                int i61 = i44;
                if (i56 < i61) {
                    i57 += i60;
                }
                i56++;
                i44 = i61;
                width = i60;
            }
            int i62 = width;
            int i63 = i44;
            int i64 = i4;
            int i65 = i46;
            int i66 = i59;
            int i67 = i45;
            int i68 = i58;
            int i69 = 0;
            while (i69 < i67) {
                iArr16[i65] = (iArr16[i65] & (-16777216)) | (iArr15[i68] << 16) | (iArr15[i66] << 8) | iArr15[i49];
                int i70 = i68 - i50;
                int i71 = i66 - i51;
                int i72 = i49 - i52;
                int[] iArr18 = iArr8[((i64 - i4) + i48) % i48];
                int i73 = i50 - iArr18[0];
                int i74 = i51 - iArr18[1];
                int i75 = i52 - iArr18[2];
                if (i46 == 0) {
                    iArr14[i69] = Math.min(i69 + i13, i63) * i62;
                }
                int i76 = iArr14[i69] + i46;
                iArr18[0] = iArr3[i76];
                iArr18[1] = iArr4[i76];
                iArr18[2] = iArr5[i76];
                int i77 = i53 + iArr18[0];
                int i78 = i54 + iArr18[1];
                int i79 = i55 + iArr18[2];
                i68 = i70 + i77;
                i66 = i71 + i78;
                i49 = i72 + i79;
                i64 = (i64 + 1) % i48;
                int[] iArr19 = iArr8[i64];
                i50 = i73 + iArr19[0];
                i51 = i74 + iArr19[1];
                i52 = i75 + iArr19[2];
                i53 = i77 - iArr19[0];
                i54 = i78 - iArr19[1];
                i55 = i79 - iArr19[2];
                i65 += i62;
                i69++;
                i4 = i2;
            }
            i46++;
            i4 = i2;
            i44 = i63;
            i45 = i67;
            i8 = i48;
            iArr2 = iArr16;
            width = i62;
        }
        int i80 = width;
        bitmap3.setPixels(iArr2, 0, i80, 0, 0, i80, i45);
        return bitmap3;
    }

    public static Bitmap compressByQuality(Bitmap bitmap, int i2, boolean z3) {
        if (a(bitmap)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, i2, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (z3 && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
    }

    public static boolean save(Bitmap bitmap, File file, Bitmap.CompressFormat compressFormat, boolean z3) {
        boolean z4;
        if (a(bitmap) || !FileUtils.createFileByDeleteOldFile(file)) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file));
            try {
                z4 = bitmap.compress(compressFormat, 100, bufferedOutputStream2);
                if (z3) {
                    try {
                        if (!bitmap.isRecycled()) {
                            bitmap.recycle();
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedOutputStream = bufferedOutputStream2;
                        try {
                            MobLog.getInstance().d(th);
                            FileUtils.closeIO(bufferedOutputStream);
                            return z4;
                        } catch (Throwable th2) {
                            FileUtils.closeIO(bufferedOutputStream);
                            throw th2;
                        }
                    }
                }
                FileUtils.closeIO(bufferedOutputStream2);
            } catch (Throwable th3) {
                th = th3;
                bufferedOutputStream = bufferedOutputStream2;
                z4 = false;
                MobLog.getInstance().d(th);
                FileUtils.closeIO(bufferedOutputStream);
                return z4;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        return z4;
    }

    public static Bitmap getBitmap(File file, int i2) throws Throwable {
        if (file == null || !file.exists()) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        Bitmap bitmap = getBitmap(fileInputStream, i2);
        fileInputStream.close();
        return bitmap;
    }

    public static String saveViewToImage(View view, int i2, int i4) throws Throwable {
        Bitmap captureView = captureView(view, i2, i4);
        if (captureView == null || captureView.isRecycled()) {
            return null;
        }
        String cachePath = ResHelper.getCachePath(view.getContext(), "screenshot");
        File file = new File(cachePath, String.valueOf(System.currentTimeMillis()) + ".jpg");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        captureView.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
        return file.getAbsolutePath();
    }

    public static Bitmap.CompressFormat getBmpFormat(String str) {
        String lowerCase = str.toLowerCase();
        if (!lowerCase.endsWith("png") && !lowerCase.endsWith("gif")) {
            if (!lowerCase.endsWith("jpg") && !lowerCase.endsWith("jpeg") && !lowerCase.endsWith("bmp") && !lowerCase.endsWith("tif")) {
                String mime = getMime(str);
                if (!mime.endsWith("png") && !mime.endsWith("gif")) {
                    return Bitmap.CompressFormat.JPEG;
                }
                return Bitmap.CompressFormat.PNG;
            }
            return Bitmap.CompressFormat.JPEG;
        }
        return Bitmap.CompressFormat.PNG;
    }

    public static Bitmap scaleBitmapByHeight(Bitmap bitmap, int i2) throws Throwable {
        return Bitmap.createScaledBitmap(bitmap, (bitmap.getWidth() * i2) / bitmap.getHeight(), i2, true);
    }

    public static Bitmap getBitmap(InputStream inputStream, int i2) {
        if (inputStream == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = i2;
        return BitmapFactory.decodeStream(inputStream, null, options);
    }

    public static Bitmap compressByQuality(Bitmap bitmap, long j4) {
        return compressByQuality(bitmap, j4, false);
    }

    public static String saveBitmap(Context context, Bitmap bitmap) throws Throwable {
        return saveBitmap(context, bitmap, Bitmap.CompressFormat.JPEG, 80);
    }

    public static Bitmap compressByQuality(Bitmap bitmap, long j4, boolean z3) {
        byte[] byteArray;
        if (a(bitmap) || j4 <= 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 100;
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        if (byteArrayOutputStream.size() <= j4) {
            byteArray = byteArrayOutputStream.toByteArray();
        } else {
            byteArrayOutputStream.reset();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 0, byteArrayOutputStream);
            if (byteArrayOutputStream.size() >= j4) {
                byteArray = byteArrayOutputStream.toByteArray();
            } else {
                int i4 = 0;
                int i5 = 0;
                while (i4 < i2) {
                    i5 = (i4 + i2) / 2;
                    byteArrayOutputStream.reset();
                    bitmap.compress(Bitmap.CompressFormat.JPEG, i5, byteArrayOutputStream);
                    long size = byteArrayOutputStream.size();
                    if (size == j4) {
                        break;
                    } else if (size > j4) {
                        i2 = i5 - 1;
                    } else {
                        i4 = i5 + 1;
                    }
                }
                if (i2 == i5 - 1) {
                    byteArrayOutputStream.reset();
                    bitmap.compress(Bitmap.CompressFormat.JPEG, i4, byteArrayOutputStream);
                }
                byteArray = byteArrayOutputStream.toByteArray();
            }
        }
        if (z3 && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
    }

    public static Bitmap getBitmap(String str) throws Throwable {
        return getBitmap(str, 1);
    }

    public static Bitmap getBitmap(Context context, String str) throws Throwable {
        return getBitmap(downloadBitmap(context, str));
    }

    private static String a(byte[] bArr) {
        byte[] bArr2 = {-1, -40, -1, -31};
        if (a(bArr, new byte[]{-1, -40, -1, -32}) || a(bArr, bArr2)) {
            return "jpg";
        }
        if (a(bArr, new byte[]{-119, 80, 78, 71})) {
            return "png";
        }
        if (a(bArr, "GIF".getBytes())) {
            return "gif";
        }
        if (a(bArr, "BM".getBytes())) {
            return "bmp";
        }
        return (a(bArr, new byte[]{73, 73, 42}) || a(bArr, new byte[]{77, 77, 42})) ? "tif" : "";
    }

    private static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(Bitmap bitmap) {
        return bitmap == null || bitmap.getWidth() == 0 || bitmap.getHeight() == 0;
    }
}
