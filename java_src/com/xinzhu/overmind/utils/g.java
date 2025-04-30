package com.xinzhu.overmind.utils;

import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: EncodedBuffer.java */
/* loaded from: classes3.dex */
public final class g {

    /* renamed from: l  reason: collision with root package name */
    private static final String f64692l = "EncodedBuffer";

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<byte[]> f64693a;

    /* renamed from: b  reason: collision with root package name */
    private final int f64694b;

    /* renamed from: c  reason: collision with root package name */
    private int f64695c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f64696d;

    /* renamed from: e  reason: collision with root package name */
    private int f64697e;

    /* renamed from: f  reason: collision with root package name */
    private int f64698f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f64699g;

    /* renamed from: h  reason: collision with root package name */
    private int f64700h;

    /* renamed from: i  reason: collision with root package name */
    private int f64701i;

    /* renamed from: j  reason: collision with root package name */
    private int f64702j;

    /* renamed from: k  reason: collision with root package name */
    private int f64703k;

    public g() {
        this(0);
    }

    private static int K(int val) {
        return (val >> 31) ^ (val << 1);
    }

    private static long L(long val) {
        return (val >> 63) ^ (val << 1);
    }

    private static int b(String tag, String prefix, int start, byte[] buf) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = buf.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 % 16 == 0) {
                if (i2 != 0) {
                    stringBuffer = new StringBuffer();
                }
                stringBuffer.append(prefix);
                stringBuffer.append('[');
                stringBuffer.append(start + i2);
                stringBuffer.append(']');
                stringBuffer.append(' ');
            } else {
                stringBuffer.append(' ');
            }
            byte b4 = buf[i2];
            byte b5 = (byte) ((b4 >> 4) & 15);
            if (b5 < 10) {
                stringBuffer.append((char) (b5 + 48));
            } else {
                stringBuffer.append((char) (b5 + 87));
            }
            byte b6 = (byte) (b4 & 15);
            if (b6 < 10) {
                stringBuffer.append((char) (b6 + 48));
            } else {
                stringBuffer.append((char) (b6 + 87));
            }
        }
        return length;
    }

    public static void c(String tag, String prefix, byte[] buf) {
        b(tag, prefix, 0, buf);
    }

    public static int i(int val) {
        if ((val & (-128)) == 0) {
            return 1;
        }
        if ((val & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & val) == 0) {
            return 3;
        }
        return (val & (-268435456)) == 0 ? 4 : 5;
    }

    public static int j(long val) {
        if (((-128) & val) == 0) {
            return 1;
        }
        if (((-16384) & val) == 0) {
            return 2;
        }
        if (((-2097152) & val) == 0) {
            return 3;
        }
        if (((-268435456) & val) == 0) {
            return 4;
        }
        if (((-34359738368L) & val) == 0) {
            return 5;
        }
        if (((-4398046511104L) & val) == 0) {
            return 6;
        }
        if (((-562949953421312L) & val) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & val) == 0) {
            return 8;
        }
        return (val & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int k(int val) {
        return i(K(val));
    }

    public static int l(long val) {
        return j(L(val));
    }

    private void s() {
        int i2 = this.f64698f + 1;
        this.f64698f = i2;
        if (i2 >= this.f64695c) {
            byte[] bArr = new byte[this.f64694b];
            this.f64696d = bArr;
            this.f64693a.add(bArr);
            this.f64695c++;
        } else {
            this.f64696d = this.f64693a.get(i2);
        }
        this.f64697e = 0;
    }

    public void A(int srcOffset, int size) {
        if (this.f64702j >= 0) {
            if (srcOffset >= r()) {
                if (srcOffset + size > this.f64703k) {
                    throw new IllegalArgumentException("Trying to move more data than there is -- srcOffset=" + srcOffset + " size=" + size + " " + g());
                } else if (size == 0) {
                    return;
                } else {
                    int i2 = this.f64698f;
                    int i4 = this.f64694b;
                    int i5 = this.f64697e;
                    if (srcOffset == (i2 * i4) + i5) {
                        if (size <= i4 - i5) {
                            this.f64697e = i5 + size;
                            return;
                        }
                        int i6 = size - (i4 - i5);
                        int i7 = i6 % i4;
                        this.f64697e = i7;
                        if (i7 == 0) {
                            this.f64697e = i4;
                            this.f64698f = i2 + (i6 / i4);
                        } else {
                            this.f64698f = i2 + (i6 / i4) + 1;
                        }
                        this.f64696d = this.f64693a.get(this.f64698f);
                        return;
                    }
                    int i8 = srcOffset / i4;
                    byte[] bArr = this.f64693a.get(i8);
                    int i9 = srcOffset % this.f64694b;
                    while (size > 0) {
                        if (this.f64697e >= this.f64694b) {
                            s();
                        }
                        if (i9 >= this.f64694b) {
                            i8++;
                            bArr = this.f64693a.get(i8);
                            i9 = 0;
                        }
                        int i10 = this.f64694b;
                        int min = Math.min(size, Math.min(i10 - this.f64697e, i10 - i9));
                        System.arraycopy(bArr, i9, this.f64696d, this.f64697e, min);
                        this.f64697e += min;
                        i9 += min;
                        size -= min;
                    }
                    return;
                }
            }
            throw new IllegalArgumentException("Can only move forward in the buffer -- srcOffset=" + srcOffset + " size=" + size + " " + g());
        }
        throw new IllegalStateException("writeFromThisBuffer before startEditing");
    }

    public void B(byte[] val) {
        if (val == null || val.length <= 0) {
            return;
        }
        C(val, 0, val.length);
    }

    public void C(byte[] val, int offset, int length) {
        if (val == null) {
            return;
        }
        int i2 = this.f64694b;
        int i4 = this.f64697e;
        int i5 = length < i2 - i4 ? length : i2 - i4;
        if (i5 > 0) {
            System.arraycopy(val, offset, this.f64696d, i4, i5);
            this.f64697e += i5;
            length -= i5;
            offset += i5;
        }
        while (length > 0) {
            s();
            int i6 = this.f64694b;
            if (length < i6) {
                i6 = length;
            }
            System.arraycopy(val, offset, this.f64696d, this.f64697e, i6);
            this.f64697e += i6;
            length -= i6;
            offset += i6;
        }
    }

    public void D(byte val) {
        if (this.f64697e >= this.f64694b) {
            s();
        }
        byte[] bArr = this.f64696d;
        int i2 = this.f64697e;
        this.f64697e = i2 + 1;
        bArr[i2] = val;
    }

    public void E(int val) {
        D((byte) val);
        D((byte) (val >> 8));
        D((byte) (val >> 16));
        D((byte) (val >> 24));
    }

    public void F(long val) {
        D((byte) val);
        D((byte) (val >> 8));
        D((byte) (val >> 16));
        D((byte) (val >> 24));
        D((byte) (val >> 32));
        D((byte) (val >> 40));
        D((byte) (val >> 48));
        D((byte) (val >> 56));
    }

    public void G(int val) {
        while ((val & (-128)) != 0) {
            D((byte) ((val & 127) | 128));
            val >>>= 7;
        }
        D((byte) val);
    }

    public void H(long val) {
        while (((-128) & val) != 0) {
            D((byte) ((127 & val) | 128));
            val >>>= 7;
        }
        D((byte) val);
    }

    public void I(int val) {
        G(K(val));
    }

    public void J(long val) {
        H(L(val));
    }

    public void a(String tag) {
        int size = this.f64693a.size();
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i2 += b(tag, "{" + i4 + "} ", i2, this.f64693a.get(i4));
        }
    }

    public void d(int pos, int val) {
        int i2 = this.f64694b;
        this.f64693a.get(pos / this.f64694b)[pos % i2] = (byte) val;
        int i4 = pos + 1;
        int i5 = this.f64694b;
        this.f64693a.get(i4 / i2)[i4 % i5] = (byte) (val >> 8);
        int i6 = pos + 2;
        int i7 = this.f64694b;
        this.f64693a.get(i6 / i5)[i6 % i7] = (byte) (val >> 16);
        int i8 = pos + 3;
        this.f64693a.get(i8 / i7)[i8 % this.f64694b] = (byte) (val >> 24);
    }

    public byte[] e(int size) {
        byte[] bArr = new byte[size];
        int i2 = size / this.f64694b;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            System.arraycopy(this.f64693a.get(i4), 0, bArr, i5, this.f64694b);
            i5 += this.f64694b;
            i4++;
        }
        int i6 = size - (i2 * this.f64694b);
        if (i6 > 0) {
            System.arraycopy(this.f64693a.get(i4), 0, bArr, i5, i6);
        }
        return bArr;
    }

    public int f() {
        return this.f64693a.size();
    }

    public String g() {
        return "EncodedBuffer( mChunkSize=" + this.f64694b + " mBuffers.size=" + this.f64693a.size() + " mBufferCount=" + this.f64695c + " mWriteIndex=" + this.f64697e + " mWriteBufIndex=" + this.f64698f + " mReadBufIndex=" + this.f64700h + " mReadIndex=" + this.f64701i + " mReadableSize=" + this.f64703k + " mReadLimit=" + this.f64702j + " )";
    }

    public int h(int pos) {
        int i2 = this.f64694b;
        int i4 = pos + 1;
        int i5 = this.f64694b;
        int i6 = pos + 2;
        int i7 = this.f64694b;
        int i8 = (this.f64693a.get(pos / this.f64694b)[pos % i2] & 255) | ((this.f64693a.get(i4 / i2)[i4 % i5] & 255) << 8) | ((this.f64693a.get(i6 / i5)[i6 % i7] & 255) << 16);
        int i9 = pos + 3;
        return ((this.f64693a.get(i9 / i7)[i9 % this.f64694b] & 255) << 24) | i8;
    }

    public int m() {
        return (this.f64700h * this.f64694b) + this.f64701i;
    }

    public int n() {
        return this.f64703k;
    }

    public int o() {
        return ((this.f64695c - 1) * this.f64694b) + this.f64697e;
    }

    public int p() {
        return this.f64698f;
    }

    public int q() {
        return this.f64697e;
    }

    public int r() {
        return (this.f64698f * this.f64694b) + this.f64697e;
    }

    public byte t() {
        int i2 = this.f64700h;
        int i4 = this.f64695c;
        if (i2 <= i4 && (i2 != i4 - 1 || this.f64701i < this.f64702j)) {
            if (this.f64701i >= this.f64694b) {
                int i5 = i2 + 1;
                this.f64700h = i5;
                this.f64699g = this.f64693a.get(i5);
                this.f64701i = 0;
            }
            byte[] bArr = this.f64699g;
            int i6 = this.f64701i;
            this.f64701i = i6 + 1;
            return bArr[i6];
        }
        throw new IndexOutOfBoundsException("Trying to read too much data mReadBufIndex=" + this.f64700h + " mBufferCount=" + this.f64695c + " mReadIndex=" + this.f64701i + " mReadLimit=" + this.f64702j);
    }

    public int u() {
        return (t() & 255) | ((t() & 255) << 8) | ((t() & 255) << 16) | ((t() & 255) << 24);
    }

    public long v() {
        int i2 = 0;
        long j4 = 0;
        do {
            byte t3 = t();
            j4 |= (t3 & ByteCompanionObject.MAX_VALUE) << i2;
            if ((t3 & 128) == 0) {
                return j4;
            }
            i2 += 7;
        } while (i2 <= 64);
        throw new RuntimeException("Varint too long -- " + g());
    }

    public void w() {
        this.f64699g = this.f64693a.get(0);
        this.f64700h = 0;
        this.f64701i = 0;
    }

    public void x(int writePos) {
        if (writePos <= r()) {
            int i2 = this.f64694b;
            int i4 = writePos / i2;
            this.f64698f = i4;
            int i5 = writePos % i2;
            this.f64697e = i5;
            if (i5 == 0 && i4 != 0) {
                this.f64697e = i2;
                this.f64698f = i4 - 1;
            }
            this.f64696d = this.f64693a.get(this.f64698f);
            return;
        }
        throw new RuntimeException("rewindWriteTo only can go backwards" + writePos);
    }

    public void y(int amount) {
        if (amount < 0) {
            throw new RuntimeException("skipRead with negative amount=" + amount);
        } else if (amount == 0) {
        } else {
            int i2 = this.f64694b;
            int i4 = this.f64701i;
            if (amount <= i2 - i4) {
                this.f64701i = i4 + amount;
                return;
            }
            int i5 = amount - (i2 - i4);
            int i6 = i5 % i2;
            this.f64701i = i6;
            if (i6 == 0) {
                this.f64701i = i2;
                this.f64700h += i5 / i2;
            } else {
                this.f64700h += (i5 / i2) + 1;
            }
            this.f64699g = this.f64693a.get(this.f64700h);
        }
    }

    public void z() {
        int i2 = this.f64698f * this.f64694b;
        int i4 = this.f64697e;
        this.f64703k = i2 + i4;
        this.f64702j = i4;
        byte[] bArr = this.f64693a.get(0);
        this.f64696d = bArr;
        this.f64697e = 0;
        this.f64698f = 0;
        this.f64699g = bArr;
        this.f64700h = 0;
        this.f64701i = 0;
    }

    public g(int chunkSize) {
        ArrayList<byte[]> arrayList = new ArrayList<>();
        this.f64693a = arrayList;
        this.f64702j = -1;
        this.f64703k = -1;
        chunkSize = chunkSize <= 0 ? 8192 : chunkSize;
        this.f64694b = chunkSize;
        byte[] bArr = new byte[chunkSize];
        this.f64696d = bArr;
        arrayList.add(bArr);
        this.f64695c = 1;
    }
}
