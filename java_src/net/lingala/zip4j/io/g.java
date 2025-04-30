package net.lingala.zip4j.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: SplitOutputStream.java */
/* loaded from: classes5.dex */
public class g extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f72972a;

    /* renamed from: b  reason: collision with root package name */
    private long f72973b;

    /* renamed from: c  reason: collision with root package name */
    private File f72974c;

    /* renamed from: d  reason: collision with root package name */
    private File f72975d;

    /* renamed from: e  reason: collision with root package name */
    private int f72976e;

    /* renamed from: f  reason: collision with root package name */
    private long f72977f;

    public g(String str) throws FileNotFoundException, ZipException {
        this(net.lingala.zip4j.util.h.A(str) ? new File(str) : null);
    }

    private boolean h(byte[] bArr) {
        if (bArr != null && bArr.length >= 4) {
            int e4 = net.lingala.zip4j.util.f.e(bArr, 0);
            long[] l4 = net.lingala.zip4j.util.h.l();
            if (l4 != null && l4.length > 0) {
                for (int i2 = 0; i2 < l4.length; i2++) {
                    if (l4[i2] != 134695760 && l4[i2] == e4) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private void m() throws IOException {
        String stringBuffer;
        File file;
        try {
            String z3 = net.lingala.zip4j.util.h.z(this.f72975d.getName());
            String absolutePath = this.f72974c.getAbsolutePath();
            if (this.f72975d.getParent() == null) {
                stringBuffer = "";
            } else {
                StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(this.f72975d.getParent()));
                stringBuffer2.append(System.getProperty("file.separator"));
                stringBuffer = stringBuffer2.toString();
            }
            if (this.f72976e < 9) {
                StringBuffer stringBuffer3 = new StringBuffer(String.valueOf(stringBuffer));
                stringBuffer3.append(z3);
                stringBuffer3.append(".z0");
                stringBuffer3.append(this.f72976e + 1);
                file = new File(stringBuffer3.toString());
            } else {
                StringBuffer stringBuffer4 = new StringBuffer(String.valueOf(stringBuffer));
                stringBuffer4.append(z3);
                stringBuffer4.append(".z");
                stringBuffer4.append(this.f72976e + 1);
                file = new File(stringBuffer4.toString());
            }
            this.f72972a.close();
            if (!file.exists()) {
                if (this.f72974c.renameTo(file)) {
                    this.f72974c = new File(absolutePath);
                    this.f72972a = new RandomAccessFile(this.f72974c, net.lingala.zip4j.util.e.f73015e0);
                    this.f72976e++;
                    return;
                }
                throw new IOException("cannot rename newly created split file");
            }
            StringBuffer stringBuffer5 = new StringBuffer("split file: ");
            stringBuffer5.append(file.getName());
            stringBuffer5.append(" already exists in the current directory, cannot rename this file");
            throw new IOException(stringBuffer5.toString());
        } catch (ZipException e4) {
            throw new IOException(e4.getMessage());
        }
    }

    public boolean a(int i2) throws ZipException {
        if (i2 >= 0) {
            if (g(i2)) {
                return false;
            }
            try {
                m();
                this.f72977f = 0L;
                return true;
            } catch (IOException e4) {
                throw new ZipException(e4);
            }
        }
        throw new ZipException("negative buffersize for checkBuffSizeAndStartNextSplitFile");
    }

    public int b() {
        return this.f72976e;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        RandomAccessFile randomAccessFile = this.f72972a;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
    }

    public long d() throws IOException {
        return this.f72972a.getFilePointer();
    }

    public long e() {
        return this.f72973b;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
    }

    public boolean g(int i2) throws ZipException {
        if (i2 >= 0) {
            long j4 = this.f72973b;
            return j4 < 65536 || this.f72977f + ((long) i2) <= j4;
        }
        throw new ZipException("negative buffersize for isBuffSizeFitForCurrSplitFile");
    }

    public boolean i() {
        return this.f72973b != -1;
    }

    public void k(long j4) throws IOException {
        this.f72972a.seek(j4);
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        write(new byte[]{(byte) i2}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public g(File file) throws FileNotFoundException, ZipException {
        this(file, -1L);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i4) throws IOException {
        if (i4 <= 0) {
            return;
        }
        long j4 = this.f72973b;
        if (j4 == -1) {
            this.f72972a.write(bArr, i2, i4);
            this.f72977f += i4;
        } else if (j4 >= 65536) {
            long j5 = this.f72977f;
            if (j5 >= j4) {
                m();
                this.f72972a.write(bArr, i2, i4);
                this.f72977f = i4;
                return;
            }
            long j6 = i4;
            if (j5 + j6 > j4) {
                if (h(bArr)) {
                    m();
                    this.f72972a.write(bArr, i2, i4);
                    this.f72977f = j6;
                    return;
                }
                this.f72972a.write(bArr, i2, (int) (this.f72973b - this.f72977f));
                m();
                RandomAccessFile randomAccessFile = this.f72972a;
                long j7 = this.f72973b;
                long j8 = this.f72977f;
                randomAccessFile.write(bArr, i2 + ((int) (j7 - j8)), (int) (j6 - (j7 - j8)));
                this.f72977f = j6 - (this.f72973b - this.f72977f);
                return;
            }
            this.f72972a.write(bArr, i2, i4);
            this.f72977f += j6;
        } else {
            throw new IOException("split length less than minimum allowed split length of 65536 Bytes");
        }
    }

    public g(String str, long j4) throws FileNotFoundException, ZipException {
        this(!net.lingala.zip4j.util.h.A(str) ? new File(str) : null, j4);
    }

    public g(File file, long j4) throws FileNotFoundException, ZipException {
        if (j4 >= 0 && j4 < 65536) {
            throw new ZipException("split length less than minimum allowed split length of 65536 Bytes");
        }
        this.f72972a = new RandomAccessFile(file, net.lingala.zip4j.util.e.f73015e0);
        this.f72973b = j4;
        this.f72975d = file;
        this.f72974c = file;
        this.f72976e = 0;
        this.f72977f = 0L;
    }
}
