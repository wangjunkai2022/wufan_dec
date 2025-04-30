package c3;

import e3.g;
import e3.h;
import e3.i;
import e3.l;
import e3.m;
import e3.n;
import e3.o;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.util.e;
import net.lingala.zip4j.util.f;
/* compiled from: HeaderReader.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private RandomAccessFile f8296a;

    /* renamed from: b  reason: collision with root package name */
    private o f8297b;

    public a(RandomAccessFile randomAccessFile) {
        this.f8296a = null;
        this.f8296a = randomAccessFile;
    }

    private byte[] a(byte[] bArr) throws ZipException {
        if (bArr != null) {
            if (bArr.length == 4) {
                return new byte[]{bArr[0], bArr[1], bArr[2], bArr[3]};
            }
            throw new ZipException("invalid byte length, cannot expand to 8 bytes");
        }
        throw new ZipException("input parameter is null, cannot expand to 8 bytes");
    }

    private e3.a b(ArrayList arrayList) throws ZipException {
        if (arrayList == null) {
            return null;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            g gVar = (g) arrayList.get(i2);
            if (gVar != null && gVar.b() == 39169) {
                if (gVar.a() != null) {
                    e3.a aVar = new e3.a();
                    aVar.j(39169L);
                    aVar.i(gVar.c());
                    byte[] a4 = gVar.a();
                    aVar.l(f.i(a4, 0));
                    byte[] bArr = new byte[2];
                    System.arraycopy(a4, 2, bArr, 0, 2);
                    aVar.k(new String(bArr));
                    aVar.g(a4[4] & 255);
                    aVar.h(f.i(a4, 5));
                    return aVar;
                }
                throw new ZipException("corrput AES extra data records");
            }
        }
        return null;
    }

    private void e(h hVar) throws ZipException {
        e3.a b4;
        if (hVar != null) {
            if (hVar.l() == null || hVar.l().size() <= 0 || (b4 = b(hVar.l())) == null) {
                return;
            }
            hVar.F(b4);
            hVar.O(99);
            return;
        }
        throw new ZipException("file header is null in reading Zip64 Extended Info");
    }

    private void f(i iVar) throws ZipException {
        e3.a b4;
        if (iVar != null) {
            if (iVar.g() == null || iVar.g().size() <= 0 || (b4 = b(iVar.g())) == null) {
                return;
            }
            iVar.x(b4);
            iVar.E(99);
            return;
        }
        throw new ZipException("file header is null in reading Zip64 Extended Info");
    }

    private void g(h hVar) throws ZipException {
        if (this.f8296a == null) {
            throw new ZipException("invalid file handler when trying to read extra data record");
        }
        if (hVar != null) {
            int m4 = hVar.m();
            if (m4 <= 0) {
                return;
            }
            hVar.Q(m(m4));
            return;
        }
        throw new ZipException("file header is null");
    }

    private void h(i iVar) throws ZipException {
        if (this.f8296a == null) {
            throw new ZipException("invalid file handler when trying to read extra data record");
        }
        if (iVar != null) {
            int i2 = iVar.i();
            if (i2 <= 0) {
                return;
            }
            iVar.F(m(i2));
            return;
        }
        throw new ZipException("file header is null");
    }

    private void i(h hVar) throws ZipException {
        n r3;
        if (hVar != null) {
            if (hVar.l() == null || hVar.l().size() <= 0 || (r3 = r(hVar.l(), hVar.x(), hVar.e(), hVar.u(), hVar.i())) == null) {
                return;
            }
            hVar.g0(r3);
            if (r3.f() != -1) {
                hVar.d0(r3.f());
            }
            if (r3.a() != -1) {
                hVar.G(r3.a());
            }
            if (r3.d() != -1) {
                hVar.a0(r3.d());
            }
            if (r3.b() != -1) {
                hVar.M(r3.b());
                return;
            }
            return;
        }
        throw new ZipException("file header is null in reading Zip64 Extended Info");
    }

    private void j(i iVar) throws ZipException {
        n r3;
        if (iVar != null) {
            if (iVar.g() == null || iVar.g().size() <= 0 || (r3 = r(iVar.g(), iVar.q(), iVar.b(), -1L, -1)) == null) {
                return;
            }
            iVar.T(r3);
            if (r3.f() != -1) {
                iVar.Q(r3.f());
            }
            if (r3.a() != -1) {
                iVar.y(r3.a());
                return;
            }
            return;
        }
        throw new ZipException("file header is null in reading Zip64 Extended Info");
    }

    private e3.c k() throws ZipException {
        String h4;
        if (this.f8296a != null) {
            if (this.f8297b.e() != null) {
                try {
                    e3.c cVar = new e3.c();
                    ArrayList arrayList = new ArrayList();
                    e3.f e4 = this.f8297b.e();
                    long f4 = e4.f();
                    int i2 = e4.i();
                    if (this.f8297b.o()) {
                        f4 = this.f8297b.k().d();
                        i2 = (int) this.f8297b.k().h();
                    }
                    this.f8296a.seek(f4);
                    byte[] bArr = new byte[4];
                    byte[] bArr2 = new byte[2];
                    for (int i4 = 0; i4 < i2; i4++) {
                        h hVar = new h();
                        n(this.f8296a, bArr);
                        int e5 = f.e(bArr, 0);
                        boolean z3 = true;
                        if (e5 == e.f73010c) {
                            hVar.c0(e5);
                            n(this.f8296a, bArr2);
                            hVar.e0(f.i(bArr2, 0));
                            n(this.f8296a, bArr2);
                            hVar.f0(f.i(bArr2, 0));
                            n(this.f8296a, bArr2);
                            hVar.W((f.i(bArr2, 0) & 2048) != 0);
                            byte b4 = bArr2[0];
                            if ((b4 & 1) != 0) {
                                hVar.N(true);
                            }
                            hVar.X((byte[]) bArr2.clone());
                            hVar.K((b4 >> 3) == 1);
                            n(this.f8296a, bArr2);
                            hVar.H(f.i(bArr2, 0));
                            n(this.f8296a, bArr);
                            hVar.Z(f.e(bArr, 0));
                            n(this.f8296a, bArr);
                            hVar.I(f.e(bArr, 0));
                            hVar.J((byte[]) bArr.clone());
                            n(this.f8296a, bArr);
                            hVar.G(f.g(a(bArr), 0));
                            n(this.f8296a, bArr);
                            hVar.d0(f.g(a(bArr), 0));
                            n(this.f8296a, bArr2);
                            int i5 = f.i(bArr2, 0);
                            hVar.V(i5);
                            n(this.f8296a, bArr2);
                            hVar.R(f.i(bArr2, 0));
                            n(this.f8296a, bArr2);
                            int i6 = f.i(bArr2, 0);
                            hVar.S(new String(bArr2));
                            n(this.f8296a, bArr2);
                            hVar.M(f.i(bArr2, 0));
                            n(this.f8296a, bArr2);
                            hVar.Y((byte[]) bArr2.clone());
                            n(this.f8296a, bArr);
                            hVar.P((byte[]) bArr.clone());
                            n(this.f8296a, bArr);
                            hVar.a0(f.g(a(bArr), 0) & 4294967295L);
                            if (i5 > 0) {
                                byte[] bArr3 = new byte[i5];
                                n(this.f8296a, bArr3);
                                if (net.lingala.zip4j.util.h.A(this.f8297b.f())) {
                                    h4 = new String(bArr3, this.f8297b.f());
                                } else {
                                    h4 = net.lingala.zip4j.util.h.h(bArr3, hVar.E());
                                }
                                if (h4 != null) {
                                    StringBuffer stringBuffer = new StringBuffer(":");
                                    stringBuffer.append(System.getProperty("file.separator"));
                                    if (h4.indexOf(stringBuffer.toString()) >= 0) {
                                        StringBuffer stringBuffer2 = new StringBuffer(":");
                                        stringBuffer2.append(System.getProperty("file.separator"));
                                        h4 = h4.substring(h4.indexOf(stringBuffer2.toString()) + 2);
                                    }
                                    hVar.U(h4);
                                    if (!h4.endsWith(e.F0) && !h4.endsWith("\\")) {
                                        z3 = false;
                                    }
                                    hVar.L(z3);
                                } else {
                                    throw new ZipException("fileName is null when reading central directory");
                                }
                            } else {
                                hVar.U(null);
                            }
                            g(hVar);
                            i(hVar);
                            e(hVar);
                            if (i6 > 0) {
                                byte[] bArr4 = new byte[i6];
                                n(this.f8296a, bArr4);
                                hVar.S(new String(bArr4));
                            }
                            arrayList.add(hVar);
                        } else {
                            StringBuffer stringBuffer3 = new StringBuffer("Expected central directory entry not found (#");
                            stringBuffer3.append(i4 + 1);
                            stringBuffer3.append(")");
                            throw new ZipException(stringBuffer3.toString());
                        }
                    }
                    cVar.d(arrayList);
                    e3.e eVar = new e3.e();
                    n(this.f8296a, bArr);
                    int e6 = f.e(bArr, 0);
                    if (e6 != e.f73014e) {
                        return cVar;
                    }
                    eVar.d(e6);
                    n(this.f8296a, bArr2);
                    int i7 = f.i(bArr2, 0);
                    eVar.f(i7);
                    if (i7 > 0) {
                        byte[] bArr5 = new byte[i7];
                        n(this.f8296a, bArr5);
                        eVar.e(new String(bArr5));
                    }
                    return cVar;
                } catch (IOException e7) {
                    throw new ZipException(e7);
                }
            }
            throw new ZipException("EndCentralRecord was null, maybe a corrupt zip file");
        }
        throw new ZipException("random access file was null", 3);
    }

    private e3.f l() throws ZipException {
        RandomAccessFile randomAccessFile = this.f8296a;
        if (randomAccessFile != null) {
            try {
                byte[] bArr = new byte[4];
                long length = randomAccessFile.length() - 22;
                e3.f fVar = new e3.f();
                int i2 = 0;
                while (true) {
                    long j4 = length - 1;
                    this.f8296a.seek(length);
                    i2++;
                    if (f.f(this.f8296a, bArr) == e.f73012d || i2 > 3000) {
                        break;
                    }
                    length = j4;
                }
                if (f.e(bArr, 0) == e.f73012d) {
                    byte[] bArr2 = new byte[4];
                    byte[] bArr3 = new byte[2];
                    fVar.q(e.f73012d);
                    n(this.f8296a, bArr3);
                    fVar.n(f.i(bArr3, 0));
                    n(this.f8296a, bArr3);
                    fVar.o(f.i(bArr3, 0));
                    n(this.f8296a, bArr3);
                    fVar.t(f.i(bArr3, 0));
                    n(this.f8296a, bArr3);
                    fVar.s(f.i(bArr3, 0));
                    n(this.f8296a, bArr2);
                    fVar.r(f.e(bArr2, 0));
                    n(this.f8296a, bArr2);
                    fVar.p(f.g(a(bArr2), 0));
                    n(this.f8296a, bArr3);
                    int i4 = f.i(bArr3, 0);
                    fVar.m(i4);
                    if (i4 > 0) {
                        byte[] bArr4 = new byte[i4];
                        n(this.f8296a, bArr4);
                        fVar.k(new String(bArr4));
                        fVar.l(bArr4);
                    } else {
                        fVar.k(null);
                    }
                    if (fVar.d() > 0) {
                        this.f8297b.x(true);
                    } else {
                        this.f8297b.x(false);
                    }
                    return fVar;
                }
                throw new ZipException("zip headers not found. probably not a zip file");
            } catch (IOException e4) {
                throw new ZipException("Probably not a zip file or a corrupted zip file", e4, 4);
            }
        }
        throw new ZipException("random access file was null", 3);
    }

    private ArrayList m(int i2) throws ZipException {
        if (i2 <= 0) {
            return null;
        }
        try {
            byte[] bArr = new byte[i2];
            this.f8296a.read(bArr);
            ArrayList arrayList = new ArrayList();
            int i4 = 0;
            while (i4 < i2) {
                g gVar = new g();
                gVar.e(f.i(bArr, i4));
                int i5 = i4 + 2;
                int i6 = f.i(bArr, i5);
                if (i6 + 2 > i2) {
                    i6 = f.h(bArr, i5);
                    if (i6 + 2 > i2) {
                        break;
                    }
                }
                gVar.f(i6);
                int i7 = i5 + 2;
                if (i6 > 0) {
                    byte[] bArr2 = new byte[i6];
                    System.arraycopy(bArr, i7, bArr2, 0, i6);
                    gVar.d(bArr2);
                }
                i4 = i7 + i6;
                arrayList.add(gVar);
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
            return null;
        } catch (IOException e4) {
            throw new ZipException(e4);
        }
    }

    private byte[] n(RandomAccessFile randomAccessFile, byte[] bArr) throws ZipException {
        try {
            if (randomAccessFile.read(bArr, 0, bArr.length) != -1) {
                return bArr;
            }
            throw new ZipException("unexpected end of file when reading short buff");
        } catch (IOException e4) {
            throw new ZipException("IOException when reading short buff", e4);
        }
    }

    private l p() throws ZipException {
        if (this.f8296a != null) {
            try {
                l lVar = new l();
                s();
                byte[] bArr = new byte[4];
                byte[] bArr2 = new byte[8];
                n(this.f8296a, bArr);
                long e4 = f.e(bArr, 0);
                if (e4 == e.f73020h) {
                    this.f8297b.C(true);
                    lVar.g(e4);
                    n(this.f8296a, bArr);
                    lVar.e(f.e(bArr, 0));
                    n(this.f8296a, bArr2);
                    lVar.f(f.g(bArr2, 0));
                    n(this.f8296a, bArr);
                    lVar.h(f.e(bArr, 0));
                    return lVar;
                }
                this.f8297b.C(false);
                return null;
            } catch (Exception e5) {
                throw new ZipException(e5);
            }
        }
        throw new ZipException("invalid file handler when trying to read Zip64EndCentralDirLocator");
    }

    private m q() throws ZipException {
        if (this.f8297b.j() != null) {
            long b4 = this.f8297b.j().b();
            if (b4 >= 0) {
                try {
                    this.f8296a.seek(b4);
                    m mVar = new m();
                    byte[] bArr = new byte[2];
                    byte[] bArr2 = new byte[4];
                    byte[] bArr3 = new byte[8];
                    n(this.f8296a, bArr2);
                    long e4 = f.e(bArr2, 0);
                    if (e4 == e.f73022i) {
                        mVar.p(e4);
                        n(this.f8296a, bArr3);
                        mVar.r(f.g(bArr3, 0));
                        n(this.f8296a, bArr);
                        mVar.u(f.i(bArr, 0));
                        n(this.f8296a, bArr);
                        mVar.v(f.i(bArr, 0));
                        n(this.f8296a, bArr2);
                        mVar.m(f.e(bArr2, 0));
                        n(this.f8296a, bArr2);
                        mVar.n(f.e(bArr2, 0));
                        n(this.f8296a, bArr3);
                        mVar.t(f.g(bArr3, 0));
                        n(this.f8296a, bArr3);
                        mVar.s(f.g(bArr3, 0));
                        n(this.f8296a, bArr3);
                        mVar.q(f.g(bArr3, 0));
                        n(this.f8296a, bArr3);
                        mVar.o(f.g(bArr3, 0));
                        long g4 = mVar.g() - 44;
                        if (g4 > 0) {
                            byte[] bArr4 = new byte[(int) g4];
                            n(this.f8296a, bArr4);
                            mVar.l(bArr4);
                        }
                        return mVar;
                    }
                    throw new ZipException("invalid signature for zip64 end of central directory record");
                } catch (IOException e5) {
                    throw new ZipException(e5);
                }
            }
            throw new ZipException("invalid offset for start of end of central directory record");
        }
        throw new ZipException("invalid zip64 end of central directory locator");
    }

    private n r(ArrayList arrayList, long j4, long j5, long j6, int i2) throws ZipException {
        int i4;
        boolean z3;
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            g gVar = (g) arrayList.get(i5);
            if (gVar != null && gVar.b() == 1) {
                n nVar = new n();
                byte[] a4 = gVar.a();
                if (gVar.c() <= 0) {
                    return null;
                }
                byte[] bArr = new byte[8];
                byte[] bArr2 = new byte[4];
                boolean z4 = true;
                if ((j4 & 65535) != 65535 || gVar.c() <= 0) {
                    i4 = 0;
                    z3 = false;
                } else {
                    System.arraycopy(a4, 0, bArr, 0, 8);
                    nVar.l(f.g(bArr, 0));
                    i4 = 8;
                    z3 = true;
                }
                if ((j5 & 65535) == 65535 && i4 < gVar.c()) {
                    System.arraycopy(a4, i4, bArr, 0, 8);
                    nVar.g(f.g(bArr, 0));
                    i4 += 8;
                    z3 = true;
                }
                if ((j6 & 65535) == 65535 && i4 < gVar.c()) {
                    System.arraycopy(a4, i4, bArr, 0, 8);
                    nVar.j(f.g(bArr, 0));
                    i4 += 8;
                    z3 = true;
                }
                if ((i2 & 65535) != 65535 || i4 >= gVar.c()) {
                    z4 = z3;
                } else {
                    System.arraycopy(a4, i4, bArr2, 0, 4);
                    nVar.h(f.e(bArr2, 0));
                }
                if (z4) {
                    return nVar;
                }
                return null;
            }
        }
        return null;
    }

    private void s() throws ZipException {
        try {
            byte[] bArr = new byte[4];
            long length = this.f8296a.length() - 22;
            while (true) {
                long j4 = length - 1;
                this.f8296a.seek(length);
                if (f.f(this.f8296a, bArr) == e.f73012d) {
                    RandomAccessFile randomAccessFile = this.f8296a;
                    randomAccessFile.seek(((((randomAccessFile.getFilePointer() - 4) - 4) - 8) - 4) - 4);
                    return;
                }
                length = j4;
            }
        } catch (IOException e4) {
            throw new ZipException(e4);
        }
    }

    public o c() throws ZipException {
        return d(null);
    }

    public o d(String str) throws ZipException {
        o oVar = new o();
        this.f8297b = oVar;
        oVar.u(str);
        this.f8297b.t(l());
        this.f8297b.A(p());
        if (this.f8297b.o()) {
            this.f8297b.B(q());
            if (this.f8297b.k() != null && this.f8297b.k().b() > 0) {
                this.f8297b.x(true);
            } else {
                this.f8297b.x(false);
            }
        }
        this.f8297b.q(k());
        return this.f8297b;
    }

    public i o(h hVar) throws ZipException {
        if (hVar != null && this.f8296a != null) {
            long u3 = hVar.u();
            if (hVar.A() != null && hVar.A().d() > 0) {
                u3 = hVar.u();
            }
            if (u3 >= 0) {
                try {
                    this.f8296a.seek(u3);
                    i iVar = new i();
                    byte[] bArr = new byte[2];
                    byte[] bArr2 = new byte[4];
                    n(this.f8296a, bArr2);
                    int e4 = f.e(bArr2, 0);
                    if (e4 == e.f73006a) {
                        iVar.P(e4);
                        n(this.f8296a, bArr);
                        iVar.R(f.i(bArr, 0));
                        n(this.f8296a, bArr);
                        iVar.K((f.i(bArr, 0) & 2048) != 0);
                        byte b4 = bArr[0];
                        if ((b4 & 1) != 0) {
                            iVar.D(true);
                        }
                        iVar.L(bArr);
                        String binaryString = Integer.toBinaryString(b4);
                        if (binaryString.length() >= 4) {
                            iVar.C(binaryString.charAt(3) == '1');
                        }
                        n(this.f8296a, bArr);
                        iVar.z(f.i(bArr, 0));
                        n(this.f8296a, bArr2);
                        iVar.M(f.e(bArr2, 0));
                        n(this.f8296a, bArr2);
                        iVar.A(f.e(bArr2, 0));
                        iVar.B((byte[]) bArr2.clone());
                        n(this.f8296a, bArr2);
                        iVar.y(f.g(a(bArr2), 0));
                        n(this.f8296a, bArr2);
                        iVar.Q(f.g(a(bArr2), 0));
                        n(this.f8296a, bArr);
                        int i2 = f.i(bArr, 0);
                        iVar.J(i2);
                        n(this.f8296a, bArr);
                        int i4 = f.i(bArr, 0);
                        iVar.H(i4);
                        int i5 = 30;
                        if (i2 > 0) {
                            byte[] bArr3 = new byte[i2];
                            n(this.f8296a, bArr3);
                            String h4 = net.lingala.zip4j.util.h.h(bArr3, iVar.v());
                            if (h4 != null) {
                                StringBuffer stringBuffer = new StringBuffer(":");
                                stringBuffer.append(System.getProperty("file.separator"));
                                if (h4.indexOf(stringBuffer.toString()) >= 0) {
                                    StringBuffer stringBuffer2 = new StringBuffer(":");
                                    stringBuffer2.append(System.getProperty("file.separator"));
                                    h4 = h4.substring(h4.indexOf(stringBuffer2.toString()) + 2);
                                }
                                iVar.I(h4);
                                i5 = 30 + i2;
                            } else {
                                throw new ZipException("file name is null, cannot assign file name to local file header");
                            }
                        } else {
                            iVar.I(null);
                        }
                        h(iVar);
                        iVar.N(u3 + i5 + i4);
                        iVar.O(hVar.v());
                        j(iVar);
                        f(iVar);
                        if (iVar.u() && iVar.f() != 99) {
                            if ((b4 & 64) == 64) {
                                iVar.E(1);
                            } else {
                                iVar.E(0);
                            }
                        }
                        if (iVar.d() <= 0) {
                            iVar.A(hVar.g());
                            iVar.B(hVar.h());
                        }
                        if (iVar.b() <= 0) {
                            iVar.y(hVar.e());
                        }
                        if (iVar.q() <= 0) {
                            iVar.Q(hVar.x());
                        }
                        return iVar;
                    }
                    StringBuffer stringBuffer3 = new StringBuffer("invalid local header signature for file: ");
                    stringBuffer3.append(hVar.p());
                    throw new ZipException(stringBuffer3.toString());
                } catch (IOException e5) {
                    throw new ZipException(e5);
                }
            }
            throw new ZipException("invalid local header offset");
        }
        throw new ZipException("invalid read parameters for local header");
    }
}
