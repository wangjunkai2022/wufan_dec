package com.danikula.videocache.file;

import com.danikula.videocache.ProxyCacheException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
/* compiled from: FileCache.java */
/* loaded from: classes2.dex */
public class b implements com.danikula.videocache.c {

    /* renamed from: d  reason: collision with root package name */
    private static final String f11090d = ".download";

    /* renamed from: a  reason: collision with root package name */
    private final a f11091a;

    /* renamed from: b  reason: collision with root package name */
    public File f11092b;

    /* renamed from: c  reason: collision with root package name */
    private RandomAccessFile f11093c;

    public b(File file) throws ProxyCacheException {
        this(file, new i());
    }

    private boolean d(File file) {
        return file.getName().endsWith(f11090d);
    }

    @Override // com.danikula.videocache.c
    public synchronized void a(byte[] bArr, int i2) throws ProxyCacheException {
        try {
            if (!isCompleted()) {
                this.f11093c.seek(available());
                this.f11093c.write(bArr, 0, i2);
            } else {
                throw new ProxyCacheException("Error append cache: cache file " + this.f11092b + " is completed!");
            }
        } catch (IOException e4) {
            throw new ProxyCacheException(String.format("Error writing %d bytes to %s from buffer with size %d", Integer.valueOf(i2), this.f11093c, Integer.valueOf(bArr.length)), e4);
        }
    }

    @Override // com.danikula.videocache.c
    public synchronized long available() throws ProxyCacheException {
        try {
        } catch (IOException e4) {
            throw new ProxyCacheException("Error reading length of file " + this.f11092b, e4);
        }
        return (int) this.f11093c.length();
    }

    @Override // com.danikula.videocache.c
    public synchronized int b(byte[] bArr, long j4, int i2) throws ProxyCacheException {
        try {
            this.f11093c.seek(j4);
        } catch (IOException e4) {
            throw new ProxyCacheException(String.format("Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]", Integer.valueOf(i2), Long.valueOf(j4), Long.valueOf(available()), Integer.valueOf(bArr.length)), e4);
        }
        return this.f11093c.read(bArr, 0, i2);
    }

    public File c() {
        return this.f11092b;
    }

    @Override // com.danikula.videocache.c
    public synchronized void close() throws ProxyCacheException {
        try {
            this.f11093c.close();
            this.f11091a.a(this.f11092b);
        } catch (IOException e4) {
            throw new ProxyCacheException("Error closing file " + this.f11092b, e4);
        }
    }

    @Override // com.danikula.videocache.c
    public synchronized void complete() throws ProxyCacheException {
        if (isCompleted()) {
            return;
        }
        close();
        File file = new File(this.f11092b.getParentFile(), this.f11092b.getName().substring(0, this.f11092b.getName().length() - 9));
        if (this.f11092b.renameTo(file)) {
            this.f11092b = file;
            try {
                this.f11093c = new RandomAccessFile(this.f11092b, net.lingala.zip4j.util.e.f73017f0);
                this.f11091a.a(this.f11092b);
                return;
            } catch (IOException e4) {
                throw new ProxyCacheException("Error opening " + this.f11092b + " as disc cache", e4);
            }
        }
        throw new ProxyCacheException("Error renaming file " + this.f11092b + " to " + file + " for completion!");
    }

    @Override // com.danikula.videocache.c
    public synchronized boolean isCompleted() {
        return !d(this.f11092b);
    }

    public b(File file, a aVar) throws ProxyCacheException {
        File file2;
        try {
            if (aVar != null) {
                this.f11091a = aVar;
                d.b(file.getParentFile());
                boolean exists = file.exists();
                if (exists) {
                    file2 = file;
                } else {
                    File parentFile = file.getParentFile();
                    file2 = new File(parentFile, file.getName() + f11090d);
                }
                this.f11092b = file2;
                this.f11093c = new RandomAccessFile(this.f11092b, exists ? net.lingala.zip4j.util.e.f73017f0 : net.lingala.zip4j.util.e.f73015e0);
                return;
            }
            throw new NullPointerException();
        } catch (IOException e4) {
            throw new ProxyCacheException("Error using file " + file + " as disc cache", e4);
        }
    }
}
