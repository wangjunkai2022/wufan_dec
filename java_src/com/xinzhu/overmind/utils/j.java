package com.xinzhu.overmind.utils;

import android.os.Parcel;
import android.system.ErrnoException;
import android.system.Os;
import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Objects;
/* compiled from: FileUtils.java */
/* loaded from: classes.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static final String f64735a = "j";

    /* renamed from: b  reason: collision with root package name */
    public static final int f64736b = 448;

    /* renamed from: c  reason: collision with root package name */
    public static final int f64737c = 256;

    /* renamed from: d  reason: collision with root package name */
    public static final int f64738d = 128;

    /* renamed from: e  reason: collision with root package name */
    public static final int f64739e = 64;

    /* renamed from: f  reason: collision with root package name */
    public static final int f64740f = 56;

    /* renamed from: g  reason: collision with root package name */
    public static final int f64741g = 32;

    /* renamed from: h  reason: collision with root package name */
    public static final int f64742h = 16;

    /* renamed from: i  reason: collision with root package name */
    public static final int f64743i = 8;

    /* renamed from: j  reason: collision with root package name */
    public static final int f64744j = 7;

    /* renamed from: k  reason: collision with root package name */
    public static final int f64745k = 4;

    /* renamed from: l  reason: collision with root package name */
    public static final int f64746l = 2;

    /* renamed from: m  reason: collision with root package name */
    public static final int f64747m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static boolean f64748n = true;

    /* renamed from: o  reason: collision with root package name */
    private static final long f64749o = 524288;

    public static void a(String path, int mode) {
        try {
            Os.chmod(path, mode);
        } catch (ErrnoException e4) {
            e4.printStackTrace();
        }
    }

    public static long b(@NonNull File from, @NonNull File to) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(from);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(to);
            long f4 = f(fileInputStream, fileOutputStream);
            fileOutputStream.close();
            fileInputStream.close();
            return f4;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static long c(@NonNull FileDescriptor in2, @NonNull FileDescriptor out) throws IOException {
        return d(in2, out, Long.MAX_VALUE);
    }

    public static long d(@NonNull FileDescriptor in2, @NonNull FileDescriptor out, long count) throws IOException {
        return h(in2, out, count);
    }

    public static long e(InputStream inputStream, File target) throws IOException {
        return f(inputStream, new FileOutputStream(target));
    }

    public static long f(@NonNull InputStream in2, @NonNull OutputStream out) throws IOException {
        if (f64748n && (in2 instanceof FileInputStream) && (out instanceof FileOutputStream)) {
            return c(((FileInputStream) in2).getFD(), ((FileOutputStream) out).getFD());
        }
        return i(in2, out);
    }

    public static void g(File from, File target) throws IOException {
        if (from.equals(target)) {
            return;
        }
        File[] listFiles = from.listFiles();
        if (listFiles == null) {
            com.xinzhu.overmind.b.c(f64735a, "copyDirectory failed, source not exist");
            return;
        }
        p(target);
        for (File file : listFiles) {
            File file2 = new File(target, file.getName());
            if (file.isDirectory()) {
                g(file, file2);
            } else {
                b(file, file2);
            }
        }
    }

    private static long h(FileDescriptor in2, FileDescriptor out, long count) throws IOException {
        return i(new FileInputStream(in2), new FileOutputStream(out));
    }

    private static long i(InputStream in2, OutputStream out) throws IOException {
        byte[] bArr = new byte[8192];
        long j4 = 0;
        long j5 = 0;
        while (true) {
            int read = in2.read(bArr);
            if (read == -1) {
                return j4;
            }
            out.write(bArr, 0, read);
            long j6 = read;
            j4 += j6;
            j5 += j6;
            if (j5 >= 524288) {
                j5 = 0;
            }
        }
    }

    public static void j(File dir) {
        if (dir == null || !dir.exists()) {
            return;
        }
        l(dir);
    }

    public static void k(String dir) {
        j(new File(dir));
    }

    static void l(File fileOrDirectory) {
        try {
            if (fileOrDirectory.isDirectory() && !o(fileOrDirectory)) {
                for (File file : fileOrDirectory.listFiles()) {
                    l(file);
                }
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        fileOrDirectory.delete();
    }

    public static boolean m(String path) {
        return new File(path).exists();
    }

    public static String n(String filename) {
        int lastIndexOf;
        return (filename == null || filename.length() <= 0 || (lastIndexOf = filename.lastIndexOf(46)) <= -1 || lastIndexOf >= filename.length()) ? filename : filename.substring(0, lastIndexOf);
    }

    public static boolean o(File file) throws IOException {
        Objects.requireNonNull(file, "File must not be null");
        if (file.getParent() != null) {
            file = new File(file.getParentFile().getCanonicalFile(), file.getName());
        }
        return !file.getCanonicalFile().equals(file.getAbsoluteFile());
    }

    public static boolean p(File path) {
        if (path.exists()) {
            return true;
        }
        return path.mkdirs();
    }

    public static Parcel q(File file) throws IOException {
        Parcel obtain = Parcel.obtain();
        byte[] v3 = v(file);
        obtain.unmarshall(v3, 0, v3.length);
        obtain.setDataPosition(0);
        return obtain;
    }

    public static boolean r(File origFile, File newFile) {
        return origFile.renameTo(newFile);
    }

    public static int s(File path, int mode, int uid, int gid) {
        return u(path.getAbsolutePath(), mode, uid, gid);
    }

    public static int t(FileDescriptor fd, int mode, int uid, int gid) {
        try {
            Os.fchmod(fd, mode);
            if (uid >= 0 || gid >= 0) {
                try {
                    Os.fchown(fd, uid, gid);
                    return 0;
                } catch (ErrnoException e4) {
                    String str = f64735a;
                    com.xinzhu.overmind.b.l(str, "Failed to fchown(): " + e4);
                    return e4.errno;
                }
            }
            return 0;
        } catch (ErrnoException e5) {
            String str2 = f64735a;
            com.xinzhu.overmind.b.l(str2, "Failed to fchmod(): " + e5);
            return e5.errno;
        }
    }

    public static int u(String path, int mode, int uid, int gid) {
        try {
            Os.chmod(path, mode);
            if (uid >= 0 || gid >= 0) {
                try {
                    Os.chown(path, uid, gid);
                    return 0;
                } catch (ErrnoException e4) {
                    String str = f64735a;
                    com.xinzhu.overmind.b.l(str, "Failed to chown(" + path + "): " + e4);
                    return e4.errno;
                }
            }
            return 0;
        } catch (ErrnoException e5) {
            String str2 = f64735a;
            com.xinzhu.overmind.b.l(str2, "Failed to chmod(" + path + "): " + e5);
            return e5.errno;
        }
    }

    public static byte[] v(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return w(fileInputStream);
        } finally {
            l.b(fileInputStream);
        }
    }

    public static byte[] w(InputStream in2) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[100];
        while (true) {
            int read = in2.read(bArr, 0, 100);
            if (read <= 0) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        throw new java.io.FileNotFoundException("Failed to ensure directory: " + r3.getAbsolutePath());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void x(java.io.File r5, java.io.File r6) throws java.io.IOException {
        /*
            java.util.zip.ZipInputStream r0 = new java.util.zip.ZipInputStream
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream
            java.io.FileInputStream r2 = new java.io.FileInputStream
            r2.<init>(r5)
            r1.<init>(r2)
            r0.<init>(r1)
            r5 = 8192(0x2000, float:1.14794E-41)
            byte[] r5 = new byte[r5]     // Catch: java.lang.Throwable -> L7b
        L13:
            java.util.zip.ZipEntry r1 = r0.getNextEntry()     // Catch: java.lang.Throwable -> L7b
            if (r1 == 0) goto L77
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L7b
            java.lang.String r3 = r1.getName()     // Catch: java.lang.Throwable -> L7b
            r2.<init>(r6, r3)     // Catch: java.lang.Throwable -> L7b
            boolean r3 = r1.isDirectory()     // Catch: java.lang.Throwable -> L7b
            if (r3 == 0) goto L2a
            r3 = r2
            goto L2e
        L2a:
            java.io.File r3 = r2.getParentFile()     // Catch: java.lang.Throwable -> L7b
        L2e:
            boolean r4 = r3.isDirectory()     // Catch: java.lang.Throwable -> L7b
            if (r4 != 0) goto L56
            boolean r4 = r3.mkdirs()     // Catch: java.lang.Throwable -> L7b
            if (r4 == 0) goto L3b
            goto L56
        L3b:
            java.io.FileNotFoundException r5 = new java.io.FileNotFoundException     // Catch: java.lang.Throwable -> L7b
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7b
            r6.<init>()     // Catch: java.lang.Throwable -> L7b
            java.lang.String r1 = "Failed to ensure directory: "
            r6.append(r1)     // Catch: java.lang.Throwable -> L7b
            java.lang.String r1 = r3.getAbsolutePath()     // Catch: java.lang.Throwable -> L7b
            r6.append(r1)     // Catch: java.lang.Throwable -> L7b
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L7b
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L7b
            throw r5     // Catch: java.lang.Throwable -> L7b
        L56:
            boolean r1 = r1.isDirectory()     // Catch: java.lang.Throwable -> L7b
            if (r1 == 0) goto L5d
            goto L13
        L5d:
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L7b
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L7b
        L62:
            int r2 = r0.read(r5)     // Catch: java.lang.Throwable -> L72
            r3 = -1
            if (r2 == r3) goto L6e
            r3 = 0
            r1.write(r5, r3, r2)     // Catch: java.lang.Throwable -> L72
            goto L62
        L6e:
            r1.close()     // Catch: java.lang.Throwable -> L7b
            goto L13
        L72:
            r5 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> L7b
            throw r5     // Catch: java.lang.Throwable -> L7b
        L77:
            r0.close()
            return
        L7b:
            r5 = move-exception
            r0.close()
            goto L81
        L80:
            throw r5
        L81:
            goto L80
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.utils.j.x(java.io.File, java.io.File):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fa A[Catch: Exception -> 0x00fe, TRY_ENTER, TryCatch #1 {Exception -> 0x00fe, blocks: (B:57:0x00fa, B:61:0x0102, B:63:0x0107, B:65:0x010c, B:36:0x00d3, B:38:0x00d8, B:40:0x00dd, B:41:0x00e0), top: B:85:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0102 A[Catch: Exception -> 0x00fe, TryCatch #1 {Exception -> 0x00fe, blocks: (B:57:0x00fa, B:61:0x0102, B:63:0x0107, B:65:0x010c, B:36:0x00d3, B:38:0x00d8, B:40:0x00dd, B:41:0x00e0), top: B:85:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0107 A[Catch: Exception -> 0x00fe, TryCatch #1 {Exception -> 0x00fe, blocks: (B:57:0x00fa, B:61:0x0102, B:63:0x0107, B:65:0x010c, B:36:0x00d3, B:38:0x00d8, B:40:0x00dd, B:41:0x00e0), top: B:85:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x010c A[Catch: Exception -> 0x00fe, TRY_LEAVE, TryCatch #1 {Exception -> 0x00fe, blocks: (B:57:0x00fa, B:61:0x0102, B:63:0x0107, B:65:0x010c, B:36:0x00d3, B:38:0x00d8, B:40:0x00dd, B:41:0x00e0), top: B:85:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x011f A[Catch: Exception -> 0x011b, TryCatch #5 {Exception -> 0x011b, blocks: (B:71:0x0117, B:75:0x011f, B:77:0x0124, B:79:0x0129), top: B:87:0x0117 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0124 A[Catch: Exception -> 0x011b, TryCatch #5 {Exception -> 0x011b, blocks: (B:71:0x0117, B:75:0x011f, B:77:0x0124, B:79:0x0129), top: B:87:0x0117 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0129 A[Catch: Exception -> 0x011b, TRY_LEAVE, TryCatch #5 {Exception -> 0x011b, blocks: (B:71:0x0117, B:75:0x011f, B:77:0x0124, B:79:0x0129), top: B:87:0x0117 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0117 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.io.FileOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void y(java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.utils.j.y(java.lang.String, java.lang.String):void");
    }

    public static void z(Parcel p3, FileOutputStream os) throws IOException {
        os.write(p3.marshall());
    }
}
