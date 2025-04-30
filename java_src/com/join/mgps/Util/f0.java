package com.join.mgps.Util;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.MApplication;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa91.arc.util.SDCardUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* compiled from: FileOpenUtils.java */
/* loaded from: classes.dex */
public class f0 {
    public static void A(String str, String str2, String str3) throws IOException {
        if (ContextCompat.checkSelfPermission(MApplication.f9223q, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            File file = new File(str2, str);
            if (!file.exists()) {
                File file2 = new File(str2);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                file.createNewFile();
            } else {
                delete(file);
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(str3.getBytes());
            fileOutputStream.close();
        }
    }

    public static void a(String str, String str2) throws IOException {
        new File(str2).mkdirs();
        File[] listFiles = new File(str).listFiles();
        PrintStream printStream = System.out;
        printStream.println("sourceDir   " + str);
        for (int i2 = 0; i2 < listFiles.length; i2++) {
            if (listFiles[i2].isFile()) {
                File file = listFiles[i2];
                d(file, new File(new File(str2).getAbsolutePath() + File.separator + listFiles[i2].getName()));
            }
            if (listFiles[i2].isDirectory()) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                String str3 = File.separator;
                sb.append(str3);
                sb.append(listFiles[i2].getName());
                String sb2 = sb.toString();
                a(sb2, new File(str2).getAbsolutePath() + str3 + listFiles[i2].getName());
            }
        }
    }

    public static void b(String str, String str2, String str3) throws IOException {
        new File(str2).mkdirs();
        File[] listFiles = new File(str).listFiles();
        PrintStream printStream = System.out;
        printStream.println("sourceDir   " + str);
        for (int i2 = 0; i2 < listFiles.length; i2++) {
            if (listFiles[i2].isFile()) {
                File file = listFiles[i2];
                c(file, new File(new File(str2).getAbsolutePath() + File.separator + listFiles[i2].getName()), str3);
            }
            if (listFiles[i2].isDirectory()) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                String str4 = File.separator;
                sb.append(str4);
                sb.append(listFiles[i2].getName());
                String sb2 = sb.toString();
                b(sb2, new File(str2).getAbsolutePath() + str4 + listFiles[i2].getName(), str3);
            }
        }
    }

