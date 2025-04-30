package com.qq.e.comm.managers.plugin;

import android.content.Context;
import com.qq.e.comm.util.GDTLogger;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static String f56470a = b.a("e_qq_com_plugin");

    /* renamed from: b  reason: collision with root package name */
    private static String f56471b = b.a("e_qq_com_dex");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File a(Context context) {
        return context.getDir(f56471b, 0);
    }

    public static void a(InputStream inputStream) {
        try {
            inputStream.close();
        } catch (Exception unused) {
        }
    }

    public static void a(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (Exception unused) {
            }
        }
    }

    public static boolean a(File file, File file2) {
        if (file == null || !file.exists()) {
            return false;
        }
        if (file.renameTo(file2)) {
            return true;
        }
        return a((InputStream) null, file2);
    }

    public static boolean a(InputStream inputStream, File file) {
        if (inputStream == null || file == null) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            File parentFile = file.getParentFile();
            if (parentFile == null || parentFile.exists() || parentFile.mkdirs()) {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[16384];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read <= 0) {
                            a(inputStream);
                            a(fileOutputStream2);
                            return true;
                        }
                        fileOutputStream2.write(bArr, 0, read);
                    }
                } catch (Throwable unused) {
                    fileOutputStream = fileOutputStream2;
                    try {
                        GDTLogger.d(String.format("Exception while copy from InputStream to File %s", file.getAbsolutePath()));
                        return false;
                    } finally {
                        a(inputStream);
                        a(fileOutputStream);
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b() {
        return "gdt_plugin";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(String str, File file) throws IOException {
        if (file == null) {
            throw new IOException("Target File Can not be null in StringUtil.writeTo");
        }
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        FileWriter fileWriter = new FileWriter(file);
        fileWriter.write(str);
        fileWriter.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File d(Context context) {
        return new File(context.getDir(f56470a, 0), "update_lc");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File e(Context context) {
        return new File(context.getDir(f56470a, 0), "gdt_plugin.next");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File f(Context context) {
        return new File(context.getDir(f56470a, 0), "gdt_plugin.next.sig");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File g(Context context) {
        return new File(context.getDir(f56470a, 0), "gdt_plugin.jar");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File h(Context context) {
        return new File(context.getDir(f56470a, 0), "gdt_plugin.jar.sig");
    }
}
