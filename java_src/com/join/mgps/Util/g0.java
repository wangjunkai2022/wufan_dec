package com.join.mgps.Util;

import android.annotation.TargetApi;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
/* compiled from: FileUtil.java */
/* loaded from: classes3.dex */
public class g0 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f27568a = ".";

    /* renamed from: b  reason: collision with root package name */
    private static final int f27569b = 16384;

    private g0() {
        throw new AssertionError();
    }

    public static boolean A(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean B(String str) {
        String r3 = r(str);
        if (d2.h(r3)) {
            return false;
        }
        File file = new File(r3);
        return (file.exists() && file.isDirectory()) || file.mkdirs();
    }

    public static boolean C(String str) {
        return B(str);
    }

    public static void D(File file, File file2) {
        if (file.renameTo(file2)) {
            return;
        }
        c(file.getAbsolutePath(), file2.getAbsolutePath());
        i(file.getAbsolutePath());
    }

    public static void E(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            D(new File(str), new File(str2));
            return;
        }
        throw new RuntimeException("Both sourceFilePath and destFilePath cannot be null.");
    }

    public static String F(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuffer stringBuffer = new StringBuffer("");
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                stringBuffer.append(readLine.trim());
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        return stringBuffer.toString();
    }

    public static StringBuilder G(String str, String str2) {
        File file = new File(str);
        StringBuilder sb = new StringBuilder("");
        BufferedReader bufferedReader = null;
        try {
            if (!file.isFile()) {
                return null;
            }
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), str2));
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine != null) {
                            if (!sb.toString().equals("")) {
                                sb.append("\r\n");
                            }
                            sb.append(readLine);
                        } else {
                            bufferedReader2.close();
                            try {
                                bufferedReader2.close();
                                return sb;
                            } catch (IOException e4) {
                                throw new RuntimeException("IOException occurred. ", e4);
                            }
                        }
                    } catch (IOException e5) {
                        e = e5;
                        throw new RuntimeException("IOException occurred. ", e);
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e6) {
                                throw new RuntimeException("IOException occurred. ", e6);
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e7) {
                e = e7;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static List<String> H(String str, String str2) {
        File file = new File(str);
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = null;
        try {
            if (!file.isFile()) {
                return null;
            }
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), str2));
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine != null) {
                            arrayList.add(readLine);
                        } else {
                            bufferedReader2.close();
                            try {
                                bufferedReader2.close();
                                return arrayList;
                            } catch (IOException e4) {
                                throw new RuntimeException("IOException occurred. ", e4);
                            }
                        }
                    } catch (IOException e5) {
                        e = e5;
                        throw new RuntimeException("IOException occurred. ", e);
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e6) {
                                throw new RuntimeException("IOException occurred. ", e6);
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e7) {
                e = e7;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void I(File file, File file2) throws IOException {
        File[] listFiles;
        for (File file3 : file.listFiles()) {
            File file4 = new File(file2, file3.getName());
            if (file3.isDirectory()) {
                if (!file4.exists() && !file4.mkdirs()) {
                    throw new IOException(String.format("Could not create directory %s", file4.getAbsolutePath()));
                }
                e(file3.getAbsolutePath(), file4.getAbsolutePath());
            } else if (file3.isFile()) {
                b(file3, file4);
            }
        }
    }

    public static boolean J(File file, InputStream inputStream) {
        return K(file, inputStream, false);
    }

    public static boolean K(File file, InputStream inputStream, boolean z3) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                B(file.getAbsolutePath());
                fileOutputStream = new FileOutputStream(file, z3);
            } catch (Throwable th) {
                th = th;
            }
        } catch (FileNotFoundException e4) {
            e = e4;
        } catch (IOException e5) {
            e = e5;
        } catch (Exception e6) {
            e = e6;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.flush();
                    try {
                        fileOutputStream.close();
                        inputStream.close();
                        return true;
                    } catch (IOException e7) {
                        throw new RuntimeException("IOException occurred. ", e7);
                    }
                }
            }
        } catch (FileNotFoundException e8) {
            e = e8;
            throw new RuntimeException("FileNotFoundException occurred. ", e);
        } catch (IOException e9) {
            e = e9;
            throw new RuntimeException("IOException occurred. ", e);
        } catch (Exception e10) {
            e = e10;
            e.printStackTrace();
            throw new RuntimeException("Exception occurred. ", e);
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                    inputStream.close();
                } catch (IOException e11) {
                    throw new RuntimeException("IOException occurred. ", e11);
                }
            }
            throw th;
        }
    }

    public static boolean L(String str, InputStream inputStream) {
        return M(str, inputStream, false);
    }

    public static boolean M(String str, InputStream inputStream, boolean z3) {
        return K(str != null ? new File(str) : null, inputStream, z3);
    }

    public static boolean N(String str, String str2) {
        return O(str, str2, false);
    }

    public static boolean O(String str, String str2, boolean z3) {
        FileWriter fileWriter;
        if (d2.h(str2)) {
            return false;
        }
        FileWriter fileWriter2 = null;
        try {
            try {
                B(str);
                fileWriter = new FileWriter(str, z3);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e4) {
            e = e4;
        }
        try {
            fileWriter.write(str2);
            fileWriter.close();
            try {
                fileWriter.close();
                return true;
            } catch (IOException e5) {
                throw new RuntimeException("IOException occurred. ", e5);
            }
        } catch (IOException e6) {
            e = e6;
            throw new RuntimeException("IOException occurred. ", e);
        } catch (Throwable th2) {
            th = th2;
            fileWriter2 = fileWriter;
            if (fileWriter2 != null) {
                try {
                    fileWriter2.close();
                } catch (IOException e7) {
                    throw new RuntimeException("IOException occurred. ", e7);
                }
            }
            throw th;
        }
    }

    public static boolean P(String str, List<String> list) {
        return Q(str, list, false);
    }

    public static boolean Q(String str, List<String> list, boolean z3) {
        FileWriter fileWriter;
        int i2 = 0;
        if (list == null || list.size() == 0) {
            return false;
        }
        FileWriter fileWriter2 = null;
        try {
            try {
                B(str);
                fileWriter = new FileWriter(str, z3);
            } catch (IOException e4) {
                e = e4;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            for (String str2 : list) {
                int i4 = i2 + 1;
                if (i2 > 0) {
                    fileWriter.write("\r\n");
                }
                fileWriter.write(str2);
                i2 = i4;
            }
            fileWriter.close();
            try {
                fileWriter.close();
                return true;
            } catch (IOException e5) {
                throw new RuntimeException("IOException occurred. ", e5);
            }
        } catch (IOException e6) {
            e = e6;
            fileWriter2 = fileWriter;
            throw new RuntimeException("IOException occurred. ", e);
        } catch (Throwable th2) {
            th = th2;
            fileWriter2 = fileWriter;
            if (fileWriter2 != null) {
                try {
                    fileWriter2.close();
                } catch (IOException e7) {
                    throw new RuntimeException("IOException occurred. ", e7);
                }
            }
            throw th;
        }
    }

    public static void R(InputStream inputStream, File file) throws IOException {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                try {
                    f(bufferedInputStream2, bufferedOutputStream);
                    a(bufferedInputStream2);
                    a(bufferedOutputStream);
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    a(bufferedInputStream);
                    a(bufferedOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream = null;
        }
    }

    public static void S(String str, File file) throws IOException {
        R(new ByteArrayInputStream(str.getBytes()), file);
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void b(File file, File file2) throws IOException {
        R(new FileInputStream(file), file2);
    }

    public static boolean c(String str, String str2) {
        try {
            return L(str2, new FileInputStream(str));
        } catch (FileNotFoundException e4) {
            throw new RuntimeException("FileNotFoundException occurred. ", e4);
        }
    }

    public static void d(String str, String str2) {
        e(str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00fb A[Catch: Exception -> 0x0116, TRY_LEAVE, TryCatch #4 {Exception -> 0x0116, blocks: (B:2:0x0000, B:4:0x0030, B:6:0x0036, B:7:0x0039, B:9:0x0041, B:11:0x0044, B:13:0x004c, B:15:0x007d, B:53:0x00f2, B:54:0x00f5, B:56:0x00fb, B:14:0x0063, B:27:0x00b3, B:28:0x00b9, B:42:0x00d7, B:49:0x00e6, B:51:0x00ee, B:52:0x00f1), top: B:65:0x0000, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0112 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.g0.e(java.lang.String, java.lang.String):void");
    }

    public static void f(InputStream inputStream, OutputStream outputStream) throws IOException {
        g(inputStream, outputStream, 0);
    }

    public static void g(InputStream inputStream, OutputStream outputStream, int i2) throws IOException {
        inputStream.skip(i2);
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }

    public static void h(String str, boolean z3) {
        File[] listFiles;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            File file = new File(str);
            if (file.exists() && file.isDirectory()) {
                if (file.listFiles() != null) {
                    for (File file2 : file.listFiles()) {
                        if (file2.isFile()) {
                            file2.delete();
                        } else if (file2.isDirectory()) {
                            h(file2.getPath(), true);
                        }
                    }
                }
                if (z3) {
                    file.delete();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static boolean i(String str) {
        File[] listFiles;
        if (d2.h(str)) {
            return true;
        }
        File file = new File(str);
        if (file.exists()) {
            if (file.isFile()) {
                return UtilsMy.delete(file);
            }
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    if (file2.isFile()) {
                        UtilsMy.delete(file2);
                    } else if (file2.isDirectory()) {
                        i(file2.getAbsolutePath());
                    }
                }
                return UtilsMy.delete(file);
            }
            return false;
        }
        return true;
    }

    public static int j(File file) {
        if (file.isDirectory()) {
            int i2 = 0;
            for (File file2 : file.listFiles()) {
                i2 += j(file2);
            }
            return i2;
        }
        return 1;
    }

    public static List<String> k(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(str);
            if (file.exists() && file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    String name = file2.getName();
                    if (name.endsWith(".zip") && !u(name)) {
                        arrayList.add(name);
                    }
                }
            }
        } catch (Exception e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("文件名>>e:");
            sb.append(e4.getMessage());
        }
        return arrayList;
    }

    public static String l(Context context, Uri uri, String str, String[] strArr) {
        Cursor cursor = null;
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndexOrThrow("_data"));
                        query.close();
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static int m(String str) {
        File[] listFiles;
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            int i2 = 0;
            for (File file2 : file.listFiles()) {
                if (file2.isFile() && file2.length() > 0) {
                    i2++;
                } else if (file2.isDirectory()) {
                    i2 += m(file2.getAbsolutePath());
                }
            }
            return i2;
        }
        return 0;
    }

    public static String n(String str) {
        if (d2.h(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(f27568a);
        return (lastIndexOf != -1 && str.lastIndexOf(File.separator) < lastIndexOf) ? str.substring(lastIndexOf + 1) : "";
    }

    public static String o(String str) {
        int lastIndexOf;
        return (d2.h(str) || (lastIndexOf = str.lastIndexOf(File.separator)) == -1) ? str : str.substring(lastIndexOf + 1);
    }

    public static String p(String str) {
        if (d2.h(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(f27568a);
        int lastIndexOf2 = str.lastIndexOf(File.separator);
        if (lastIndexOf2 == -1) {
            return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
        } else if (lastIndexOf == -1) {
            return str.substring(lastIndexOf2 + 1);
        } else {
            return lastIndexOf2 < lastIndexOf ? str.substring(lastIndexOf2 + 1, lastIndexOf) : str.substring(lastIndexOf2 + 1);
        }
    }

    public static long q(String str) {
        if (d2.h(str)) {
            return -1L;
        }
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            return file.length();
        }
        return -1L;
    }

    public static String r(String str) {
        if (d2.h(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(File.separator);
        return lastIndexOf == -1 ? "" : str.substring(0, lastIndexOf);
    }

    @TargetApi(19)
    public static String s(Context context, Uri uri) {
        Uri uri2 = null;
        if ((Build.VERSION.SDK_INT >= 19) && DocumentsContract.isDocumentUri(context, uri)) {
            if (w(uri)) {
                String[] split = DocumentsContract.getDocumentId(uri).split(":");
                if ("primary".equalsIgnoreCase(split[0])) {
                    return Environment.getExternalStorageDirectory() + net.lingala.zip4j.util.e.F0 + split[1];
                }
            } else if (v(uri)) {
                return l(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
            } else {
                if (A(uri)) {
                    String[] split2 = DocumentsContract.getDocumentId(uri).split(":");
                    String str = split2[0];
                    if ("image".equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if ("video".equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return l(context, uri2, "_id=?", new String[]{split2[1]});
                }
            }
        } else if ("content".equalsIgnoreCase(uri.getScheme())) {
            if (z(uri)) {
                return uri.getLastPathSegment();
            }
            return l(context, uri, null, null);
        } else if (com.facebook.common.util.f.f11767c.equalsIgnoreCase(uri.getScheme())) {
            return uri.getPath();
        }
        return null;
    }

    public static boolean t(char c4) {
        return c4 >= 19968 && c4 <= 40869;
    }

    public static boolean u(String str) {
        if (str == null) {
            return false;
        }
        for (char c4 : str.toCharArray()) {
            if (t(c4)) {
                return true;
            }
        }
        return false;
    }

    public static boolean v(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean w(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean x(String str) {
        if (d2.h(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    public static boolean y(String str) {
        if (d2.h(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isDirectory();
    }

    public static boolean z(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }
}
