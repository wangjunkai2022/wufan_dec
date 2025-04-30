package com.android.dex.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class FileUtils {
    private FileUtils() {
    }

    public static boolean hasArchiveSuffix(String str) {
        return str.endsWith(".zip") || str.endsWith(".jar") || str.endsWith(".apk");
    }

    public static byte[] readFile(String str) {
        return readFile(new File(str));
    }

    public static byte[] readFile(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                if (file.canRead()) {
                    long length = file.length();
                    int i2 = (int) length;
                    if (i2 == length) {
                        byte[] bArr = new byte[i2];
                        try {
                            FileInputStream fileInputStream = new FileInputStream(file);
                            int i4 = 0;
                            while (i2 > 0) {
                                int read = fileInputStream.read(bArr, i4, i2);
                                if (read == -1) {
                                    throw new RuntimeException(file + ": unexpected EOF");
                                }
                                i4 += read;
                                i2 -= read;
                            }
                            fileInputStream.close();
                            return bArr;
                        } catch (IOException e4) {
                            throw new RuntimeException(file + ": trouble reading", e4);
                        }
                    }
                    throw new RuntimeException(file + ": file too long");
                }
                throw new RuntimeException(file + ": file not readable");
            }
            throw new RuntimeException(file + ": not a file");
        }
        throw new RuntimeException(file + ": file not found");
    }
}
