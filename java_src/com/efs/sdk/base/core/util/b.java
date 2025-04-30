package com.efs.sdk.base.core.util;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Random f11392a = new Random();

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
                    d.b("efs.util.file", "write file error, filename is " + file.getName(), th);
                    a(fileOutputStream);
                    return false;
                } catch (Throwable th2) {
                    a(fileOutputStream);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void b(File file) {
        File[] listFiles;
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory() && (listFiles = file.listFiles()) != null && listFiles.length > 0) {
            for (File file2 : listFiles) {
                b(file2);
            }
        }
        file.delete();
    }

    public static long c(File file) {
        long j4 = 0;
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return 0L;
            }
            for (File file2 : listFiles) {
                j4 += c(file2);
            }
            return j4;
        }
        return 0 + file.length();
    }

    public static List<File> d(File file) {
        if (file.isFile()) {
            return Collections.emptyList();
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null && listFiles.length > 0) {
            ArrayList arrayList = new ArrayList();
            for (File file2 : listFiles) {
                if (file2.isFile()) {
                    arrayList.add(file2);
                } else {
                    arrayList.addAll(d(file2));
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    private static String e(File file) {
        String str = "";
        if (file.exists()) {
            FileInputStream fileInputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[1024];
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
                        d.b("efs.util.file", "read file error", th);
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

    public static boolean a(File file, String str) {
        return a(file, str.getBytes());
    }

    public static String a(File file) {
        return e(file);
    }

    public static com.efs.sdk.base.core.d.b b(String str) {
        String[] split = str.split("_");
        if (split.length != 7) {
            d.a("efs.util.file", "File name error, name is ".concat(str), null);
            return null;
        }
        String str2 = split[0];
        String str3 = split[1];
        byte byteValue = Byte.valueOf(split[2]).byteValue();
        com.efs.sdk.base.core.d.b bVar = new com.efs.sdk.base.core.d.b(str2, Byte.valueOf(split[3]).byteValue());
        bVar.a(str3);
        bVar.a(byteValue);
        return bVar;
    }

    public static byte[] a(String str) {
        FileInputStream fileInputStream;
        byte[] bArr = new byte[0];
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
            } catch (Exception e4) {
                e = e4;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bArr = new byte[fileInputStream.available()];
            fileInputStream.read(bArr);
            a(fileInputStream);
        } catch (Exception e5) {
            e = e5;
            fileInputStream2 = fileInputStream;
            d.b("efs.util.file", "read data error", e);
            a(fileInputStream2);
            return bArr;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            a(fileInputStream2);
            throw th;
        }
        return bArr;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                d.b("efs.util.file", "safe close error", th);
            }
        }
    }

    public static String a(com.efs.sdk.base.core.d.b bVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(bVar.f11349a.f11342a);
        sb.append("_");
        sb.append(bVar.f11349a.f11345d);
        sb.append("_");
        sb.append(bVar.f11349a.f11346e);
        sb.append("_");
        sb.append((int) bVar.f11349a.f11343b);
        sb.append("_");
        sb.append(e.a());
        sb.append("_");
        sb.append(f11392a.nextInt(10000));
        sb.append("_");
        com.efs.sdk.base.core.a.a.a();
        sb.append(com.efs.sdk.base.core.a.a.b());
        return sb.toString();
    }

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
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    } catch (Exception e4) {
                        e = e4;
                        fileInputStream = fileInputStream2;
                        try {
                            d.b("efs.util.file", "error when copy", e);
                            a(fileInputStream);
                            a(fileOutputStream);
                            b(file);
                        } catch (Throwable th) {
                            th = th;
                            a(fileInputStream);
                            a(fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = fileInputStream2;
                        a(fileInputStream);
                        a(fileOutputStream);
                        throw th;
                    }
                }
                a(fileInputStream2);
            } catch (Exception e5) {
                e = e5;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (Exception e6) {
            e = e6;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
        a(fileOutputStream);
        b(file);
    }
}
