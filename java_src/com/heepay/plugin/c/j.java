package com.heepay.plugin.c;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.UUID;
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static volatile j f16790a;

    /* renamed from: b  reason: collision with root package name */
    private final String f16791b = "HyID";

    private j() {
    }

    public static j a() {
        if (f16790a == null) {
            synchronized (j.class) {
                if (f16790a == null) {
                    f16790a = new j();
                }
            }
        }
        return f16790a;
    }

    private String a(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f73017f0);
        byte[] bArr = new byte[(int) randomAccessFile.length()];
        randomAccessFile.readFully(bArr);
        randomAccessFile.close();
        return new String(bArr);
    }

    private void b(File file) {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(UUID.randomUUID().toString().getBytes());
        fileOutputStream.close();
    }

    public String a(Context context) {
        try {
            File file = new File(context.getFilesDir(), "HyID");
            if (!file.exists()) {
                b(file);
            }
            return a(file);
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
