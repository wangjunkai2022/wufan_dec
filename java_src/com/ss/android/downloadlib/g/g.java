package com.ss.android.downloadlib.g;

import java.io.File;
/* compiled from: FileUtils.java */
/* loaded from: classes4.dex */
public class g {
    public static long a(File file) {
        if (file == null || !file.exists()) {
            return 0L;
        }
        return a(file, file.lastModified(), 0);
    }

    private static long a(File file, long j4, int i2) {
        File[] listFiles;
        if (file != null && file.exists()) {
            j4 = Math.max(j4, file.lastModified());
            int i4 = i2 + 1;
            if (i4 >= 50) {
                return j4;
            }
            if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    j4 = Math.max(j4, a(file2, j4, i4));
                }
            }
        }
        return j4;
    }
}