    private static void c(File file, File file2, String str) throws IOException {
        String path = file.getPath();
        if (path.startsWith(g0.f27568a)) {
            return;
        }
        if (d2.i(str)) {
            if (path.endsWith(str + ".zip")) {
                return;
            }
            if (path.endsWith(str + ".iso")) {
                return;
            }
            if (path.endsWith(str + ".ISO")) {
                return;
            }
            if (path.endsWith(str + ".bin")) {
                return;
            }
            if (path.endsWith(str + ".cue")) {
                return;
            }
            if (path.endsWith(str + ".pbp")) {
                return;
            }
            if (path.endsWith(str + ".img")) {
                return;
            }
            if (path.endsWith(str + ".mdf")) {
                return;
            }
            if (path.endsWith(str + ".wsc")) {
                return;
            }
            if (path.endsWith(str + ".ws")) {
                return;
            }
            if (path.endsWith(str + ".nds")) {
                return;
            }
            if (path.endsWith(str + ".z64")) {
                return;
            }
            if (path.endsWith(str + ".n64")) {
                return;
            }
        }
        if (file.length() > 20971520) {
            return;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
        byte[] bArr = new byte[5120];
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read != -1) {
                bufferedOutputStream.write(bArr, 0, read);
            } else {
                bufferedOutputStream.flush();
                bufferedInputStream.close();
                bufferedOutputStream.close();
                fileOutputStream.close();
                fileInputStream.close();
                return;
            }
        }
    }

    private static void d(File file, File file2) throws IOException {
        file.getPath();
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
        byte[] bArr = new byte[5120];
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read != -1) {
                bufferedOutputStream.write(bArr, 0, read);
            } else {
                bufferedOutputStream.flush();
                bufferedInputStream.close();
                bufferedOutputStream.close();
                fileOutputStream.close();
                fileInputStream.close();
                return;
            }
        }
    }

    public static void delete(File file) {
        if (file.isFile()) {
            File file2 = new File(file.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
            file.renameTo(file2);
            try {
                file2.delete();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length != 0) {
                for (File file3 : listFiles) {
                    delete(file3);
                }
                File file4 = new File(file.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                file.renameTo(file4);
                try {
                    file4.delete();
                    return;
                } catch (Exception e5) {
                    e5.printStackTrace();
                    return;
                }
            }
            try {
                File file5 = new File(file.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                file.renameTo(file5);
                file5.delete();
            } catch (Exception e6) {
                e6.printStackTrace();
            }
        }
    }

    private static void e(String str, String str2) {
        File file = new File(str);
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            for (int i2 = 0; i2 < listFiles.length; i2++) {
                long lastModified = listFiles[i2].lastModified();
                File file2 = new File(str2 + net.lingala.zip4j.util.e.F0 + listFiles[i2].getName());
                listFiles[i2].renameTo(file2);
                file2.setLastModified(lastModified);
            }
        }
    }

    public static void f(String str, String str2, int i2) {
        try {
            File file = new File(str);
            String parent = file.getParent();
            new ArrayList();
            String externalStorageDirectory = SDCardUtil.getExternalStorageDirectory(MApplication.n());
            String substring = file.getName().substring(0, file.getName().lastIndexOf(g0.f27568a));
            String str3 = externalStorageDirectory + "/papa91/" + UtilsMy.w1(i2) + File.separator + substring;
            File file2 = new File(str3);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            File[] listFiles = new File(parent).listFiles();
            for (int i4 = 0; i4 < listFiles.length; i4++) {
                if (listFiles[i4].isFile()) {
                    c(listFiles[i4], new File(str3 + File.separator + listFiles[i4].getName()), str2);
                }
                if (listFiles[i4].isDirectory()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(parent);
                    String str4 = File.separator;
                    sb.append(str4);
                    sb.append(listFiles[i4].getName());
                    String sb2 = sb.toString();
                    String str5 = str3 + str4 + listFiles[i4].getName();
                    System.out.println("sorceDir   " + sb2);
                    System.out.println("targetDir   " + str5);
                    b(sb2, str5, str2);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
        if (r1.createNewFile() != false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0025 A[Catch: IOException -> 0x0033, all -> 0x0039, TryCatch #0 {IOException -> 0x0033, blocks: (B:6:0x0012, B:8:0x0019, B:14:0x0025, B:16:0x002b), top: B:26:0x0012, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized boolean g(java.lang.String r5) {
        /*
            java.lang.Class<com.join.mgps.Util.f0> r0 = com.join.mgps.Util.f0.class
            monitor-enter(r0)
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L39
            r1.<init>(r5)     // Catch: java.lang.Throwable -> L39
            java.io.File r5 = new java.io.File     // Catch: java.lang.Throwable -> L39
            java.lang.String r2 = r1.getParent()     // Catch: java.lang.Throwable -> L39
            r5.<init>(r2)     // Catch: java.lang.Throwable -> L39
            r2 = 0
            boolean r3 = r5.exists()     // Catch: java.io.IOException -> L33 java.lang.Throwable -> L39
            r4 = 1
            if (r3 != 0) goto L22
            boolean r5 = r5.mkdirs()     // Catch: java.io.IOException -> L33 java.lang.Throwable -> L39
            if (r5 == 0) goto L20
            goto L22
        L20:
            r5 = 0
            goto L23
        L22:
            r5 = 1
        L23:
            if (r5 == 0) goto L37
            boolean r5 = r1.exists()     // Catch: java.io.IOException -> L33 java.lang.Throwable -> L39
            if (r5 != 0) goto L31
            boolean r5 = r1.createNewFile()     // Catch: java.io.IOException -> L33 java.lang.Throwable -> L39
            if (r5 == 0) goto L37
        L31:
            r2 = 1
            goto L37
        L33:
            r5 = move-exception
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L39
        L37:
            monitor-exit(r0)
            return r2
        L39:
            r5 = move-exception
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.f0.g(java.lang.String):boolean");
    }

    private static File h(Context context, InputStream inputStream, String str) throws IOException {
        if (inputStream == null) {
            return null;
        }
        byte[] bArr = new byte[8192];
        File file = new File(context.getCacheDir(), str);
        if (file.exists()) {
            file.delete();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                fileOutputStream.write(bArr, 0, read);
            } else {
                fileOutputStream.flush();
                try {
                    fileOutputStream.close();
                    return file;
                } catch (IOException e4) {
                    e4.printStackTrace();
                    return file;
                }
            }
        }
    }

    public static boolean i(String str) {
        File file;
        InputStream inputStream;
        String str2;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                String str3 = Environment.getExternalStorageDirectory() + "";
                file = new File(str3 + net.lingala.zip4j.util.e.F0 + "mgpapa/papaweb/" + net.lingala.zip4j.util.e.F0 + "papawebFile.zip");
                inputStream = ((HttpURLConnection) new URL(str).openConnection()).getInputStream();
                if (file.exists()) {
                    UtilsMy.delete(file);
                }
                str2 = str3 + net.lingala.zip4j.util.e.F0 + "mgpapa/papaweb/";
                new File(str2).mkdir();
                file.createNewFile();
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (MalformedURLException e4) {
            e = e4;
        } catch (IOException e5) {
            e = e5;
        }
        try {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 4096);
                    if (read <= 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.flush();
                try {
                    fileOutputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
                try {
                    bufferedInputStream.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
                boolean g4 = s2.g(file, str2);
                UtilsMy.delete(file);
                try {
                    fileOutputStream.close();
                } catch (IOException e8) {
                    e8.printStackTrace();
                }
                return g4;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                try {
                    fileOutputStream2.close();
                } catch (IOException e9) {
                    e9.printStackTrace();
                }
                throw th;
            }
        } catch (MalformedURLException e10) {
            e = e10;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            try {
                fileOutputStream2.close();
            } catch (IOException e11) {
                e11.printStackTrace();
            }
            return false;
        } catch (IOException e12) {
            e = e12;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            try {
                fileOutputStream2.close();
            } catch (IOException e13) {
                e13.printStackTrace();
            }
            return false;
        }
    }

    private static boolean j(String str) {
        if (str.endsWith("hookj") || str.endsWith("nbbatman") || str.endsWith("uccops") || str.endsWith("inhunt") || str.endsWith("ssoldier")) {
            return true;
        }
        return new File(str.substring(0, str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1) + "fba_v2.cfg").exists();
    }

    private static String k(String str) {
        String[] strArr = {"ftsc3", "lkrexe2", "lkrexe3"};
        if (Build.VERSION.SDK_INT >= 23) {
            return "vba";
        }
        StringBuilder sb = new StringBuilder();
        String str2 = File.separator;
        sb.append(str2);
        sb.append("kdygmyhbs3");
        if (str.endsWith(sb.toString())) {
            return "vba";
        }
        if (str.substring(str.lastIndexOf(str2) + 1).startsWith("kdyg")) {
            return "";
        }
        for (int i2 = 0; i2 < 3; i2++) {
            if (str.endsWith(File.separator + strArr[i2])) {
                return "";
            }
        }
        Date date = null;
        Date date2 = null;
        for (int i4 = 0; i4 <= 100; i4++) {
            File file = new File(str + g0.f27568a + i4);
            if (file.exists()) {
                Date date3 = new Date(file.lastModified());
                if (date2 == null || date3.after(date2)) {
                    date2 = date3;
                }
            }
        }
        for (int i5 = 0; i5 <= 100; i5++) {
            File file2 = new File(str + "vba." + i5);
            if (file2.exists()) {
                Date date4 = new Date(file2.lastModified());
                if (date == null || date4.after(date)) {
                    date = date4;
                }
            }
        }
        return (date2 == null || date == null) ? date2 == null ? "vba" : "" : date2.after(date) ? "" : "vba";
    }

    public static List<RomArchived> l(String str, String str2) {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        if (d2.h(str2)) {
            return arrayList;
        }
        String v3 = UtilsMy.v3(str2);
        StringBuilder sb = new StringBuilder();
        sb.append(ConstantIntEnum.MD.value());
        sb.append("");
        boolean u3 = sb.toString().equals(str) ? u(v3) : false;
        if ((ConstantIntEnum.FBA.value() + "").equals(str)) {
            u3 = j(v3);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(ConstantIntEnum.GBA.value());
        sb2.append("");
        boolean z3 = sb2.toString().equals(str) ? !d2.h(k(v3)) : false;
        String w12 = UtilsMy.w1(Integer.parseInt(str));
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(externalStorageDirectory.getAbsolutePath());
        String str3 = File.separator;
        sb3.append(str3);
        sb3.append("papa91");
        sb3.append(str3);
        sb3.append(w12);
        sb3.append(str3);
        String sb4 = sb3.toString();
        String substring = v3.substring(v3.lastIndexOf(47) + 1, v3.length());
        File file = new File(sb4 + substring);
        if (!file.exists()) {
            file.mkdirs();
        }
        String str4 = new String(sb4 + substring + str3 + substring);
        for (File file2 : file.listFiles()) {
            String name = file2.getName();
            StringBuilder sb5 = new StringBuilder();
            sb5.append(ConstantIntEnum.GBA.value());
            sb5.append("");
            boolean matches = sb5.toString().equals(str) ? Pattern.compile("save.*dat").matcher(name).matches() : false;
            if (name.endsWith(".fs") || name.endsWith(".sav") || name.endsWith(".dsv") || name.endsWith(".brm") || name.endsWith(".srm") || name.endsWith(".eep") || matches) {
                RomArchived romArchived = new RomArchived();
                romArchived.setArchivedPath(file2.getAbsolutePath());
                if (!TextUtils.isEmpty(romArchived.getArchivedPath())) {
                    File file3 = new File(romArchived.getArchivedPath());
                    if (file3.exists()) {
                        romArchived.setSize(file3.length());
                        romArchived.setMd5(v0.c(file3));
                        romArchived.setFileName(file3.getName());
                    }
                }
                arrayList.add(romArchived);
            }
        }
        String v4 = v(str4, z3, u3);
        if (TextUtils.isEmpty(v4)) {
            return arrayList;
        }
        for (String str5 : v4.split(";")) {
            String[] split = str5.split(",");
            RomArchived romArchived2 = new RomArchived();
            for (int i2 = 0; i2 < split.length; i2++) {
                try {
                    if (i2 == 0) {
                        romArchived2.setArchivedPath(split[0]);
                    }
                    if (i2 == 1) {
                        romArchived2.setArchivedImagePath(split[1]);
                    }
                    if (i2 == 2) {
                        romArchived2.setArchivedTime(split[2]);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            long j4 = 0;
            if (!TextUtils.isEmpty(romArchived2.getArchivedPath())) {
                File file4 = new File(romArchived2.getArchivedPath());
                if (file4.exists()) {
                    j4 = file4.length();
                    romArchived2.setFileName(file4.getName());
                    romArchived2.setMd5(v0.c(file4));
                }
            }
            if (!TextUtils.isEmpty(romArchived2.getArchivedImagePath())) {
                File file5 = new File(romArchived2.getArchivedImagePath());
                if (file5.exists()) {
                    j4 += file5.length();
                }
            }
            romArchived2.setSize(j4);
            arrayList.add(romArchived2);
        }
        return arrayList;
    }

    public static List<RomArchived> m(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        if (d2.h(str2)) {
            return arrayList;
        }
        String v3 = UtilsMy.v3(str2);
        StringBuilder sb = new StringBuilder();
        sb.append(ConstantIntEnum.MD.value());
        sb.append("");
        boolean u3 = sb.toString().equals(str) ? u(v3) : false;
        if ((ConstantIntEnum.FBA.value() + "").equals(str)) {
            u3 = j(v3);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(ConstantIntEnum.GBA.value());
        sb2.append("");
        boolean z3 = sb2.toString().equals(str) ? !d2.h(k(v3)) : false;
        String w12 = UtilsMy.w1(Integer.parseInt(str));
        File file = new File(u.f27845d);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(file.getAbsolutePath());
        String str3 = File.separator;
        sb3.append(str3);
        sb3.append("papa91");
        sb3.append(str3);
        sb3.append(w12);
        sb3.append(str3);
        String sb4 = sb3.toString();
        String substring = v3.substring(v3.lastIndexOf(47) + 1, v3.length());
        File file2 = new File(sb4 + substring);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        String str4 = new String(sb4 + substring + str3 + substring);
        file2.listFiles();
        String w3 = w(str4, z3, u3);
        if (TextUtils.isEmpty(w3)) {
            return arrayList;
        }
        for (String str5 : w3.split(";")) {
            String[] split = str5.split(",");
            RomArchived romArchived = new RomArchived();
            for (int i2 = 0; i2 < split.length; i2++) {
                try {
                    if (i2 == 0) {
                        romArchived.setArchivedPath(split[0]);
                    }
                    if (i2 == 1) {
                        romArchived.setArchivedImagePath(split[1]);
                    }
                    if (i2 == 2) {
                        romArchived.setArchivedTime(split[2]);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            long j4 = 0;
            if (!TextUtils.isEmpty(romArchived.getArchivedPath())) {
                File file3 = new File(romArchived.getArchivedPath());
                if (file3.exists()) {
                    j4 = file3.length();
                    romArchived.setFileName(file3.getName());
                    romArchived.setMd5(v0.c(file3));
                }
            }
            if (!TextUtils.isEmpty(romArchived.getArchivedImagePath())) {
                File file4 = new File(romArchived.getArchivedImagePath());
                if (file4.exists()) {
                    j4 += file4.length();
                }
            }
            romArchived.setSize(j4);
            arrayList.add(romArchived);
        }
        return arrayList;
    }

    private static File n(Uri uri, Context context) {
        String str;
        if (uri == null) {
            return null;
        }
        String[] strArr = {"_data", "_display_name"};
        Cursor query = context.getContentResolver().query(uri, strArr, null, null, null);
        if (query != null) {
            query.moveToFirst();
            try {
                str = query.getString(query.getColumnIndex(strArr[0]));
            } catch (Exception unused) {
                str = null;
            }
            String string = query.getString(query.getColumnIndex(strArr[1]));
            query.close();
            File file = d2.h(str) ? null : new File(str);
            if (file == null || !file.exists() || file.length() <= 0 || TextUtils.isEmpty(str)) {
                str = p(context, uri, string);
            }
            return !TextUtils.isEmpty(str) ? new File(str) : file;
        }
        return null;
    }

    public static File o(Uri uri, Context context) {
        if (uri == null) {
            return null;
        }
        String scheme = uri.getScheme();
        scheme.hashCode();
        if (scheme.equals(com.facebook.common.util.f.f11767c)) {
            return new File(uri.getPath());
        }
        if (scheme.equals("content")) {
            return n(uri, context);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0028, code lost:
        if (r3 == null) goto L3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
        if (r3 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
        r3.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String p(android.content.Context r2, android.net.Uri r3, java.lang.String r4) {
        /*
            java.lang.String r0 = r3.getAuthority()
            r1 = 0
            if (r0 == 0) goto L2b
            android.content.ContentResolver r0 = r2.getContentResolver()     // Catch: java.lang.Throwable -> L20 java.lang.Exception -> L27
            java.io.InputStream r3 = r0.openInputStream(r3)     // Catch: java.lang.Throwable -> L20 java.lang.Exception -> L27
            java.io.File r2 = h(r2, r3, r4)     // Catch: java.lang.Throwable -> L1d java.lang.Exception -> L28
            java.lang.String r1 = r2.getPath()     // Catch: java.lang.Throwable -> L1d java.lang.Exception -> L28
            if (r3 == 0) goto L2b
        L19:
            r3.close()     // Catch: java.lang.Exception -> L2b
            goto L2b
        L1d:
            r2 = move-exception
            r1 = r3
            goto L21
        L20:
            r2 = move-exception
        L21:
            if (r1 == 0) goto L26
            r1.close()     // Catch: java.lang.Exception -> L26
        L26:
            throw r2
        L27:
            r3 = r1
        L28:
            if (r3 == 0) goto L2b
            goto L19
        L2b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.Util.f0.p(android.content.Context, android.net.Uri, java.lang.String):java.lang.String");
    }

    public static List<String> q(String str, String str2, List<String> list) {
        File[] listFiles;
        try {
            for (File file : new File(str).listFiles()) {
                if (file.isFile()) {
                    if (file.getPath().substring(file.getPath().length() - str2.length()).equals(str2)) {
                        list.add(file.getAbsolutePath());
                    }
                } else if (file.isDirectory() && file.getPath().indexOf("/.") == -1) {
                    q(file.getPath(), str2, list);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return list;
    }

    public static List<String> r(String str, List<String> list, List<String> list2) {
        File[] listFiles;
        try {
            listFiles = new File(str).listFiles();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (listFiles != null && listFiles.length != 0) {
            for (File file : listFiles) {
                if (file.isFile()) {
                    if (file.getPath().endsWith(net.lingala.zip4j.util.e.F0)) {
                        file.getPath().substring(0, file.getPath().length() - 1);
                    }
                    if (list.contains(file.getPath().substring(file.getPath().lastIndexOf(net.lingala.zip4j.util.e.F0) + 1))) {
                        list2.add(file.getAbsolutePath());
                    }
                } else if (file.isDirectory() && file.getPath().indexOf("/.") == -1) {
                    r(file.getPath(), list, list2);
                }
            }
            return list2;
        }
        return list2;
    }

    public static String s(String str, int i2) {
        File file = new File(str);
        String externalStorageDirectory = SDCardUtil.getExternalStorageDirectory(MApplication.n());
        String substring = file.getName().substring(0, file.getName().lastIndexOf(g0.f27568a));
        String w12 = UtilsMy.w1(i2);
        return externalStorageDirectory + "/papa91/" + w12 + File.separator + substring;
    }

    public static List<File> t(String str, List<File> list) {
        File[] listFiles;
        try {
            for (File file : new File(str).listFiles()) {
                if (file.isFile()) {
                    String path = file.getPath();
                    if (!path.startsWith(g0.f27568a)) {
                        if (!path.endsWith(".zip")) {
                            if (!path.endsWith(".iso")) {
                                if (!path.endsWith(".ISO")) {
                                    if (!path.endsWith(".bin")) {
                                        if (!path.endsWith(".cue")) {
                                            if (!path.endsWith(".pbp")) {
                                                if (!path.endsWith(".img")) {
                                                    if (!path.endsWith(".mdf")) {
                                                        if (!path.endsWith(".wsc")) {
                                                            if (!path.endsWith(".ws") && file.length() <= 20971520) {
                                                                list.add(file);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else if (file.isDirectory()) {
                    t(file.getPath(), list);
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return list;
    }

    private static boolean u(String str) {
        String[] strArr = {"szfy", "sgz3", "lb3", "qgqs97", "qgqs98", "mhzx4"};
        for (int i2 = 0; i2 < 6; i2++) {
            if (str.endsWith(strArr[i2])) {
                return true;
            }
        }
        return new File(str.substring(0, str.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1) + "md_v2.cfg").exists();
    }

    private static String v(String str, boolean z3, boolean z4) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        int i2;
        String str9 = str;
        String str10 = "";
        if (str9 != null && str.length() > 0) {
            String str11 = net.lingala.zip4j.util.e.F0;
            int i4 = 0;
            File file = new File(str9.substring(0, str9.lastIndexOf(net.lingala.zip4j.util.e.F0)));
            if (!file.isDirectory()) {
                return "";
            }
            File[] listFiles = file.listFiles();
            int i5 = 0;
            while (i5 < listFiles.length - 1) {
                int i6 = i5 + 1;
                for (int i7 = i6; i7 < listFiles.length; i7++) {
                    if (listFiles[i5].lastModified() > listFiles[i7].lastModified()) {
                        File file2 = listFiles[i7];
                        listFiles[i7] = listFiles[i5];
                        listFiles[i5] = file2;
                    }
                }
                i5 = i6;
            }
            if (z3) {
                str2 = str9 + "vba";
                str9 = str9 + "vba";
            } else {
                str2 = str9;
            }
            String str12 = "_v2";
            if (z4) {
                str9 = str9 + "_v2";
                str2 = str2 + "_v2";
            }
            String str13 = null;
            String str14 = null;
            int i8 = 0;
            while (i8 < listFiles.length) {
                if (listFiles[i8].isFile() && listFiles[i8].getName().contains(g0.f27568a)) {
                    String absolutePath = listFiles[i8].getAbsolutePath();
                    String substring = absolutePath.substring(absolutePath.lastIndexOf(g0.f27568a) + 1, absolutePath.length());
                    String substring2 = absolutePath.substring(i4, absolutePath.lastIndexOf(g0.f27568a));
                    if (substring2.equals(str9 + "_lob")) {
                        str7 = str9 + "_lob";
                        str8 = str2 + "_lob";
                    } else {
                        if (substring2.equals(str9 + "_net")) {
                            str7 = str9 + "_net";
                            str8 = str2 + "_net";
                        } else {
                            if (substring2.equals(str9 + str12)) {
                                str7 = str9 + str12;
                                str8 = str2 + str12;
                            } else {
                                str7 = str9;
                                str8 = str2;
                            }
                        }
                    }
                    if (substring2.equals(str7)) {
                        try {
                            i2 = Integer.parseInt(listFiles[i8].getName().substring(listFiles[i8].getName().lastIndexOf(g0.f27568a) + 1));
                        } catch (Exception unused) {
                            i2 = -1;
                        }
                        if (i2 != -1) {
                            str6 = str12;
                            String format = new SimpleDateFormat("yyyy-MM-dd HH:mm").format((java.util.Date) new Date(listFiles[i8].lastModified()));
                            if (i2 == 0) {
                                str10 = (listFiles[i8].getAbsolutePath() + "," + listFiles[i8].getAbsolutePath() + ".png," + format + ";") + str10;
                                str3 = str9;
                                str4 = str11;
                                str5 = str2;
                            } else {
                                str3 = str9;
                                int lastIndexOf = substring2.lastIndexOf(47);
                                if (str13 == null) {
                                    str13 = new String(substring2.substring(0, lastIndexOf));
                                }
                                if (str14 == null) {
                                    str14 = new String(substring2 + "TmpState");
                                }
                                str5 = str2;
                                File file3 = new File(substring2 + "TmpState");
                                if (!file3.exists()) {
                                    file3.mkdirs();
                                }
                                int lastIndexOf2 = substring2.lastIndexOf(47);
                                String str15 = str14 + str11 + substring2.substring(lastIndexOf2 + 1, str8.length()) + g0.f27568a + substring;
                                String str16 = str15 + ".png";
                                String str17 = substring2 + g0.f27568a + substring;
                                String str18 = str17 + ".png";
                                listFiles[i8].toString();
                                String str19 = listFiles[i8].toString() + ".png";
                                long lastModified = listFiles[i8].lastModified();
                                str4 = str11;
                                File file4 = new File(str15);
                                if (listFiles[i8].exists()) {
                                    listFiles[i8].renameTo(file4);
                                    file4.setLastModified(lastModified);
                                }
                                File file5 = new File(str19);
                                long lastModified2 = file5.lastModified();
                                File file6 = new File(str16);
                                if (file5.exists()) {
                                    file5.renameTo(file6);
                                    file6.setLastModified(lastModified2);
                                }
                                str10 = (str10 + str17 + "," + str18 + "," + format) + ";";
                            }
                            i8++;
                            str12 = str6;
                            str2 = str5;
                            str9 = str3;
                            str11 = str4;
                            i4 = 0;
                        }
                    }
                }
                str3 = str9;
                str4 = str11;
                str5 = str2;
                str6 = str12;
                i8++;
                str12 = str6;
                str2 = str5;
                str9 = str3;
                str11 = str4;
                i4 = 0;
            }
            if (str13 != null && str14 != null) {
                e(str14, str13);
            }
        }
        return str10;
    }

    private static String w(String str, boolean z3, boolean z4) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        int i2;
        String str9 = str;
        String str10 = "";
        if (str9 != null && str.length() > 0) {
            String str11 = net.lingala.zip4j.util.e.F0;
            int i4 = 0;
            File file = new File(str9.substring(0, str9.lastIndexOf(net.lingala.zip4j.util.e.F0)));
            if (!file.isDirectory()) {
                return "";
            }
            File[] listFiles = file.listFiles();
            int i5 = 0;
            while (i5 < listFiles.length - 1) {
                int i6 = i5 + 1;
                for (int i7 = i6; i7 < listFiles.length; i7++) {
                    if (listFiles[i5].lastModified() > listFiles[i7].lastModified()) {
                        File file2 = listFiles[i7];
                        listFiles[i7] = listFiles[i5];
                        listFiles[i5] = file2;
                    }
                }
                i5 = i6;
            }
            if (z3) {
                str2 = str9 + "vba";
                str9 = str9 + "vba";
            } else {
                str2 = str9;
            }
            String str12 = "_v2";
            if (z4) {
                str9 = str9 + "_v2";
                str2 = str2 + "_v2";
            }
            String str13 = null;
            String str14 = null;
            int i8 = 0;
            while (i8 < listFiles.length) {
                if (listFiles[i8].isFile() && listFiles[i8].getName().contains(g0.f27568a)) {
                    String absolutePath = listFiles[i8].getAbsolutePath();
                    String substring = absolutePath.substring(absolutePath.lastIndexOf(g0.f27568a) + 1, absolutePath.length());
                    String substring2 = absolutePath.substring(i4, absolutePath.lastIndexOf(g0.f27568a));
                    if (substring2.equals(str9 + str12)) {
                        str7 = str9 + str12;
                        str8 = str2 + str12;
                    } else {
                        str7 = str9;
                        str8 = str2;
                    }
                    if (substring2.equals(str7)) {
                        try {
                            i2 = Integer.parseInt(listFiles[i8].getName().substring(listFiles[i8].getName().lastIndexOf(g0.f27568a) + 1));
                        } catch (Exception unused) {
                            i2 = -1;
                        }
                        if (i2 != -1) {
                            str6 = str12;
                            String format = new SimpleDateFormat("MM月dd日 HH:mm").format((java.util.Date) new Date(listFiles[i8].lastModified()));
                            if (i2 == 0) {
                                str10 = (listFiles[i8].getAbsolutePath() + "," + listFiles[i8].getAbsolutePath() + ".png," + format + ";") + str10;
                                str3 = str9;
                                str4 = str11;
                                str5 = str2;
                            } else {
                                str3 = str9;
                                int lastIndexOf = substring2.lastIndexOf(47);
                                if (str13 == null) {
                                    str13 = new String(substring2.substring(0, lastIndexOf));
                                }
                                if (str14 == null) {
                                    str14 = new String(substring2 + "TmpState");
                                }
                                str5 = str2;
                                File file3 = new File(substring2 + "TmpState");
                                if (!file3.exists()) {
                                    file3.mkdirs();
                                }
                                int lastIndexOf2 = substring2.lastIndexOf(47);
                                String str15 = str14 + str11 + substring2.substring(lastIndexOf2 + 1, str8.length()) + g0.f27568a + substring;
                                String str16 = str15 + ".png";
                                String str17 = substring2 + g0.f27568a + substring;
                                String str18 = str17 + ".png";
                                listFiles[i8].toString();
                                String str19 = listFiles[i8].toString() + ".png";
                                long lastModified = listFiles[i8].lastModified();
                                str4 = str11;
                                File file4 = new File(str15);
                                if (listFiles[i8].exists()) {
                                    listFiles[i8].renameTo(file4);
                                    file4.setLastModified(lastModified);
                                }
                                File file5 = new File(str19);
                                long lastModified2 = file5.lastModified();
                                File file6 = new File(str16);
                                if (file5.exists()) {
                                    file5.renameTo(file6);
                                    file6.setLastModified(lastModified2);
                                }
                                str10 = (str10 + str17 + "," + str18 + "," + format) + ";";
                            }
                            i8++;
                            str12 = str6;
                            str2 = str5;
                            str9 = str3;
                            str11 = str4;
                            i4 = 0;
                        }
                    }
                }
                str3 = str9;
                str4 = str11;
                str5 = str2;
                str6 = str12;
                i8++;
                str12 = str6;
                str2 = str5;
                str9 = str3;
                str11 = str4;
                i4 = 0;
            }
            if (str13 != null && str14 != null) {
                e(str14, str13);
            }
        }
        return str10;
    }

    public static String x(Context context, String str) throws IOException {
        if (ContextCompat.checkSelfPermission(MApplication.f9223q, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            return "";
        }
        FileInputStream fileInputStream = new FileInputStream(str);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = fileInputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return new String(byteArrayOutputStream.toByteArray());
            }
        }
    }

    public static String y(String str) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        File file = new File(str);
        if (file.exists()) {
            FileInputStream fileInputStream = new FileInputStream(file);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                stringBuffer.append(readLine);
            }
            fileInputStream.close();
        }
        return stringBuffer.toString();
    }

    public void z(Context context, String str, String str2) throws IOException {
        FileOutputStream openFileOutput = context.openFileOutput(str, 0);
        openFileOutput.write(str2.getBytes());
        openFileOutput.close();
    }
}
