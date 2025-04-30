package com.facebook.soloader;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Parcel;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
/* loaded from: classes2.dex */
public final class SysUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final byte f13538a = 1;

    @DoNotOptimize
    @TargetApi(21)
    /* loaded from: classes2.dex */
    private static final class LollipopSysdeps {
        private LollipopSysdeps() {
        }

        @DoNotOptimize
        public static void fallocateIfSupported(FileDescriptor fileDescriptor, long j4) throws IOException {
            int i2;
            try {
                Os.posix_fallocate(fileDescriptor, 0L, j4);
            } catch (ErrnoException e4) {
                if (e4.errno != OsConstants.EOPNOTSUPP && (i2 = e4.errno) != OsConstants.ENOSYS && i2 != OsConstants.EINVAL) {
                    throw new IOException(e4.toString(), e4);
                }
            }
        }

        @DoNotOptimize
        public static String[] getSupportedAbis() {
            return Build.SUPPORTED_ABIS;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RandomAccessFile randomAccessFile, InputStream inputStream, int i2, byte[] bArr) throws IOException {
        int i4 = 0;
        while (i4 < i2) {
            int read = inputStream.read(bArr, 0, Math.min(bArr.length, i2 - i4));
            if (read == -1) {
                break;
            }
            randomAccessFile.write(bArr, 0, read);
            i4 += read;
        }
        return i4;
    }

    public static void b(File file) throws IOException {
        if (file.delete()) {
            return;
        }
        throw new IOException("could not delete file " + file);
    }

    public static void c(File file) throws IOException {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file2 : listFiles) {
                c(file2);
            }
        }
        if (file.delete() || !file.exists()) {
            return;
        }
        throw new IOException("could not delete: " + file);
    }

    public static void d(FileDescriptor fileDescriptor, long j4) throws IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            LollipopSysdeps.fallocateIfSupported(fileDescriptor, j4);
        }
    }

    public static int e(String[] strArr, String str) {
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (strArr[i2] != null && str.equals(strArr[i2])) {
                return i2;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(File file) throws IOException {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    f(file2);
                }
                return;
            }
            throw new IOException("cannot list directory " + file);
        } else if (!file.getPath().endsWith("_lock")) {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f73017f0);
            try {
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
    }

    public static int g(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                return packageManager.getPackageInfo(context.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            }
        }
        return 0;
    }

    public static String[] h() {
        return Build.VERSION.SDK_INT < 21 ? new String[]{Build.CPU_ABI, Build.CPU_ABI2} : LollipopSysdeps.getSupportedAbis();
    }

    public static byte[] i(File file, Context context) throws IOException {
        File canonicalFile = file.getCanonicalFile();
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeByte((byte) 1);
            obtain.writeString(canonicalFile.getPath());
            obtain.writeLong(canonicalFile.lastModified());
            obtain.writeInt(g(context));
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(File file) throws IOException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        throw new IOException("cannot mkdir: " + file);
    }
}
