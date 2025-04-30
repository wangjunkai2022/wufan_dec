package com.join.mgps.Util;

import android.util.Base64;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
/* compiled from: CipherUtils.java */
/* loaded from: classes3.dex */
public class p {
    public static void a(String str, String str2) throws Exception {
        byte[] decode = Base64.decode(str, 0);
        FileOutputStream fileOutputStream = new FileOutputStream(str2);
        fileOutputStream.write(decode);
        fileOutputStream.close();
    }

    public static long b(File file) {
        CheckedInputStream checkedInputStream;
        CheckedInputStream checkedInputStream2 = null;
        try {
            try {
                checkedInputStream = new CheckedInputStream(new FileInputStream(file), new CRC32());
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e4) {
            e = e4;
        }
        try {
            while (checkedInputStream.read(new byte[128]) >= 0) {
            }
            long value = checkedInputStream.getChecksum().getValue();
            try {
                checkedInputStream.close();
                return value;
            } catch (IOException e5) {
                e5.printStackTrace();
                return value;
            }
        } catch (IOException e6) {
            e = e6;
            checkedInputStream2 = checkedInputStream;
            e.printStackTrace();
            try {
                checkedInputStream2.close();
            } catch (IOException e7) {
                e7.printStackTrace();
            }
            return 0L;
        } catch (Throwable th2) {
            th = th2;
            checkedInputStream2 = checkedInputStream;
            try {
                checkedInputStream2.close();
            } catch (IOException e8) {
                e8.printStackTrace();
            }
            throw th;
        }
    }

    public static String c(String str) throws Exception {
        File file = new File(str);
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[(int) file.length()];
        fileInputStream.read(bArr);
        fileInputStream.close();
        return Base64.encodeToString(bArr, 0);
    }

    public static void d(String[] strArr) {
        System.out.println(b(new File("/Users/lala/Documents/pokemon_emerald.wld")));
    }
}
