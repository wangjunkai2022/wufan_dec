package com.papa91.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import net.lingala.zip4j.util.e;
/* loaded from: classes4.dex */
public class DownLoadFile {
    public String downLoad(String str, String str2) {
        String str3 = str + str2.substring(str2.lastIndexOf(e.F0) + 1);
        File file = new File(str3);
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        if (file.exists()) {
            return str3;
        }
        try {
            URLConnection openConnection = new URL(str2).openConnection();
            openConnection.getContentLength();
            InputStream inputStream = openConnection.getInputStream();
            byte[] bArr = new byte[1024];
            FileOutputStream fileOutputStream = new FileOutputStream(str3);
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.close();
                    inputStream.close();
                    return str3;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }
}
