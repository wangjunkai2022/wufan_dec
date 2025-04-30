package com.papa.gsyvideoplayer.utils;

import android.graphics.Bitmap;
import android.os.Environment;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
/* compiled from: FileUtils.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f55116a = Environment.getExternalStorageDirectory().getPath();

    /* renamed from: b  reason: collision with root package name */
    public static final String f55117b = "GSYVideo";

    /* renamed from: c  reason: collision with root package name */
    public static final String f55118c = "GSYVideoTest";

    public static void a(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (!file2.isDirectory() && file2.exists()) {
                    try {
                        file2.delete();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    public static String b(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(f55116a);
        String str2 = File.separator;
        sb.append(str2);
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static String c() {
        String b4 = b(f55117b);
        File file = new File(b4);
        if (!file.exists()) {
            file.mkdirs();
        }
        return b4;
    }

    public static String d() {
        String b4 = b(f55118c);
        File file = new File(b4);
        if (!file.exists()) {
            file.mkdirs();
        }
        return b4;
    }

    public static void e(Bitmap bitmap, File file) {
        if (bitmap != null) {
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(file));
                bitmap.recycle();
            } catch (FileNotFoundException e4) {
                e4.printStackTrace();
            }
        }
    }
}
