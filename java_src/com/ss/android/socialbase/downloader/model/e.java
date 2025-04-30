package com.ss.android.socialbase.downloader.model;

import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.i.f;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
/* compiled from: RandomAccessOutputStream.java */
/* loaded from: classes4.dex */
public class e implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private BufferedOutputStream f58491a;

    /* renamed from: b  reason: collision with root package name */
    private FileDescriptor f58492b;

    /* renamed from: c  reason: collision with root package name */
    private RandomAccessFile f58493c;

    public e(File file, int i2) throws BaseException {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f73015e0);
            this.f58493c = randomAccessFile;
            this.f58492b = randomAccessFile.getFD();
            if (i2 > 0) {
                if (i2 < 8192) {
                    i2 = 8192;
                } else if (i2 > 131072) {
                    i2 = 131072;
                }
                this.f58491a = new BufferedOutputStream(new FileOutputStream(this.f58493c.getFD()), i2);
                return;
            }
            this.f58491a = new BufferedOutputStream(new FileOutputStream(this.f58493c.getFD()));
        } catch (IOException e4) {
            throw new BaseException(1039, e4);
        }
    }

    public void a(byte[] bArr, int i2, int i4) throws IOException {
        this.f58491a.write(bArr, i2, i4);
    }

    public void b() throws IOException {
        BufferedOutputStream bufferedOutputStream = this.f58491a;
        if (bufferedOutputStream != null) {
            bufferedOutputStream.flush();
        }
    }

    public void c() throws IOException {
        FileDescriptor fileDescriptor = this.f58492b;
        if (fileDescriptor != null) {
            fileDescriptor.sync();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        f.a(this.f58493c, this.f58491a);
    }

    public void a() throws IOException {
        BufferedOutputStream bufferedOutputStream = this.f58491a;
        if (bufferedOutputStream != null) {
            bufferedOutputStream.flush();
        }
        FileDescriptor fileDescriptor = this.f58492b;
        if (fileDescriptor != null) {
            fileDescriptor.sync();
        }
    }

    public void b(long j4) throws IOException {
        this.f58493c.setLength(j4);
    }

    public void a(long j4) throws IOException {
        this.f58493c.seek(j4);
    }
}
