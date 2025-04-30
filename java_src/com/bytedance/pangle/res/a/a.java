package com.bytedance.pangle.res.a;

import androidx.core.view.InputDeviceCompat;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f10306f = Logger.getLogger(a.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f10307a;

    /* renamed from: b  reason: collision with root package name */
    private final h f10308b;

    /* renamed from: c  reason: collision with root package name */
    private final g f10309c;

    /* renamed from: d  reason: collision with root package name */
    private final e f10310d;

    /* renamed from: e  reason: collision with root package name */
    private C0040a f10311e;

    /* renamed from: com.bytedance.pangle.res.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0040a {

        /* renamed from: a  reason: collision with root package name */
        public final short f10312a;

        /* renamed from: b  reason: collision with root package name */
        public final int f10313b;

        /* renamed from: c  reason: collision with root package name */
        public final int f10314c;

        /* renamed from: d  reason: collision with root package name */
        public final int f10315d;

        /* renamed from: e  reason: collision with root package name */
        public final int f10316e;

        private C0040a(short s3, int i2, int i4, int i5) {
            this.f10312a = s3;
            this.f10313b = i2;
            this.f10314c = i4;
            this.f10315d = i5;
            this.f10316e = i5 + i4;
        }

        public static C0040a a(g gVar, e eVar) {
            int a4 = eVar.a();
            try {
                return new C0040a(gVar.readShort(), gVar.readShort(), gVar.readInt(), a4);
            } catch (EOFException unused) {
                return new C0040a((short) -1, 0, 0, eVar.a());
            }
        }
    }

    public a(byte[] bArr, h hVar) {
        e eVar = new e(new ByteArrayInputStream(bArr));
        this.f10310d = eVar;
        this.f10309c = new g(new i(eVar));
        this.f10307a = bArr;
        this.f10308b = hVar;
    }

    private String a(int i2) {
        int i4;
        short s3;
        StringBuilder sb = new StringBuilder(16);
        while (true) {
            i4 = i2 - 1;
            if (i2 == 0 || this.f10309c.readByte() == 0) {
                break;
            }
            sb.append((char) s3);
            i2 = i4;
        }
        this.f10309c.skipBytes(i4);
        return sb.toString();
    }

    private void b() {
        b(515);
        int readInt = this.f10309c.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f10309c.readInt();
            this.f10309c.skipBytes(256);
        }
        while (j().f10312a == 513) {
            c();
        }
    }

    private void c() {
        d();
        short s3 = j().f10312a;
        while (s3 == 514) {
            d();
            s3 = j().f10312a;
        }
        while (s3 == 513) {
            e();
            if (this.f10310d.a() < this.f10311e.f10316e) {
                Logger logger = f10306f;
                logger.warning("Unknown data detected. Skipping: " + (this.f10311e.f10316e - this.f10310d.a()) + " byte(s)");
                e eVar = this.f10310d;
                eVar.skip((long) (this.f10311e.f10316e - eVar.a()));
            }
            s3 = j().f10312a;
        }
    }

    private void d() {
        b(514);
        this.f10309c.readUnsignedByte();
        this.f10309c.skipBytes(3);
        this.f10309c.skipBytes(this.f10309c.readInt() * 4);
    }

    private void e() {
        b(InputDeviceCompat.SOURCE_DPAD);
        this.f10309c.readUnsignedByte();
        this.f10309c.readByte();
        this.f10309c.skipBytes(2);
        int readInt = this.f10309c.readInt();
        int readInt2 = this.f10309c.readInt();
        i();
        int i2 = (this.f10311e.f10315d + readInt2) - (readInt * 4);
        if (i2 != this.f10310d.a()) {
            f10306f.warning("Invalid data detected. Skipping: " + (i2 - this.f10310d.a()) + " byte(s)");
            this.f10309c.skipBytes(i2 - this.f10310d.a());
        }
        int[] a4 = this.f10309c.a(readInt);
        HashSet hashSet = new HashSet();
        for (int i4 : a4) {
            if (i4 != -1 && !hashSet.contains(Integer.valueOf(i4))) {
                f();
                hashSet.add(Integer.valueOf(i4));
            }
        }
    }

    private void f() {
        if (this.f10309c.readShort() >= 0) {
            short readShort = this.f10309c.readShort();
            this.f10309c.readInt();
            if ((readShort & 1) == 0) {
                h();
                return;
            } else {
                g();
                return;
            }
        }
        throw new RuntimeException("Entry size is under 0 bytes.");
    }

    private void g() {
        int a4 = k.a(this.f10309c);
        k.a(this.f10307a, this.f10309c.readInt(), a4, this.f10308b);
        int readInt = this.f10309c.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            int a5 = k.a(this.f10309c);
            k.a(this.f10307a, this.f10309c.readInt(), a5, this.f10308b);
            h();
        }
    }

    private void h() {
        this.f10309c.a();
        this.f10309c.b();
        byte readByte = this.f10309c.readByte();
        int a4 = k.a(this.f10309c);
        int readInt = this.f10309c.readInt();
        if (readByte == 1) {
            k.a(this.f10307a, readInt, a4, this.f10308b);
        }
        if (readByte == 2) {
            k.a(this.f10307a, readInt, a4, this.f10308b);
        }
    }

    private void i() {
        int readInt = this.f10309c.readInt();
        int i2 = 28;
        if (readInt >= 28) {
            this.f10309c.readShort();
            this.f10309c.readShort();
            this.f10309c.readByte();
            this.f10309c.readByte();
            this.f10309c.readByte();
            this.f10309c.readByte();
            this.f10309c.readByte();
            this.f10309c.readByte();
            this.f10309c.readUnsignedShort();
            this.f10309c.readByte();
            this.f10309c.readByte();
            this.f10309c.readByte();
            this.f10309c.skipBytes(1);
            this.f10309c.readShort();
            this.f10309c.readShort();
            this.f10309c.readShort();
            this.f10309c.skipBytes(2);
            if (readInt >= 32) {
                this.f10309c.readByte();
                this.f10309c.readByte();
                this.f10309c.readShort();
                i2 = 32;
            }
            if (readInt >= 36) {
                this.f10309c.readShort();
                this.f10309c.readShort();
                i2 = 36;
            }
            if (readInt >= 48) {
                a(4).toCharArray();
                a(8).toCharArray();
                i2 = 48;
            }
            if (readInt >= 52) {
                this.f10309c.readByte();
                this.f10309c.readByte();
                this.f10309c.skipBytes(2);
                i2 = 52;
            }
            if (readInt >= 56) {
                this.f10309c.skipBytes(4);
                i2 = 56;
            }
            int i4 = readInt - 56;
            if (i4 > 0) {
                byte[] bArr = new byte[i4];
                i2 += i4;
                this.f10309c.readFully(bArr);
                BigInteger bigInteger = new BigInteger(1, bArr);
                if (bigInteger.equals(BigInteger.ZERO)) {
                    f10306f.fine(String.format("Config flags size > %d, but exceeding bytes are all zero, so it should be ok.", 56));
                } else {
                    f10306f.warning(String.format("Config flags size > %d. Size = %d. Exceeding bytes: 0x%X.", 56, Integer.valueOf(readInt), bigInteger));
                }
            }
            int i5 = readInt - i2;
            if (i5 > 0) {
                this.f10309c.skipBytes(i5);
                return;
            }
            return;
        }
        throw new RuntimeException("Config size < 28");
    }

    private C0040a j() {
        C0040a a4 = C0040a.a(this.f10309c, this.f10310d);
        this.f10311e = a4;
        return a4;
    }

    public final void a() {
        j();
        b(2);
        int readInt = this.f10309c.readInt();
        l.a(this.f10309c);
        j();
        for (int i2 = 0; i2 < readInt; i2++) {
            b(512);
            this.f10309c.readInt();
            this.f10309c.skipBytes(256);
            this.f10309c.skipBytes(4);
            this.f10309c.skipBytes(4);
            this.f10309c.skipBytes(4);
            this.f10309c.skipBytes(4);
            if (this.f10311e.f10313b == 288 && this.f10309c.readInt() > 0) {
                throw new RuntimeException("don't support");
            }
            l.a(this.f10309c);
            l.a(this.f10309c);
            j();
            boolean z3 = true;
            while (z3) {
                short s3 = this.f10311e.f10312a;
                if (s3 == 514) {
                    c();
                } else if (s3 != 515) {
                    z3 = false;
                } else {
                    b();
                }
            }
        }
    }

    private void b(int i2) {
        if (this.f10311e.f10312a != i2) {
            throw new RuntimeException(String.format("Invalid chunk type: expected=0x%08x, got=0x%08x", Integer.valueOf(i2), Short.valueOf(this.f10311e.f10312a)));
        }
    }
}
