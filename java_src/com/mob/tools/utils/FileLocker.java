package com.mob.tools.utils;

import com.mob.tools.proguard.PublicMemberKeeper;
import java.io.FileOutputStream;
import java.nio.channels.FileLock;
/* loaded from: classes4.dex */
public class FileLocker implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private FileOutputStream f53934a;

    /* renamed from: b  reason: collision with root package name */
    private FileLock f53935b;

    private boolean a(boolean z3) throws Throwable {
        if (z3) {
            this.f53935b = this.f53934a.getChannel().lock();
        } else {
            this.f53935b = this.f53934a.getChannel().tryLock();
        }
        return this.f53935b != null;
    }

    public synchronized boolean lock(boolean z3) {
        return lock(z3, z3 ? 1000L : 500L, 16L);
    }

    public synchronized void release() {
        if (this.f53934a == null) {
            return;
        }
        unlock();
        try {
            this.f53934a.close();
        } catch (Throwable unused) {
        }
        this.f53934a = null;
    }

    public synchronized void setLockFile(String str) {
        try {
            this.f53934a = new FileOutputStream(str);
        } catch (Throwable unused) {
            FileOutputStream fileOutputStream = this.f53934a;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Throwable unused2) {
                }
                this.f53934a = null;
            }
        }
    }

    public synchronized void unlock() {
        FileLock fileLock = this.f53935b;
        if (fileLock == null) {
            return;
        }
        try {
            fileLock.release();
        } catch (Throwable unused) {
        }
        this.f53935b = null;
    }

    public synchronized boolean lock(boolean z3, long j4, long j5) {
        if (this.f53934a == null) {
            return false;
        }
        return a(z3);
    }

    public synchronized void lock(Runnable runnable, boolean z3) {
        if (lock(z3) && runnable != null) {
            runnable.run();
        }
    }
}
