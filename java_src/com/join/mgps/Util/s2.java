package com.join.mgps.Util;

import android.os.Build;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
/* compiled from: XZip.java */
/* loaded from: classes3.dex */
public class s2 {

    /* renamed from: a  reason: collision with root package name */
    private static final int f27821a = 10240;

    public static boolean a(File file, String str) throws IOException {
        ZipFile zipFile;
        try {
            Charset forName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                zipFile = new ZipFile(file, forName);
            } else {
                zipFile = new ZipFile(file);
            }
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            boolean z3 = false;
            boolean z4 = false;
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                if (nextElement.isDirectory()) {
                    String name = nextElement.getName();
                    if (name.equalsIgnoreCase("obb/" + str)) {
                        z3 = true;
                    }
                    String name2 = nextElement.getName();
                    if (name2.equalsIgnoreCase("data/" + str)) {
                        z4 = true;
                    }
                }
            }
            return z3 || z4;
        } catch (IOException e4) {
            e4.printStackTrace();
            throw new IOException(e4);
        }
    }

    public static String b(File file, String str) throws IOException {
        ZipFile zipFile;
        try {
            Charset forName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                zipFile = new ZipFile(file, forName);
            } else {
                zipFile = new ZipFile(file);
            }
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                if (!nextElement.isDirectory()) {
                    String str2 = new String((str + File.separator + nextElement.getName()).getBytes("8859_1"), "UTF-8");
                    if (str2.endsWith(".apk") || str2.endsWith(".APK")) {
                        return str2;
                    }
                }
            }
            return "";
        } catch (IOException e4) {
            e4.printStackTrace();
            throw new IOException(e4);
        }
    }

    public static String c(File file, String str, String str2) throws IOException {
        ZipFile zipFile;
        try {
            Charset forName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                zipFile = new ZipFile(file, forName);
            } else {
                zipFile = new ZipFile(file);
            }
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                if (!nextElement.isDirectory()) {
                    String str3 = new String((str + File.separator + nextElement.getName()).getBytes("8859_1"), "UTF-8");
                    if (!str3.endsWith(str2 + ".zip")) {
                        if (!str3.endsWith(str2 + ".iso")) {
                            if (!str3.endsWith(str2 + ".ISO")) {
                                if (!str3.endsWith(str2 + ".bin")) {
                                    if (!str3.endsWith(str2 + ".cue")) {
                                        if (!str3.endsWith(str2 + ".pbp")) {
                                            if (!str3.endsWith(str2 + ".img")) {
                                                if (!str3.endsWith(str2 + ".mdf")) {
                                                    if (!str3.endsWith(str2 + ".wsc")) {
                                                        if (!str3.endsWith(str2 + ".ws")) {
                                                            if (!str3.endsWith(str2 + ".nds")) {
                                                                if (!str3.endsWith(str2 + ".z64")) {
                                                                    if (!str3.endsWith(str2 + ".n64")) {
                                                                        if (!str3.endsWith(str2 + ".cdi")) {
                                                                            if (!str3.endsWith(str2 + ".CDI")) {
                                                                                if (!str3.endsWith(str2 + ".gdi")) {
                                                                                    if (!str3.endsWith(str2 + ".chd")) {
                                                                                        if (str3.endsWith(str2 + ".mds")) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    zipFile.close();
                    return str3;
                }
            }
            zipFile.close();
            return "";
        } catch (IOException e4) {
            e4.printStackTrace();
            throw new IOException(e4);
        }
    }

    public static void d(String[] strArr) {
        System.out.println(System.currentTimeMillis());
        try {
            h(null, new File("C:\\Users\\pengsk\\Desktop\\cc.zip"), "C:\\Users\\pengsk\\Desktop\\cc", "xxxx");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        System.out.println(System.currentTimeMillis());
    }

    public static String e(com.join.mgps.task.e eVar, File file, String str) throws IOException {
        ZipFile zipFile;
        int read;
        ZipFile zipFile2 = null;
        try {
            try {
                File file2 = new File(str);
                String str2 = "";
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                try {
                    Charset forName = Charset.forName("GBK");
                    if (Build.VERSION.SDK_INT >= 24) {
                        zipFile = new ZipFile(file, forName);
                    } else {
                        zipFile = new ZipFile(file);
                    }
                    Enumeration<? extends ZipEntry> entries = zipFile.entries();
                    while (entries.hasMoreElements()) {
                        ZipEntry nextElement = entries.nextElement();
                        if (nextElement.isDirectory()) {
                            new File(new String((str + File.separator + nextElement.getName()).getBytes("8859_1"), "UTF-8")).mkdirs();
                        } else {
                            InputStream inputStream = zipFile.getInputStream(nextElement);
                            String str3 = new String((str + File.separator + nextElement.getName()).getBytes("8859_1"), "UTF-8");
                            if (str3.endsWith(".apk") || str3.endsWith(".APK")) {
                                str2 = str3;
                            }
                            File file3 = new File(str3);
                            if (file3.exists()) {
                                File file4 = new File(file3.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                                file3.renameTo(file4);
                                file4.delete();
                            }
                            if (!file3.exists()) {
                                File parentFile = file3.getParentFile();
                                if (!parentFile.exists()) {
                                    parentFile.mkdirs();
                                }
                                file3.createNewFile();
                            }
                            FileOutputStream fileOutputStream = new FileOutputStream(file3);
                            byte[] bArr = new byte[f27821a];
                            while (eVar.f52282c && (read = inputStream.read(bArr)) > 0) {
                                try {
                                    try {
                                        fileOutputStream.write(bArr, 0, read);
                                        fileOutputStream.flush();
                                    } finally {
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        fileOutputStream.close();
                                    }
                                } catch (Exception e4) {
                                    e4.printStackTrace();
                                    throw new IOException(e4);
                                }
                            }
                        }
                    }
                    zipFile.close();
                    zipFile.close();
                    return str2;
                } catch (IOException e5) {
                    e5.printStackTrace();
                    throw new IOException(e5);
                }
            } catch (Exception e6) {
                e6.printStackTrace();
                throw new IOException(e6);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                zipFile2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0234, code lost:
        if (r8.endsWith(r11 + ".mds") != false) goto L96;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String f(java.io.File r9, java.lang.String r10, java.lang.String r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 774
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.s2.f(java.io.File, java.lang.String, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x002a -> B:59:0x002d). Please submit an issue!!! */
    public static boolean g(File file, String str) throws IOException {
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        ZipFile zipFile = null;
        try {
            Charset forName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                zipFile = new ZipFile(file, forName);
            } else {
                zipFile = new ZipFile(file);
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        try {
            try {
                Enumeration<? extends ZipEntry> entries = zipFile.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    if (nextElement.isDirectory()) {
                        new File(new String((str + File.separator + nextElement.getName()).getBytes("8859_1"), "UTF-8")).mkdirs();
                    } else {
                        InputStream inputStream = zipFile.getInputStream(nextElement);
                        File file3 = new File(new String((str + File.separator + nextElement.getName()).getBytes("8859_1"), "UTF-8"));
                        if (file3.exists()) {
                            File file4 = new File(file3.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                            file3.renameTo(file4);
                            file4.delete();
                        }
                        if (!file3.exists()) {
                            File parentFile = file3.getParentFile();
                            if (!parentFile.exists()) {
                                parentFile.mkdirs();
                            }
                            file3.createNewFile();
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(file3);
                        try {
                            try {
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int read = inputStream.read(bArr);
                                    if (read <= 0) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, read);
                                    fileOutputStream.flush();
                                }
                                inputStream.close();
                                fileOutputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                                throw new IOException(e5);
                            }
                        } finally {
                        }
                    }
                }
                zipFile.close();
                return true;
            } catch (IOException e6) {
                e6.printStackTrace();
                throw new IOException(e6);
            }
        } catch (Throwable th) {
            if (zipFile != null) {
                zipFile.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0231, code lost:
        if (r9.endsWith(r14 + ".mds") != false) goto L99;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.join.mgps.dto.UNZipPathBackBean h(com.join.mgps.task.h r11, java.io.File r12, java.lang.String r13, java.lang.String r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.s2.h(com.join.mgps.task.h, java.io.File, java.lang.String, java.lang.String):com.join.mgps.dto.UNZipPathBackBean");
    }

    public static String i(File file, String str) throws IOException {
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        ZipFile zipFile = null;
        try {
            Charset forName = Charset.forName("GBK");
            if (Build.VERSION.SDK_INT >= 24) {
                zipFile = new ZipFile(file, forName);
            } else {
                zipFile = new ZipFile(file);
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        String str2 = "";
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            if (nextElement.isDirectory()) {
                new File(new String((str + File.separator + nextElement.getName()).getBytes("8859_1"), "UTF-8")).mkdirs();
            } else {
                InputStream inputStream = zipFile.getInputStream(nextElement);
                File file3 = new File(new String((str + File.separator + nextElement.getName()).getBytes("8859_1"), "UTF-8"));
                if (file3.exists()) {
                    File file4 = new File(file3.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                    file3.renameTo(file4);
                    file4.delete();
                }
                if (!file3.exists()) {
                    File parentFile = file3.getParentFile();
                    if (!parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    file3.createNewFile();
                }
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                try {
                    try {
                        byte[] bArr = new byte[f27821a];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, read);
                            fileOutputStream.flush();
                        }
                        inputStream.close();
                        fileOutputStream.close();
                        str2 = file3.getParent();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                        throw new IOException(e5);
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    fileOutputStream.close();
                    throw th;
                }
            }
        }
        zipFile.close();
        return str2;
    }

    public static void j(File file, File file2) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file2), 1024000));
        k(file, zipOutputStream, "");
        zipOutputStream.close();
    }

    private static void k(File file, ZipOutputStream zipOutputStream, String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str.trim().length() == 0 ? "" : File.separator);
        sb.append(file.getName());
        String str2 = new String(sb.toString().getBytes("8859_1"), "utf-8");
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                k(file2, zipOutputStream, str2);
            }
            return;
        }
        byte[] bArr = new byte[f27821a];
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 1024000);
        zipOutputStream.putNextEntry(new ZipEntry(str2));
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read != -1) {
                zipOutputStream.write(bArr, 0, read);
            } else {
                bufferedInputStream.close();
                zipOutputStream.flush();
                zipOutputStream.closeEntry();
                return;
            }
        }
    }

    public static void l(Collection<File> collection, File file) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file), 1024000));
        for (File file2 : collection) {
            k(file2, zipOutputStream, "");
        }
        zipOutputStream.close();
    }

    public static void m(Collection<File> collection, File file, String str) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file), 1024000));
        for (File file2 : collection) {
            String name = file2.getName();
            boolean z3 = false;
            for (int i2 = 0; i2 <= 10; i2++) {
                if (!name.endsWith(g0.f27568a + i2)) {
                    if (!name.endsWith(g0.f27568a + i2 + ".png")) {
                    }
                }
                z3 = true;
            }
            if (!z3) {
                k(file2, zipOutputStream, "");
            }
        }
        zipOutputStream.setComment(str);
        zipOutputStream.close();
    }

    public static void n(Collection<File> collection, File file, String str) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file), 1024000));
        for (File file2 : collection) {
            k(file2, zipOutputStream, "");
        }
        zipOutputStream.setComment(str);
        zipOutputStream.close();
    }
}
