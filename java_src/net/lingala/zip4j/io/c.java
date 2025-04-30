package net.lingala.zip4j.io;

import e3.o;
import e3.p;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Objects;
import java.util.zip.CRC32;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: CipherOutputStream.java */
/* loaded from: classes5.dex */
public class c extends b {

    /* renamed from: a  reason: collision with root package name */
    protected OutputStream f72940a;

    /* renamed from: b  reason: collision with root package name */
    private File f72941b;

    /* renamed from: c  reason: collision with root package name */
    protected e3.h f72942c;

    /* renamed from: d  reason: collision with root package name */
    protected e3.i f72943d;

    /* renamed from: e  reason: collision with root package name */
    private net.lingala.zip4j.crypto.d f72944e;

    /* renamed from: f  reason: collision with root package name */
    protected p f72945f;

    /* renamed from: g  reason: collision with root package name */
    protected o f72946g;

    /* renamed from: h  reason: collision with root package name */
    private long f72947h;

    /* renamed from: i  reason: collision with root package name */
    protected CRC32 f72948i;

    /* renamed from: j  reason: collision with root package name */
    private long f72949j;

    /* renamed from: k  reason: collision with root package name */
    private byte[] f72950k;

    /* renamed from: l  reason: collision with root package name */
    private int f72951l;

    /* renamed from: m  reason: collision with root package name */
    private long f72952m;

    public c(OutputStream outputStream, o oVar) {
        this.f72940a = outputStream;
        p(oVar);
        this.f72948i = new CRC32();
        this.f72947h = 0L;
        this.f72949j = 0L;
        this.f72950k = new byte[16];
        this.f72951l = 0;
        this.f72952m = 0L;
    }

    private void b() throws ZipException {
        String x3;
        int i2;
        e3.h hVar = new e3.h();
        this.f72942c = hVar;
        hVar.c0(33639248);
        this.f72942c.e0(20);
        this.f72942c.f0(20);
        if (this.f72945f.k() && this.f72945f.e() == 99) {
            this.f72942c.H(99);
            this.f72942c.F(i(this.f72945f));
        } else {
            this.f72942c.H(this.f72945f.c());
        }
        if (this.f72945f.k()) {
            this.f72942c.N(true);
            this.f72942c.O(this.f72945f.e());
        }
        if (this.f72945f.n()) {
            this.f72942c.Z((int) net.lingala.zip4j.util.h.D(System.currentTimeMillis()));
            if (net.lingala.zip4j.util.h.A(this.f72945f.f())) {
                x3 = this.f72945f.f();
            } else {
                throw new ZipException("fileNameInZip is null or empty");
            }
        } else {
            this.f72942c.Z((int) net.lingala.zip4j.util.h.D(net.lingala.zip4j.util.h.w(this.f72941b, this.f72945f.j())));
            this.f72942c.d0(this.f72941b.length());
            x3 = net.lingala.zip4j.util.h.x(this.f72941b.getAbsolutePath(), this.f72945f.h(), this.f72945f.d());
        }
        if (net.lingala.zip4j.util.h.A(x3)) {
            this.f72942c.U(x3);
            if (net.lingala.zip4j.util.h.A(this.f72946g.f())) {
                this.f72942c.V(net.lingala.zip4j.util.h.o(x3, this.f72946g.f()));
            } else {
                this.f72942c.V(net.lingala.zip4j.util.h.n(x3));
            }
            OutputStream outputStream = this.f72940a;
            if (outputStream instanceof g) {
                this.f72942c.M(((g) outputStream).b());
            } else {
                this.f72942c.M(0);
            }
            byte[] bArr = new byte[4];
            bArr[0] = (byte) (!this.f72945f.n() ? m(this.f72941b) : 0);
            this.f72942c.P(bArr);
            if (this.f72945f.n()) {
                this.f72942c.L(x3.endsWith(net.lingala.zip4j.util.e.F0) || x3.endsWith("\\"));
            } else {
                this.f72942c.L(this.f72941b.isDirectory());
            }
            if (this.f72942c.C()) {
                this.f72942c.G(0L);
                this.f72942c.d0(0L);
            } else if (!this.f72945f.n()) {
                long r3 = net.lingala.zip4j.util.h.r(this.f72941b);
                if (this.f72945f.c() == 0) {
                    if (this.f72945f.e() == 0) {
                        this.f72942c.G(12 + r3);
                    } else if (this.f72945f.e() == 99) {
                        int a4 = this.f72945f.a();
                        if (a4 == 1) {
                            i2 = 8;
                        } else if (a4 != 3) {
                            throw new ZipException("invalid aes key strength, cannot determine key sizes");
                        } else {
                            i2 = 16;
                        }
                        this.f72942c.G(i2 + r3 + 10 + 2);
                    } else {
                        this.f72942c.G(0L);
                    }
                } else {
                    this.f72942c.G(0L);
                }
                this.f72942c.d0(r3);
            }
            if (this.f72945f.k() && this.f72945f.e() == 0) {
                this.f72942c.I(this.f72945f.i());
            }
            byte[] bArr2 = new byte[2];
            bArr2[0] = net.lingala.zip4j.util.f.a(k(this.f72942c.D(), this.f72945f.c()));
            boolean A = net.lingala.zip4j.util.h.A(this.f72946g.f());
            if (!(A && this.f72946g.f().equalsIgnoreCase(net.lingala.zip4j.util.e.A0)) && (A || !net.lingala.zip4j.util.h.i(this.f72942c.p()).equals(net.lingala.zip4j.util.e.A0))) {
                bArr2[1] = 0;
            } else {
                bArr2[1] = 8;
            }
            this.f72942c.X(bArr2);
            return;
        }
        throw new ZipException("fileName is null or empty. unable to create file header");
    }

