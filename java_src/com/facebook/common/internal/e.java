package com.facebook.common.internal;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Files.java */
/* loaded from: classes2.dex */
public class e {
    private e() {
    }

    static byte[] a(InputStream inputStream, long j4) throws IOException {
        if (j4 <= 2147483647L) {
            if (j4 == 0) {
                return b.d(inputStream);
            }
            return b.e(inputStream, (int) j4);
        }
        throw new OutOfMemoryError("file is too large to fit in a byte array: " + j4 + " bytes");
    }

    public static byte[] b(File file) throws IOException {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                byte[] a4 = a(fileInputStream2, fileInputStream2.getChannel().size());
                fileInputStream2.close();
                return a4;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
