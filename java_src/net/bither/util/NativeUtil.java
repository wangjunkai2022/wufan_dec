package net.bither.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import net.lingala.zip4j.util.e;
/* loaded from: classes5.dex */
public class NativeUtil {

    /* renamed from: a  reason: collision with root package name */
    private static int f72839a = 95;

    /* renamed from: b  reason: collision with root package name */
    public static long f72840b = 314572;

    /* loaded from: classes5.dex */
    public interface a {
        void onFailed(String str);

        void onSuccess(String str);
    }

    static {
        System.loadLibrary("jpegbither");
        System.loadLibrary("bitherjni");
    }

    public static void a(Bitmap bitmap, int i2, String str, boolean z3) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth() / 3, bitmap.getHeight() / 3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        canvas.drawBitmap(bitmap, (Rect) null, new Rect(0, 0, bitmap.getWidth() / 3, bitmap.getHeight() / 3), (Paint) null);
        g(createBitmap, i2, str, z3);
        createBitmap.recycle();
    }

    public static void b(Bitmap bitmap, String str, boolean z3) {
        a(bitmap, f72839a, str, z3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b8 A[Catch: Exception -> 0x00f9, TryCatch #3 {Exception -> 0x00f9, blocks: (B:3:0x0004, B:5:0x0015, B:7:0x0023, B:9:0x002d, B:10:0x0034, B:12:0x0043, B:14:0x0053, B:15:0x0058, B:19:0x00a0, B:32:0x00b8, B:34:0x00c2, B:36:0x00dd, B:38:0x00ee, B:41:0x00f5, B:42:0x00f8, B:29:0x00b2, B:6:0x001e), top: B:51:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c2 A[Catch: Exception -> 0x00f9, TryCatch #3 {Exception -> 0x00f9, blocks: (B:3:0x0004, B:5:0x0015, B:7:0x0023, B:9:0x002d, B:10:0x0034, B:12:0x0043, B:14:0x0053, B:15:0x0058, B:19:0x00a0, B:32:0x00b8, B:34:0x00c2, B:36:0x00dd, B:38:0x00ee, B:41:0x00f5, B:42:0x00f8, B:29:0x00b2, B:6:0x001e), top: B:51:0x0004 }] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r3v8, types: [android.graphics.Bitmap] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(android.content.Context r6, java.lang.String r7, java.lang.String r8, int r9, boolean r10, net.bither.util.NativeUtil.a r11) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bither.util.NativeUtil.c(android.content.Context, java.lang.String, java.lang.String, int, boolean, net.bither.util.NativeUtil$a):void");
    }

    private static native String compressBitmap(Bitmap bitmap, int i2, int i4, int i5, byte[] bArr, boolean z3);

    public static void d(String str, String str2) {
        try {
            if (!new File(str).exists()) {
                return;
            }
            FileInputStream fileInputStream = new FileInputStream(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            byte[] bArr = new byte[1444];
            int i2 = 0;
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read != -1) {
                    i2 += read;
                    System.out.println(i2);
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileInputStream.close();
                    return;
                }
            }
        } catch (Exception e4) {
            System.out.println("复制单个文件操作出错");
            e4.printStackTrace();
        }
    }

    public static void e(String str, String str2) {
        File file;
        try {
            new File(str2).mkdirs();
            String[] list = new File(str).list();
            for (int i2 = 0; i2 < list.length; i2++) {
                String str3 = File.separator;
                if (str.endsWith(str3)) {
                    file = new File(str + list[i2]);
                } else {
                    file = new File(str + str3 + list[i2]);
                }
                if (file.isFile()) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    FileOutputStream fileOutputStream = new FileOutputStream(str2 + e.F0 + file.getName().toString());
                    byte[] bArr = new byte[5120];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    fileInputStream.close();
                }
                if (file.isDirectory()) {
                    e(str + e.F0 + list[i2], str2 + e.F0 + list[i2]);
                }
            }
        } catch (Exception e4) {
            System.out.println("fail to copy all files of dir.");
            e4.printStackTrace();
        }
    }

    public static long f(File file) throws Exception {
        FileInputStream fileInputStream;
        if (file.exists()) {
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                } catch (Exception e4) {
                    e = e4;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                long available = fileInputStream.available();
                fileInputStream.close();
                return available;
            } catch (Exception e5) {
                e = e5;
                fileInputStream2 = fileInputStream;
                e.printStackTrace();
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                    return 0L;
                }
                return 0L;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                throw th;
            }
        }
        file.createNewFile();
        return 0L;
    }

    private static void g(Bitmap bitmap, int i2, String str, boolean z3) {
        compressBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), i2, str.getBytes(), z3);
    }
}