    private void d() throws ZipException {
        if (this.f72942c != null) {
            e3.i iVar = new e3.i();
            this.f72943d = iVar;
            iVar.P(67324752);
            this.f72943d.R(this.f72942c.z());
            this.f72943d.z(this.f72942c.f());
            this.f72943d.M(this.f72942c.t());
            this.f72943d.Q(this.f72942c.x());
            this.f72943d.J(this.f72942c.q());
            this.f72943d.I(this.f72942c.p());
            this.f72943d.D(this.f72942c.D());
            this.f72943d.E(this.f72942c.j());
            this.f72943d.x(this.f72942c.d());
            this.f72943d.A(this.f72942c.g());
            this.f72943d.y(this.f72942c.e());
            this.f72943d.L((byte[]) this.f72942c.r().clone());
            return;
        }
        throw new ZipException("file header is null, cannot create local file header");
    }

    private void g(byte[] bArr, int i2, int i4) throws IOException {
        net.lingala.zip4j.crypto.d dVar = this.f72944e;
        if (dVar != null) {
            try {
                dVar.a(bArr, i2, i4);
            } catch (ZipException e4) {
                throw new IOException(e4.getMessage());
            }
        }
        this.f72940a.write(bArr, i2, i4);
        long j4 = i4;
        this.f72947h += j4;
        this.f72949j += j4;
    }

    private e3.a i(p pVar) throws ZipException {
        if (pVar != null) {
            e3.a aVar = new e3.a();
            aVar.j(39169L);
            aVar.i(7);
            aVar.k("AE");
            aVar.l(2);
            if (pVar.a() == 1) {
                aVar.g(1);
            } else if (pVar.a() == 3) {
                aVar.g(3);
            } else {
                throw new ZipException("invalid AES key strength, cannot generate AES Extra data record");
            }
            aVar.h(pVar.c());
            return aVar;
        }
        throw new ZipException("zip parameters are null, cannot generate AES Extra Data record");
    }

    private int[] k(boolean z3, int i2) {
        int[] iArr = new int[8];
        if (z3) {
            iArr[0] = 1;
        } else {
            iArr[0] = 0;
        }
        if (i2 != 8) {
            iArr[1] = 0;
            iArr[2] = 0;
        }
        iArr[3] = 1;
        return iArr;
    }

