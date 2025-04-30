package com.xinzhu.overmind.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* compiled from: NativeUtils.java */
/* loaded from: classes3.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    public static final String f64774a = "VirtualM";

    public static void a(File apk, File nativeLibDir, boolean is64bit) throws Exception {
        long currentTimeMillis = System.currentTimeMillis();
        if (!nativeLibDir.exists()) {
            nativeLibDir.mkdirs();
        }
        try {
            ZipFile zipFile = new ZipFile(apk.getAbsolutePath());
            if (is64bit) {
                c(zipFile, com.xinzhu.overmind.a.f63949k, nativeLibDir);
            } else if (c(zipFile, com.xinzhu.overmind.a.f63947i, nativeLibDir)) {
                zipFile.close();
                return;
            } else {
                c(zipFile, com.xinzhu.overmind.a.f63948j, nativeLibDir);
            }
            zipFile.close();
        } finally {
            StringBuilder sb = new StringBuilder();
            sb.append("Done! +");
            sb.append(System.currentTimeMillis() - currentTimeMillis);
            sb.append("ms");
        }
    }

    private static void b(byte[] buffer, InputStream input, OutputStream output) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(input);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(output);
        while (true) {
            int read = bufferedInputStream.read(buffer);
            if (read > 0) {
                bufferedOutputStream.write(buffer, 0, read);
            } else {
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
                output.close();
                bufferedInputStream.close();
                input.close();
                return;
            }
        }
    }

    private static boolean c(ZipFile zipfile, String cpuArch, File nativeLibDir) throws Exception {
        StringBuilder sb = new StringBuilder();
        sb.append("Try to copy plugin's cup arch: ");
        sb.append(cpuArch);
        String str = "lib/" + cpuArch + net.lingala.zip4j.util.e.F0;
        Enumeration<? extends ZipEntry> entries = zipfile.entries();
        boolean z3 = false;
        byte[] bArr = null;
        boolean z4 = false;
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            String name = nextElement.getName();
            if (z3 || name.startsWith("lib/")) {
                if (name.endsWith(".so") && name.startsWith(str)) {
                    if (bArr == null) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Found plugin's cup arch dir: ");
                        sb2.append(cpuArch);
                        bArr = new byte[8192];
                        z4 = true;
                    }
                    String substring = name.substring(name.lastIndexOf(47) + 1);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("verify so ");
                    sb3.append(substring);
                    File file = new File(nativeLibDir, substring);
                    if (file.exists() && file.length() == nextElement.getSize()) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(substring);
                        sb4.append(" skip copy");
                    } else {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("copy so ");
                        sb5.append(nextElement.getName());
                        sb5.append(" of ");
                        sb5.append(cpuArch);
                        b(bArr, zipfile.getInputStream(nextElement), fileOutputStream);
                    }
                }
                z3 = true;
            }
        }
        if (z3) {
            return z4;
        }
        return true;
    }
}
