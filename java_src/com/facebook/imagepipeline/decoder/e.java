package com.facebook.imagepipeline.decoder;

import com.facebook.common.internal.h;
import com.facebook.common.internal.m;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: ProgressiveJpegParser.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: i  reason: collision with root package name */
    private static final int f12737i = 0;

    /* renamed from: j  reason: collision with root package name */
    private static final int f12738j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static final int f12739k = 2;

    /* renamed from: l  reason: collision with root package name */
    private static final int f12740l = 3;

    /* renamed from: m  reason: collision with root package name */
    private static final int f12741m = 4;

    /* renamed from: n  reason: collision with root package name */
    private static final int f12742n = 5;

    /* renamed from: o  reason: collision with root package name */
    private static final int f12743o = 6;

    /* renamed from: p  reason: collision with root package name */
    private static final int f12744p = 16384;

    /* renamed from: g  reason: collision with root package name */
    private boolean f12751g;

    /* renamed from: h  reason: collision with root package name */
    private final com.facebook.common.memory.a f12752h;

    /* renamed from: c  reason: collision with root package name */
    private int f12747c = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f12746b = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f12748d = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f12750f = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f12749e = 0;

    /* renamed from: a  reason: collision with root package name */
    private int f12745a = 0;

    public e(com.facebook.common.memory.a aVar) {
        this.f12752h = (com.facebook.common.memory.a) h.i(aVar);
    }

    private boolean a(InputStream inputStream) {
        int read;
        int i2 = this.f12749e;
        while (this.f12745a != 6 && (read = inputStream.read()) != -1) {
            try {
                int i4 = this.f12747c + 1;
                this.f12747c = i4;
                if (this.f12751g) {
                    this.f12745a = 6;
                    this.f12751g = false;
                    return false;
                }
                int i5 = this.f12745a;
                if (i5 != 0) {
                    if (i5 != 1) {
                        if (i5 != 2) {
                            if (i5 != 3) {
                                if (i5 == 4) {
                                    this.f12745a = 5;
                                } else if (i5 != 5) {
                                    h.o(false);
                                } else {
                                    int i6 = ((this.f12746b << 8) + read) - 2;
                                    com.facebook.common.util.e.c(inputStream, i6);
                                    this.f12747c += i6;
                                    this.f12745a = 2;
                                }
                            } else if (read == 255) {
                                this.f12745a = 3;
                            } else if (read == 0) {
                                this.f12745a = 2;
                            } else if (read == 217) {
                                this.f12751g = true;
                                g(i4 - 2);
                                this.f12745a = 2;
                            } else {
                                if (read == 218) {
                                    g(i4 - 2);
                                }
                                if (b(read)) {
                                    this.f12745a = 4;
                                } else {
                                    this.f12745a = 2;
                                }
                            }
                        } else if (read == 255) {
                            this.f12745a = 3;
                        }
                    } else if (read == 216) {
                        this.f12745a = 2;
                    } else {
                        this.f12745a = 6;
                    }
                } else if (read == 255) {
                    this.f12745a = 1;
                } else {
                    this.f12745a = 6;
                }
                this.f12746b = read;
            } catch (IOException e4) {
                m.d(e4);
            }
        }
        return (this.f12745a == 6 || this.f12749e == i2) ? false : true;
    }

    private static boolean b(int i2) {
        if (i2 == 1) {
            return false;
        }
        return ((i2 >= 208 && i2 <= 215) || i2 == 217 || i2 == 216) ? false : true;
    }

    private void g(int i2) {
        int i4 = this.f12748d;
        if (i4 > 0) {
            this.f12750f = i2;
        }
        this.f12748d = i4 + 1;
        this.f12749e = i4;
    }

    public int c() {
        return this.f12750f;
    }

    public int d() {
        return this.f12749e;
    }

    public boolean e() {
        return this.f12751g;
    }

    public boolean f() {
        return this.f12747c > 1 && this.f12745a != 6;
    }

    public boolean h(com.facebook.imagepipeline.image.e eVar) {
        if (this.f12745a != 6 && eVar.s() > this.f12747c) {
            com.facebook.common.memory.f fVar = new com.facebook.common.memory.f(eVar.p(), this.f12752h.get(16384), this.f12752h);
            try {
                com.facebook.common.util.e.c(fVar, this.f12747c);
                return a(fVar);
            } catch (IOException e4) {
                m.d(e4);
                return false;
            } finally {
                com.facebook.common.internal.c.b(fVar);
            }
        }
        return false;
    }
}
