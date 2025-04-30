package com.uc.crashsdk.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.uc.crashsdk.JNIBridge;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.t;
import io.netty.handler.traffic.AbstractTrafficShapingHandler;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.util.ArrayList;
/* compiled from: ProGuard */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f60198a = true;

    /* renamed from: b  reason: collision with root package name */
    private static Context f60199b;

    /* renamed from: c  reason: collision with root package name */
    private static String f60200c;

    /* renamed from: d  reason: collision with root package name */
    private static String f60201d;

    /* renamed from: e  reason: collision with root package name */
    private static String f60202e;

    /* renamed from: f  reason: collision with root package name */
    private static String f60203f;

    /* renamed from: g  reason: collision with root package name */
    private static String f60204g;

    /* renamed from: h  reason: collision with root package name */
    private static boolean f60205h;

    /* renamed from: i  reason: collision with root package name */
    private static final Object f60206i = new Object();

    /* renamed from: j  reason: collision with root package name */
    private static final char[] f60207j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static void a(File file, File file2) {
        FileOutputStream fileOutputStream;
        byte[] bArr = new byte[524288];
        File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        if (file2.isDirectory()) {
            file2 = new File(file2, file.getName());
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                while (true) {
                    try {
                        int read = fileInputStream2.read(bArr);
                        if (read == -1) {
                            a(fileInputStream2);
                            a(fileOutputStream);
                            return;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        a(fileInputStream);
                        a(fileOutputStream);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    public static void b(File file) {
        a(file, "");
    }

    public static String c(File file) {
        String str = "";
        if (file.exists()) {
            FileInputStream fileInputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[256];
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        int read = fileInputStream2.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        sb.append(new String(bArr, 0, read));
                    }
                    str = sb.toString();
                    a(fileInputStream2);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    try {
                        a(th, false);
                        return str;
                    } finally {
                        a(fileInputStream);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
            return str;
        }
        return "";
    }

    public static String d(File file) {
        return a(file, 64, true);
    }

    public static byte[] e(File file) {
        FileInputStream fileInputStream;
        if (!file.exists()) {
            return null;
        }
        try {
            byte[] bArr = new byte[(int) file.length()];
            fileInputStream = new FileInputStream(file);
            try {
                fileInputStream.read(bArr);
                return bArr;
            } catch (Throwable th) {
                th = th;
                try {
                    a(th, false);
                    return null;
                } finally {
                    a(fileInputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    public static boolean f() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    public static boolean g() {
        int indexOf;
        String i2 = i();
        if (!a(i2) && (indexOf = i2.indexOf(" root ")) > 0) {
            String substring = i2.substring(0, indexOf);
            if (substring.contains("x") || substring.contains(ai.az)) {
                return true;
            }
        }
        return false;
    }

    public static String h() {
        l();
        return a(f60203f) ? "" : f60203f;
    }

    public static String i() {
        l();
        return a(f60204g) ? "" : f60204g;
    }

    public static void j() {
        f.a(0, new e(800), AbstractTrafficShapingHandler.DEFAULT_MAX_TIME);
    }

    public static void k() {
        if (com.uc.crashsdk.b.f60229d && f60205h) {
            JNIBridge.set(123, f60203f);
            JNIBridge.set(124, f60204g);
        }
    }

    private static void l() {
        String trim;
        int indexOf;
        int indexOf2;
        if (f60205h) {
            return;
        }
        synchronized (f60206i) {
            if (f60205h) {
                return;
            }
            String a4 = a(new String[]{t.f64783b, "-c", "type su"});
            if (!a(a4) && (indexOf = (trim = a4.trim()).indexOf(32)) > 0 && trim.contains("/su") && (indexOf2 = trim.indexOf(47, indexOf + 1)) > 0) {
                String substring = trim.substring(indexOf2);
                f60203f = substring;
                String a5 = a(new String[]{"ls", "-l", substring});
                if (!a(a5)) {
                    f60204g = a5.trim();
                }
            }
            f60205h = true;
            k();
        }
    }

    public static boolean a(File file) {
        String[] list;
        if (file.isDirectory() && (list = file.list()) != null) {
            for (String str : list) {
                if (!a(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static boolean b(String str) {
        return !a(str);
    }

    public static String d() {
        String str = f60202e;
        return str != null ? str : "";
    }

    public static void b(Throwable th) {
        a(th, true);
    }

    public static String d(String str) {
        try {
            byte[] bytes = str.getBytes("utf-8");
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            byte[] digest = messageDigest.digest();
            int length = digest.length;
            StringBuilder sb = new StringBuilder(length * 2);
            int i2 = length + 0;
            for (int i4 = 0; i4 < i2; i4++) {
                byte b4 = digest[i4];
                char[] cArr = f60207j;
                char c4 = cArr[(b4 & 240) >> 4];
                char c5 = cArr[b4 & 15];
                sb.append(c4);
                sb.append(c5);
            }
            return sb.toString();
        } catch (Exception e4) {
            a.a("crashsdk", "getMD5: ", e4);
            return null;
        }
    }

    public static String b() {
        return f60200c;
    }

    public static String a(File file, int i2, boolean z3) {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[i2];
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    return new String(bArr, 0, read);
                }
            } catch (Throwable th) {
                th = th;
                if (z3) {
                    try {
                        a(th, false);
                    } finally {
                        a(fileInputStream);
                    }
                }
                return null;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        return null;
    }

    public static boolean e() {
        if (g()) {
            return true;
        }
        return f();
    }

    public static long c(String str) {
        if (a(str)) {
            return 0L;
        }
        try {
            long parseLong = Long.parseLong(str.trim());
            if (parseLong < 0) {
                return 0L;
            }
            return parseLong;
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    public static String c() {
        return f60201d;
    }

    public static ArrayList<String> a(File file, int i2) {
        BufferedReader bufferedReader;
        ArrayList<String> arrayList = new ArrayList<>();
        FileReader fileReader = null;
        try {
            FileReader fileReader2 = new FileReader(file);
            try {
                bufferedReader = new BufferedReader(fileReader2, 512);
                int i4 = 0;
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        arrayList.add(readLine);
                        i4++;
                        if (i2 > 0 && i4 >= i2) {
                            break;
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileReader = fileReader2;
                        try {
                            a(th, false);
                            a(fileReader);
                            a(bufferedReader);
                            return arrayList;
                        } catch (Throwable th2) {
                            a(fileReader);
                            a(bufferedReader);
                            throw th2;
                        }
                    }
                }
                a(fileReader2);
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
        }
        a(bufferedReader);
        return arrayList;
    }

    public static boolean a(File file, byte[] bArr) {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                fileOutputStream2.write(bArr);
                fileOutputStream2.flush();
                a(fileOutputStream2);
                return true;
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                try {
                    a(th, false);
                    return false;
                } finally {
                    a(fileOutputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean a(File file, String str) {
        FileWriter fileWriter = null;
        try {
            FileWriter fileWriter2 = new FileWriter(file);
            try {
                fileWriter2.write(str, 0, str.length());
                a(fileWriter2);
                return true;
            } catch (Throwable th) {
                th = th;
                fileWriter = fileWriter2;
                try {
                    a(th, false);
                    return false;
                } finally {
                    a(fileWriter);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                a(th, true);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
        if (r2.toLowerCase().startsWith(com.facebook.common.util.f.f11765a) != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r2, java.lang.String r3, boolean r4) {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r2)
            boolean r0 = r0.exists()
            r1 = 0
            if (r0 == 0) goto L2a
            java.lang.String r2 = com.uc.crashsdk.a.b.a(r2)
            boolean r0 = a(r2)
            if (r0 == 0) goto L17
            goto L2a
        L17:
            if (r4 == 0) goto L29
            java.lang.String r2 = r2.trim()
            java.lang.String r4 = r2.toLowerCase()
            java.lang.String r0 = "http"
            boolean r4 = r4.startsWith(r0)
            if (r4 == 0) goto L2a
        L29:
            r1 = r2
        L2a:
            if (r1 != 0) goto L2d
            goto L2e
        L2d:
            r3 = r1
        L2e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uc.crashsdk.a.g.a(java.lang.String, java.lang.String, boolean):java.lang.String");
    }

    public static boolean a(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static boolean a(StringBuffer stringBuffer) {
        return stringBuffer == null || stringBuffer.length() == 0;
    }

    public static void a(Throwable th) {
        a(th, false);
    }

    private static void a(Throwable th, boolean z3) {
        if (!z3) {
            try {
                if (!com.uc.crashsdk.g.M()) {
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        th.printStackTrace();
    }

    public static void a(Context context) {
        if (f60199b != null) {
            a.b("mContext is existed");
        }
        f60199b = context;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        f60200c = applicationInfo.dataDir;
        f60201d = applicationInfo.sourceDir;
        try {
            Field declaredField = ApplicationInfo.class.getDeclaredField("primaryCpuAbi");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(applicationInfo);
            if (obj == null || !(obj instanceof String)) {
                return;
            }
            f60202e = (String) obj;
        } catch (Throwable th) {
            a(th, false);
        }
    }

    public static Context a() {
        return f60199b;
    }

    public static void a(int i2) {
        if (i2 != 800) {
            if (!f60198a) {
                throw new AssertionError();
            }
            return;
        }
        l();
    }

    private static String a(String[] strArr) {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        try {
            inputStreamReader = new InputStreamReader(Runtime.getRuntime().exec(strArr).getInputStream());
            try {
                bufferedReader = new BufferedReader(inputStreamReader, 512);
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine != null) {
                            sb.append(readLine);
                        } else {
                            return sb.toString().trim();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        a(th, false);
                        return null;
                    } finally {
                        a(bufferedReader);
                        a(inputStreamReader);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
            inputStreamReader = null;
        }
    }
}