    private int m(File file) throws ZipException {
        if (file != null) {
            if (file.exists()) {
                if (file.isDirectory()) {
                    return file.isHidden() ? 18 : 16;
                } else if (file.canWrite() || !file.isHidden()) {
                    if (file.canWrite()) {
                        return file.isHidden() ? 2 : 0;
                    }
                    return 1;
                } else {
                    return 3;
                }
            }
            return 0;
        }
        throw new ZipException("input file is null, cannot get file attributes");
    }

    private void o() throws ZipException {
        if (!this.f72945f.k()) {
            this.f72944e = null;
            return;
        }
        int e4 = this.f72945f.e();
        if (e4 == 0) {
            this.f72944e = new net.lingala.zip4j.crypto.f(this.f72945f.g(), (this.f72943d.m() & 65535) << 16);
        } else if (e4 == 99) {
            this.f72944e = new net.lingala.zip4j.crypto.b(this.f72945f.g(), this.f72945f.a());
        } else {
            throw new ZipException("invalid encprytion method");
        }
    }

    private void p(o oVar) {
        if (oVar == null) {
            this.f72946g = new o();
        } else {
            this.f72946g = oVar;
        }
        if (this.f72946g.e() == null) {
            this.f72946g.t(new e3.f());
        }
        if (this.f72946g.b() == null) {
            this.f72946g.q(new e3.c());
        }
        if (this.f72946g.b().b() == null) {
            this.f72946g.b().d(new ArrayList());
        }
        if (this.f72946g.g() == null) {
            this.f72946g.v(new ArrayList());
        }
        OutputStream outputStream = this.f72940a;
        if ((outputStream instanceof g) && ((g) outputStream).i()) {
            this.f72946g.x(true);
            this.f72946g.y(((g) this.f72940a).e());
        }
        this.f72946g.e().q(net.lingala.zip4j.util.e.f73012d);
    }

    public void a() throws IOException, ZipException {
        int i2 = this.f72951l;
        if (i2 != 0) {
            g(this.f72950k, 0, i2);
            this.f72951l = 0;
        }
        if (this.f72945f.k() && this.f72945f.e() == 99) {
            net.lingala.zip4j.crypto.d dVar = this.f72944e;
            if (dVar instanceof net.lingala.zip4j.crypto.b) {
                this.f72940a.write(((net.lingala.zip4j.crypto.b) dVar).f());
                this.f72949j += 10;
                this.f72947h += 10;
            } else {
                throw new ZipException("invalid encrypter for AES encrypted file");
            }
        }
        this.f72942c.G(this.f72949j);
        this.f72943d.y(this.f72949j);
        if (this.f72945f.n()) {
            this.f72942c.d0(this.f72952m);
            long q3 = this.f72943d.q();
            long j4 = this.f72952m;
            if (q3 != j4) {
                this.f72943d.Q(j4);
            }
        }
        long value = this.f72948i.getValue();
        if (this.f72942c.D() && this.f72942c.j() == 99) {
            value = 0;
        }
        if (this.f72945f.k() && this.f72945f.e() == 99) {
            this.f72942c.I(0L);
            this.f72943d.A(0L);
        } else {
            this.f72942c.I(value);
            this.f72943d.A(value);
        }
        this.f72946g.g().add(this.f72943d);
        this.f72946g.b().b().add(this.f72942c);
        this.f72947h += new c3.b().k(this.f72943d, this.f72940a);
        this.f72948i.reset();
        this.f72949j = 0L;
        this.f72944e = null;
        this.f72952m = 0L;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        OutputStream outputStream = this.f72940a;
        if (outputStream != null) {
            outputStream.close();
        }
    }

    public void e(int i2) {
        if (i2 <= 0) {
            return;
        }
        long j4 = i2;
        long j5 = this.f72949j;
        if (j4 <= j5) {
            this.f72949j = j5 - j4;
        }
    }

    public void h() throws IOException, ZipException {
        this.f72946g.e().p(this.f72947h);
        new c3.b().d(this.f72946g, this.f72940a);
    }

    public File n() {
        return this.f72941b;
    }

