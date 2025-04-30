package org.json.alipay;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private int f73750a;

    /* renamed from: b  reason: collision with root package name */
    private Reader f73751b;

    /* renamed from: c  reason: collision with root package name */
    private char f73752c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f73753d;

    private d(Reader reader) {
        this.f73751b = reader.markSupported() ? reader : new BufferedReader(reader);
        this.f73753d = false;
        this.f73750a = 0;
    }

    public d(String str) {
        this(new StringReader(str));
    }

    private String a(int i2) {
        if (i2 == 0) {
            return "";
        }
        char[] cArr = new char[i2];
        int i4 = 0;
        if (this.f73753d) {
            this.f73753d = false;
            cArr[0] = this.f73752c;
            i4 = 1;
        }
        while (i4 < i2) {
            try {
                int read = this.f73751b.read(cArr, i4, i2 - i4);
                if (read == -1) {
                    break;
                }
                i4 += read;
            } catch (IOException e4) {
                throw new a(e4);
            }
        }
        this.f73750a += i4;
        if (i4 >= i2) {
            this.f73752c = cArr[i2 - 1];
            return new String(cArr);
        }
        throw a("Substring bounds error");
    }

    public final a a(String str) {
        return new a(str + toString());
    }

    public final void a() {
        int i2;
        if (this.f73753d || (i2 = this.f73750a) <= 0) {
            throw new a("Stepping back two steps is not supported");
        }
        this.f73750a = i2 - 1;
        this.f73753d = true;
    }

    public final char b() {
        if (this.f73753d) {
            this.f73753d = false;
            char c4 = this.f73752c;
            if (c4 != 0) {
                this.f73750a++;
            }
            return c4;
        }
        try {
            int read = this.f73751b.read();
            if (read <= 0) {
                this.f73752c = (char) 0;
                return (char) 0;
            }
            this.f73750a++;
            char c5 = (char) read;
            this.f73752c = c5;
            return c5;
        } catch (IOException e4) {
            throw new a(e4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0053, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final char c() {
        /*
            r5 = this;
        L0:
            char r0 = r5.b()
            r1 = 13
            r2 = 10
            r3 = 47
            if (r0 != r3) goto L3e
            char r0 = r5.b()
            r4 = 42
            if (r0 == r4) goto L25
            if (r0 == r3) goto L1a
            r5.a()
            return r3
        L1a:
            char r0 = r5.b()
            if (r0 == r2) goto L0
            if (r0 == r1) goto L0
            if (r0 != 0) goto L1a
            goto L0
        L25:
            char r0 = r5.b()
            if (r0 == 0) goto L37
            if (r0 != r4) goto L25
            char r0 = r5.b()
            if (r0 == r3) goto L0
            r5.a()
            goto L25
        L37:
            java.lang.String r0 = "Unclosed comment"
            org.json.alipay.a r0 = r5.a(r0)
            throw r0
        L3e:
            r3 = 35
            if (r0 != r3) goto L4d
        L42:
            char r0 = r5.b()
            if (r0 == r2) goto L0
            if (r0 == r1) goto L0
            if (r0 != 0) goto L42
            goto L0
        L4d:
            if (r0 == 0) goto L53
            r1 = 32
            if (r0 <= r1) goto L0
        L53:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.json.alipay.d.c():char");
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0147, code lost:
        throw a("Unterminated string");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d() {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.json.alipay.d.d():java.lang.Object");
    }

    public final String toString() {
        return " at character " + this.f73750a;
    }
}
