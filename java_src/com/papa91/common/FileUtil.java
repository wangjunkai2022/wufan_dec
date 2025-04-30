package com.papa91.common;

import android.content.Context;
import android.content.res.Resources;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.Collator;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
/* loaded from: classes4.dex */
public class FileUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static Collator chinaCollator = Collator.getInstance(Locale.CHINA);
    static Context context;
    static int mode;

    public static void Unzip(Resources resources, String str, String str2) {
        ZipInputStream zipInputStream;
        byte[] bArr;
        try {
            zipInputStream = new ZipInputStream(new BufferedInputStream(resources.getAssets().open(str)));
            bArr = new byte[4096];
        } catch (Exception e4) {
            e4.printStackTrace();
            return;
        }
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry != null) {
                try {
                    String name = nextEntry.getName();
                    File file = new File(str2 + name);
                    File file2 = new File(file.getParent());
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 4096);
                    while (true) {
                        int read = zipInputStream.read(bArr, 0, 4096);
                        if (read == -1) {
                            break;
                        }
                        bufferedOutputStream.write(bArr, 0, read);
                    }
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            } else {
                zipInputStream.close();
                return;
            }
            e4.printStackTrace();
            return;
        }
    }

    public static byte[] getIndexFile(String str, int i2) {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(new File(str));
            for (int i4 = 0; i4 < i2; i4++) {
                try {
                    byte[] bArr = new byte[4];
                    fileInputStream.read(bArr);
                    byte b4 = bArr[0];
                    byte b5 = bArr[1];
                    byte b6 = bArr[2];
                    fileInputStream.skip(((bArr[3] & 255) << 24) | ((b6 & 255) << 16) | (b4 & 255) | ((b5 & 255) << 8));
                } catch (Exception unused) {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused2) {
                        }
                    }
                    return null;
                }
            }
            byte[] bArr2 = new byte[4];
            fileInputStream.read(bArr2);
            int i5 = ((bArr2[3] & 255) << 24) | (bArr2[0] & 255) | ((bArr2[1] & 255) << 8) | ((bArr2[2] & 255) << 16);
            byte[] bArr3 = new byte[i5];
            fileInputStream.read(bArr3, 0, i5);
            fileInputStream.close();
            return bArr3;
        } catch (Exception unused3) {
            fileInputStream = null;
        }
    }

    public static FileWrapper[] listSortedEnFiles(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return null;
        }
        FileWrapper[] fileWrapperArr = new FileWrapper[listFiles.length];
        for (int i2 = 0; i2 < listFiles.length; i2++) {
            fileWrapperArr[i2] = new FileWrapper(listFiles[i2]);
        }
        Arrays.sort(fileWrapperArr);
        return fileWrapperArr;
    }

    public static FileWrapper[] listSortedFiles(File file) {
        return listSortedEnFiles(file);
    }

    public static void setMode(Context context2, int i2, HashMap<String, String> hashMap) {
        mode = i2;
    }
}