    public void q(File file, p pVar) throws ZipException {
        byte[] e4;
        if (!pVar.n() && file == null) {
            throw new ZipException("input file is null");
        }
        if (!pVar.n() && !net.lingala.zip4j.util.h.b(file)) {
            throw new ZipException("input file does not exist");
        }
        try {
            this.f72941b = file;
            this.f72945f = (p) pVar.clone();
            if (!pVar.n()) {
                if (this.f72941b.isDirectory()) {
                    this.f72945f.s(false);
                    this.f72945f.t(-1);
                    this.f72945f.q(0);
                }
            } else if (net.lingala.zip4j.util.h.A(this.f72945f.f())) {
                if (this.f72945f.f().endsWith(net.lingala.zip4j.util.e.F0) || this.f72945f.f().endsWith("\\")) {
                    this.f72945f.s(false);
                    this.f72945f.t(-1);
                    this.f72945f.q(0);
                }
            } else {
                throw new ZipException("file name is empty for external stream");
            }
            b();
            d();
            if (this.f72946g.n() && (this.f72946g.b() == null || this.f72946g.b().b() == null || this.f72946g.b().b().size() == 0)) {
                byte[] bArr = new byte[4];
                net.lingala.zip4j.util.f.l(bArr, 0, 134695760);
                this.f72940a.write(bArr);
                this.f72947h += 4;
            }
            OutputStream outputStream = this.f72940a;
            if (outputStream instanceof g) {
                if (this.f72947h == 4) {
                    this.f72942c.a0(4L);
                } else {
                    this.f72942c.a0(((g) outputStream).d());
                }
            } else {
                long j4 = this.f72947h;
                if (j4 == 4) {
                    this.f72942c.a0(4L);
                } else {
                    this.f72942c.a0(j4);
                }
            }
            this.f72947h += new c3.b().m(this.f72946g, this.f72943d, this.f72940a);
            if (this.f72945f.k()) {
                o();
                if (this.f72944e != null) {
                    if (pVar.e() == 0) {
                        this.f72940a.write(((net.lingala.zip4j.crypto.f) this.f72944e).e());
                        this.f72947h += e4.length;
                        this.f72949j += e4.length;
                    } else if (pVar.e() == 99) {
                        byte[] h4 = ((net.lingala.zip4j.crypto.b) this.f72944e).h();
                        byte[] e5 = ((net.lingala.zip4j.crypto.b) this.f72944e).e();
                        this.f72940a.write(h4);
                        this.f72940a.write(e5);
                        this.f72947h += h4.length + e5.length;
                        this.f72949j += h4.length + e5.length;
                    }
                }
            }
            this.f72948i.reset();
        } catch (CloneNotSupportedException e6) {
            throw new ZipException(e6);
        } catch (ZipException e7) {
            throw e7;
        } catch (Exception e8) {
            throw new ZipException(e8);
        }
    }

    public void r(File file) {
        this.f72941b = file;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void s(int i2) {
        if (i2 > 0) {
            this.f72952m += i2;
        }
    }

    @Override // net.lingala.zip4j.io.b, java.io.OutputStream
    public void write(int i2) throws IOException {
        write(new byte[]{(byte) i2}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        Objects.requireNonNull(bArr);
        if (bArr.length == 0) {
            return;
        }
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i4) throws IOException {
        int i5;
        if (i4 == 0) {
            return;
        }
        if (this.f72945f.k() && this.f72945f.e() == 99) {
            int i6 = this.f72951l;
            if (i6 != 0) {
                if (i4 >= 16 - i6) {
                    System.arraycopy(bArr, i2, this.f72950k, i6, 16 - i6);
                    byte[] bArr2 = this.f72950k;
                    g(bArr2, 0, bArr2.length);
                    i2 = 16 - this.f72951l;
                    i4 -= i2;
                    this.f72951l = 0;
                } else {
                    System.arraycopy(bArr, i2, this.f72950k, i6, i4);
                    this.f72951l += i4;
                    return;
                }
            }
            if (i4 != 0 && (i5 = i4 % 16) != 0) {
                System.arraycopy(bArr, (i4 + i2) - i5, this.f72950k, 0, i5);
                this.f72951l = i5;
                i4 -= i5;
            }
        }
        if (i4 != 0) {
            g(bArr, i2, i4);
        }
    }
}
