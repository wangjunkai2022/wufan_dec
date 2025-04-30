package com.facebook.common.statfs;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.facebook.common.internal.m;
import java.io.File;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public class StatFsHelper {

    /* renamed from: h  reason: collision with root package name */
    public static final int f11741h = 400;

    /* renamed from: i  reason: collision with root package name */
    public static final long f11742i = 419430400;

    /* renamed from: j  reason: collision with root package name */
    private static StatFsHelper f11743j;

    /* renamed from: k  reason: collision with root package name */
    private static final long f11744k = TimeUnit.MINUTES.toMillis(2);

    /* renamed from: b  reason: collision with root package name */
    private volatile File f11746b;

    /* renamed from: d  reason: collision with root package name */
    private volatile File f11748d;
    @GuardedBy("lock")

    /* renamed from: e  reason: collision with root package name */
    private long f11749e;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private volatile StatFs f11745a = null;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private volatile StatFs f11747c = null;

    /* renamed from: g  reason: collision with root package name */
    private volatile boolean f11751g = false;

    /* renamed from: f  reason: collision with root package name */
    private final Lock f11750f = new ReentrantLock();

    /* loaded from: classes2.dex */
    public enum StorageType {
        INTERNAL,
        EXTERNAL
    }

    protected StatFsHelper() {
    }

    protected static StatFs a(String str) {
        return new StatFs(str);
    }

    private void b() {
        if (this.f11751g) {
            return;
        }
        this.f11750f.lock();
        try {
            if (!this.f11751g) {
                this.f11746b = Environment.getDataDirectory();
                this.f11748d = Environment.getExternalStorageDirectory();
                j();
                this.f11751g = true;
            }
        } finally {
            this.f11750f.unlock();
        }
    }

    public static synchronized StatFsHelper e() {
        StatFsHelper statFsHelper;
        synchronized (StatFsHelper.class) {
            if (f11743j == null) {
                f11743j = new StatFsHelper();
            }
            statFsHelper = f11743j;
        }
        return statFsHelper;
    }

    private void g() {
        if (this.f11750f.tryLock()) {
            try {
                if (SystemClock.uptimeMillis() - this.f11749e > f11744k) {
                    j();
                }
            } finally {
                this.f11750f.unlock();
            }
        }
    }

    @GuardedBy("lock")
    private void j() {
        this.f11745a = k(this.f11745a, this.f11746b);
        this.f11747c = k(this.f11747c, this.f11748d);
        this.f11749e = SystemClock.uptimeMillis();
    }

    @Nullable
    private StatFs k(@Nullable StatFs statFs, @Nullable File file) {
        StatFs statFs2 = null;
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            if (statFs == null) {
                statFs = a(file.getAbsolutePath());
            } else {
                statFs.restat(file.getAbsolutePath());
            }
            statFs2 = statFs;
            return statFs2;
        } catch (IllegalArgumentException unused) {
            return statFs2;
        } catch (Throwable th) {
            throw m.d(th);
        }
    }

    @SuppressLint({"DeprecatedMethod"})
    public long c(StorageType storageType) {
        long blockSize;
        long availableBlocks;
        b();
        g();
        StatFs statFs = storageType == StorageType.INTERNAL ? this.f11745a : this.f11747c;
        if (statFs != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                blockSize = statFs.getBlockSizeLong();
                availableBlocks = statFs.getAvailableBlocksLong();
            } else {
                blockSize = statFs.getBlockSize();
                availableBlocks = statFs.getAvailableBlocks();
            }
            return blockSize * availableBlocks;
        }
        return 0L;
    }

    @SuppressLint({"DeprecatedMethod"})
    public long d(StorageType storageType) {
        long blockSize;
        long freeBlocks;
        b();
        g();
        StatFs statFs = storageType == StorageType.INTERNAL ? this.f11745a : this.f11747c;
        if (statFs != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                blockSize = statFs.getBlockSizeLong();
                freeBlocks = statFs.getFreeBlocksLong();
            } else {
                blockSize = statFs.getBlockSize();
                freeBlocks = statFs.getFreeBlocks();
            }
            return blockSize * freeBlocks;
        }
        return -1L;
    }

    @SuppressLint({"DeprecatedMethod"})
    public long f(StorageType storageType) {
        long blockSize;
        long blockCount;
        b();
        g();
        StatFs statFs = storageType == StorageType.INTERNAL ? this.f11745a : this.f11747c;
        if (statFs != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                blockSize = statFs.getBlockSizeLong();
                blockCount = statFs.getBlockCountLong();
            } else {
                blockSize = statFs.getBlockSize();
                blockCount = statFs.getBlockCount();
            }
            return blockSize * blockCount;
        }
        return -1L;
    }

    public void h() {
        if (this.f11750f.tryLock()) {
            try {
                b();
                j();
            } finally {
                this.f11750f.unlock();
            }
        }
    }

    public boolean i(StorageType storageType, long j4) {
        b();
        long c4 = c(storageType);
        return c4 <= 0 || c4 < j4;
    }
}
