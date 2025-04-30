package net.lingala.zip4j.unzip;

import com.join.mgps.Util.g0;
import e3.h;
import e3.i;
import e3.k;
import e3.o;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.zip.CRC32;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.util.f;
/* compiled from: UnzipEngine.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private o f72991a;

    /* renamed from: b  reason: collision with root package name */
    private h f72992b;

    /* renamed from: c  reason: collision with root package name */
    private int f72993c = 0;

    /* renamed from: d  reason: collision with root package name */
    private i f72994d;

    /* renamed from: e  reason: collision with root package name */
    private net.lingala.zip4j.crypto.c f72995e;

    /* renamed from: f  reason: collision with root package name */
    private CRC32 f72996f;

    public d(o oVar, h hVar) throws ZipException {
        if (oVar != null && hVar != null) {
            this.f72991a = oVar;
            this.f72992b = hVar;
            this.f72996f = new CRC32();
            return;
        }
        throw new ZipException("Invalid parameters passed to StoreUnzip. One or more of the parameters were null");
    }

    private int a(e3.a aVar) throws ZipException {
        if (aVar != null) {
            int a4 = aVar.a();
            if (a4 != 1) {
                if (a4 != 2) {
                    if (a4 == 3) {
                        return 16;
                    }
                    throw new ZipException("unable to determine salt length: invalid aes key strength");
                }
                return 12;
            }
            return 8;
        }
        throw new ZipException("unable to determine salt length: AESExtraDataRecord is null");
    }

    private boolean c() throws ZipException {
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                RandomAccessFile d4 = d();
                if (d4 == null) {
                    d4 = new RandomAccessFile(new File(this.f72991a.l()), net.lingala.zip4j.util.e.f73017f0);
                }
                i o3 = new c3.a(d4).o(this.f72992b);
                this.f72994d = o3;
                if (o3 != null) {
                    if (o3.c() != this.f72992b.f()) {
                        try {
                            d4.close();
                            return false;
                        } catch (IOException | Exception unused) {
                            return false;
                        }
                    }
                    try {
                        d4.close();
                        return true;
                    } catch (IOException | Exception unused2) {
                        return true;
                    }
                }
                throw new ZipException("error reading local file header. Is this a valid zip file?");
            } catch (FileNotFoundException e4) {
                throw new ZipException(e4);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    randomAccessFile.close();
                } catch (IOException | Exception unused3) {
                }
            }
            throw th;
        }
    }

    private RandomAccessFile d() throws ZipException {
        String stringBuffer;
        if (this.f72991a.n()) {
            int i2 = this.f72992b.i();
            int i4 = i2 + 1;
            this.f72993c = i4;
            String l4 = this.f72991a.l();
            if (i2 == this.f72991a.e().d()) {
                stringBuffer = this.f72991a.l();
            } else if (i2 >= 9) {
                StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(l4.substring(0, l4.lastIndexOf(g0.f27568a))));
                stringBuffer2.append(".z");
                stringBuffer2.append(i4);
                stringBuffer = stringBuffer2.toString();
            } else {
                StringBuffer stringBuffer3 = new StringBuffer(String.valueOf(l4.substring(0, l4.lastIndexOf(g0.f27568a))));
                stringBuffer3.append(".z0");
                stringBuffer3.append(i4);
                stringBuffer = stringBuffer3.toString();
            }
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(stringBuffer, net.lingala.zip4j.util.e.f73017f0);
                if (this.f72993c == 1) {
                    byte[] bArr = new byte[4];
                    randomAccessFile.read(bArr);
                    if (f.e(bArr, 0) != 134695760) {
                        throw new ZipException("invalid first part split file signature");
                    }
                }
                return randomAccessFile;
            } catch (FileNotFoundException e4) {
                throw new ZipException(e4);
            } catch (IOException e5) {
                throw new ZipException(e5);
            }
        }
        return null;
    }

    private void e(InputStream inputStream, OutputStream outputStream) throws ZipException {
        if (inputStream != null) {
            try {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    if (net.lingala.zip4j.util.h.A(e4.getMessage()) && e4.getMessage().indexOf(" - Wrong Password?") >= 0) {
                        throw new ZipException(e4.getMessage());
                    }
                    return;
                }
            } catch (Throwable th) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        }
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.close();
        } catch (IOException unused2) {
        }
    }

    private RandomAccessFile f(String str) throws ZipException {
        o oVar = this.f72991a;
        if (oVar != null && net.lingala.zip4j.util.h.A(oVar.l())) {
            try {
                if (this.f72991a.n()) {
                    return d();
                }
                return new RandomAccessFile(new File(this.f72991a.l()), str);
            } catch (FileNotFoundException e4) {
                throw new ZipException(e4);
            } catch (Exception e5) {
                throw new ZipException(e5);
            }
        }
        throw new ZipException("input parameter is null in getFilePointer");
    }

    private byte[] g(RandomAccessFile randomAccessFile) throws ZipException {
        try {
            byte[] bArr = new byte[2];
            randomAccessFile.read(bArr);
            return bArr;
        } catch (IOException e4) {
            throw new ZipException(e4);
        }
    }

    private byte[] h(RandomAccessFile randomAccessFile) throws ZipException {
        if (this.f72994d.a() == null) {
            return null;
        }
        try {
            byte[] bArr = new byte[a(this.f72994d.a())];
            randomAccessFile.seek(this.f72994d.n());
            randomAccessFile.read(bArr);
            return bArr;
        } catch (IOException e4) {
            throw new ZipException(e4);
        }
    }

    private String m(String str, String str2) throws ZipException {
        if (!net.lingala.zip4j.util.h.A(str2)) {
            str2 = this.f72992b.p();
        }
        StringBuffer stringBuffer = new StringBuffer(String.valueOf(str));
        stringBuffer.append(System.getProperty("file.separator"));
        stringBuffer.append(str2);
        return stringBuffer.toString();
    }

    private FileOutputStream n(String str, String str2) throws ZipException {
        if (net.lingala.zip4j.util.h.A(str)) {
            try {
                File file = new File(m(str, str2));
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                if (file.exists()) {
                    file.delete();
                }
                return new FileOutputStream(file);
            } catch (FileNotFoundException e4) {
                throw new ZipException(e4);
            }
        }
        throw new ZipException("invalid output path");
    }

    private byte[] o(RandomAccessFile randomAccessFile) throws ZipException {
        try {
            byte[] bArr = new byte[12];
            randomAccessFile.seek(this.f72994d.n());
            randomAccessFile.read(bArr, 0, 12);
            return bArr;
        } catch (IOException e4) {
            throw new ZipException(e4);
        } catch (Exception e5) {
            throw new ZipException(e5);
        }
    }

    private void q(RandomAccessFile randomAccessFile) throws ZipException {
        if (this.f72994d != null) {
            try {
                r(randomAccessFile);
                return;
            } catch (ZipException e4) {
                throw e4;
            } catch (Exception e5) {
                throw new ZipException(e5);
            }
        }
        throw new ZipException("local file header is null, cannot initialize input stream");
    }

    private void r(RandomAccessFile randomAccessFile) throws ZipException {
        i iVar = this.f72994d;
        if (iVar != null) {
            if (iVar.u()) {
                if (this.f72994d.f() == 0) {
                    this.f72995e = new net.lingala.zip4j.crypto.e(this.f72992b, o(randomAccessFile));
                    return;
                } else if (this.f72994d.f() == 99) {
                    this.f72995e = new net.lingala.zip4j.crypto.a(this.f72994d, h(randomAccessFile), g(randomAccessFile));
                    return;
                } else {
                    throw new ZipException("unsupported encryption method");
                }
            }
            return;
        }
        throw new ZipException("local file header is null, cannot init decrypter");
    }

    public void b() throws ZipException {
        h hVar = this.f72992b;
        if (hVar != null) {
            if (hVar.j() == 99) {
                net.lingala.zip4j.crypto.c cVar = this.f72995e;
                if (cVar == null || !(cVar instanceof net.lingala.zip4j.crypto.a)) {
                    return;
                }
                byte[] d4 = ((net.lingala.zip4j.crypto.a) cVar).d();
                byte[] g4 = ((net.lingala.zip4j.crypto.a) this.f72995e).g();
                byte[] bArr = new byte[10];
                if (g4 != null) {
                    System.arraycopy(d4, 0, bArr, 0, 10);
                    if (Arrays.equals(bArr, g4)) {
                        return;
                    }
                    StringBuffer stringBuffer = new StringBuffer("invalid CRC (MAC) for file: ");
                    stringBuffer.append(this.f72992b.p());
                    throw new ZipException(stringBuffer.toString());
                }
                StringBuffer stringBuffer2 = new StringBuffer("CRC (MAC) check failed for ");
                stringBuffer2.append(this.f72992b.p());
                throw new ZipException(stringBuffer2.toString());
            } else if ((this.f72996f.getValue() & 4294967295L) != this.f72992b.g()) {
                StringBuffer stringBuffer3 = new StringBuffer("invalid CRC for file: ");
                stringBuffer3.append(this.f72992b.p());
                String stringBuffer4 = stringBuffer3.toString();
                if (this.f72994d.u() && this.f72994d.f() == 0) {
                    StringBuffer stringBuffer5 = new StringBuffer(String.valueOf(stringBuffer4));
                    stringBuffer5.append(" - Wrong Password?");
                    stringBuffer4 = stringBuffer5.toString();
                }
                throw new ZipException(stringBuffer4);
            }
        }
    }

    public net.lingala.zip4j.crypto.c i() {
        return this.f72995e;
    }

    public h j() {
        return this.f72992b;
    }

    public net.lingala.zip4j.io.h k() throws ZipException {
        long j4;
        net.lingala.zip4j.crypto.c cVar;
        if (this.f72992b != null) {
            RandomAccessFile randomAccessFile = null;
            try {
                RandomAccessFile f4 = f(net.lingala.zip4j.util.e.f73017f0);
                if (c()) {
                    q(f4);
                    long b4 = this.f72994d.b();
                    long n4 = this.f72994d.n();
                    if (this.f72994d.u()) {
                        if (this.f72994d.f() == 99) {
                            if (this.f72995e instanceof net.lingala.zip4j.crypto.a) {
                                b4 -= (((net.lingala.zip4j.crypto.a) cVar).f() + ((net.lingala.zip4j.crypto.a) this.f72995e).e()) + 10;
                                j4 = ((net.lingala.zip4j.crypto.a) this.f72995e).f() + ((net.lingala.zip4j.crypto.a) this.f72995e).e();
                            } else {
                                StringBuffer stringBuffer = new StringBuffer("invalid decryptor when trying to calculate compressed size for AES encrypted file: ");
                                stringBuffer.append(this.f72992b.p());
                                throw new ZipException(stringBuffer.toString());
                            }
                        } else if (this.f72994d.f() == 0) {
                            j4 = 12;
                            b4 -= 12;
                        }
                        n4 += j4;
                    }
                    long j5 = b4;
                    long j6 = n4;
                    int f5 = this.f72992b.f();
                    if (this.f72992b.j() == 99) {
                        if (this.f72992b.d() != null) {
                            f5 = this.f72992b.d().b();
                        } else {
                            StringBuffer stringBuffer2 = new StringBuffer("AESExtraDataRecord does not exist for AES encrypted file: ");
                            stringBuffer2.append(this.f72992b.p());
                            throw new ZipException(stringBuffer2.toString());
                        }
                    }
                    f4.seek(j6);
                    if (f5 != 0) {
                        if (f5 == 8) {
                            return new net.lingala.zip4j.io.h(new net.lingala.zip4j.io.e(f4, j6, j5, this));
                        }
                        throw new ZipException("compression type not supported");
                    }
                    return new net.lingala.zip4j.io.h(new net.lingala.zip4j.io.f(f4, j6, j5, this));
                }
                throw new ZipException("local header and file header do not match");
            } catch (ZipException e4) {
                if (0 != 0) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused) {
                    }
                }
                throw e4;
            } catch (Exception e5) {
                if (0 != 0) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused2) {
                    }
                }
                throw new ZipException(e5);
            }
        }
        throw new ZipException("file header is null, cannot get inputstream");
    }

    public i l() {
        return this.f72994d;
    }

    public o p() {
        return this.f72991a;
    }

    public RandomAccessFile s() throws IOException, FileNotFoundException {
        String stringBuffer;
        String l4 = this.f72991a.l();
        if (this.f72993c == this.f72991a.e().d()) {
            stringBuffer = this.f72991a.l();
        } else if (this.f72993c >= 9) {
            StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(l4.substring(0, l4.lastIndexOf(g0.f27568a))));
            stringBuffer2.append(".z");
            stringBuffer2.append(this.f72993c + 1);
            stringBuffer = stringBuffer2.toString();
        } else {
            StringBuffer stringBuffer3 = new StringBuffer(String.valueOf(l4.substring(0, l4.lastIndexOf(g0.f27568a))));
            stringBuffer3.append(".z0");
            stringBuffer3.append(this.f72993c + 1);
            stringBuffer = stringBuffer3.toString();
        }
        this.f72993c++;
        try {
            if (net.lingala.zip4j.util.h.c(stringBuffer)) {
                return new RandomAccessFile(stringBuffer, net.lingala.zip4j.util.e.f73017f0);
            }
            StringBuffer stringBuffer4 = new StringBuffer("zip split file does not exist: ");
            stringBuffer4.append(stringBuffer);
            throw new IOException(stringBuffer4.toString());
        } catch (ZipException e4) {
            throw new IOException(e4.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [net.lingala.zip4j.unzip.d] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v6 */
    public void t(f3.a aVar, String str, String str2, k kVar) throws ZipException {
        byte[] bArr;
        net.lingala.zip4j.io.h k4;
        if (this.f72991a != null && this.f72992b != null && net.lingala.zip4j.util.h.A(str)) {
            net.lingala.zip4j.io.h hVar = null;
            try {
                try {
                    bArr = new byte[4096];
                    k4 = k();
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    FileOutputStream n4 = n(str, str2);
                    do {
                        int read = k4.read(bArr);
                        if (read == -1) {
                            e(k4, n4);
                            e.b(this.f72992b, new File(m(str, str2)), kVar);
                            e(k4, n4);
                            return;
                        }
                        n4.write(bArr, 0, read);
                        aVar.w(read);
                    } while (!aVar.m());
                    aVar.setResult(3);
                    aVar.u(0);
                    e(k4, n4);
                } catch (IOException e4) {
                    e = e4;
                    throw new ZipException(e);
                } catch (Exception e5) {
                    e = e5;
                    throw new ZipException(e);
                } catch (Throwable th2) {
                    th = th2;
                    str = 0;
                    hVar = k4;
                    e(hVar, str);
                    throw th;
                }
            } catch (IOException e6) {
                e = e6;
            } catch (Exception e7) {
                e = e7;
            } catch (Throwable th3) {
                th = th3;
                str = 0;
            }
        } else {
            throw new ZipException("Invalid parameters passed during unzipping file. One or more of the parameters were null");
        }
    }

    public void u(int i2) {
        this.f72996f.update(i2);
    }

    public void v(byte[] bArr, int i2, int i4) {
        if (bArr != null) {
            this.f72996f.update(bArr, i2, i4);
        }
    }
}
