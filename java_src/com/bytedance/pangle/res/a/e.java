package com.bytedance.pangle.res.a;

import java.io.InputStream;
/* loaded from: classes2.dex */
public final class e extends j {

    /* renamed from: a  reason: collision with root package name */
    private long f10340a;

    public e(InputStream inputStream) {
        super(inputStream);
    }

    @Override // com.bytedance.pangle.res.a.j
    protected final synchronized void a(int i2) {
        if (i2 != -1) {
            this.f10340a += i2;
        }
    }

    public final synchronized long b() {
        return this.f10340a;
    }

    @Override // com.bytedance.pangle.res.a.j, java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j4) {
        long skip;
        skip = super.skip(j4);
        this.f10340a += skip;
        return skip;
    }

    public final int a() {
        long b4 = b();
        if (b4 <= 2147483647L) {
            return (int) b4;
        }
        throw new ArithmeticException("The byte count " + b4 + " is too large to be converted to an int");
    }
}
