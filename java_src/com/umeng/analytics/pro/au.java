package com.umeng.analytics.pro;

import com.umeng.analytics.pro.bk;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* compiled from: TDeserializer.java */
/* loaded from: classes4.dex */
public class au {

    /* renamed from: a  reason: collision with root package name */
    private final bq f60507a;

    /* renamed from: b  reason: collision with root package name */
    private final cd f60508b;

    public au() {
        this(new bk.a());
    }

    private bl j(byte[] bArr, ay ayVar, ay... ayVarArr) throws ax {
        this.f60508b.a(bArr);
        int length = ayVarArr.length + 1;
        ay[] ayVarArr2 = new ay[length];
        int i2 = 0;
        ayVarArr2[0] = ayVar;
        int i4 = 0;
        while (i4 < ayVarArr.length) {
            int i5 = i4 + 1;
            ayVarArr2[i5] = ayVarArr[i4];
            i4 = i5;
        }
        this.f60507a.j();
        bl blVar = null;
        while (i2 < length) {
            blVar = this.f60507a.l();
            if (blVar.f60583b == 0 || blVar.f60584c > ayVarArr2[i2].a()) {
                return null;
            }
            if (blVar.f60584c != ayVarArr2[i2].a()) {
                bt.a(this.f60507a, blVar.f60583b);
                this.f60507a.m();
            } else {
                i2++;
                if (i2 < length) {
                    this.f60507a.j();
                }
            }
        }
        return blVar;
    }

    public void a(ar arVar, byte[] bArr) throws ax {
        try {
            this.f60508b.a(bArr);
            arVar.read(this.f60507a);
        } finally {
            this.f60508b.e();
            this.f60507a.B();
        }
    }

    public Byte b(byte[] bArr, ay ayVar, ay... ayVarArr) throws ax {
        return (Byte) a((byte) 3, bArr, ayVar, ayVarArr);
    }

    public Double c(byte[] bArr, ay ayVar, ay... ayVarArr) throws ax {
        return (Double) a((byte) 4, bArr, ayVar, ayVarArr);
    }

    public Short d(byte[] bArr, ay ayVar, ay... ayVarArr) throws ax {
        return (Short) a((byte) 6, bArr, ayVar, ayVarArr);
    }

    public Integer e(byte[] bArr, ay ayVar, ay... ayVarArr) throws ax {
        return (Integer) a((byte) 8, bArr, ayVar, ayVarArr);
    }

    public Long f(byte[] bArr, ay ayVar, ay... ayVarArr) throws ax {
        return (Long) a((byte) 10, bArr, ayVar, ayVarArr);
    }

    public String g(byte[] bArr, ay ayVar, ay... ayVarArr) throws ax {
        return (String) a((byte) 11, bArr, ayVar, ayVarArr);
    }

    public ByteBuffer h(byte[] bArr, ay ayVar, ay... ayVarArr) throws ax {
        return (ByteBuffer) a((byte) 100, bArr, ayVar, ayVarArr);
    }

    public Short i(byte[] bArr, ay ayVar, ay... ayVarArr) throws ax {
        Short sh;
        try {
            try {
                if (j(bArr, ayVar, ayVarArr) != null) {
                    this.f60507a.j();
                    sh = Short.valueOf(this.f60507a.l().f60584c);
                } else {
                    sh = null;
                }
                return sh;
            } catch (Exception e4) {
                throw new ax(e4);
            }
        } finally {
            this.f60508b.e();
            this.f60507a.B();
        }
    }

    public au(bs bsVar) {
        cd cdVar = new cd();
        this.f60508b = cdVar;
        this.f60507a = bsVar.a(cdVar);
    }

    public void a(ar arVar, String str, String str2) throws ax {
        try {
            try {
                a(arVar, str.getBytes(str2));
            } catch (UnsupportedEncodingException unused) {
                throw new ax("JVM DOES NOT SUPPORT ENCODING: " + str2);
            }
        } finally {
            this.f60507a.B();
        }
    }

    public void a(ar arVar, byte[] bArr, ay ayVar, ay... ayVarArr) throws ax {
        try {
            try {
                if (j(bArr, ayVar, ayVarArr) != null) {
                    arVar.read(this.f60507a);
                }
            } catch (Exception e4) {
                throw new ax(e4);
            }
        } finally {
            this.f60508b.e();
            this.f60507a.B();
        }
    }

    public Boolean a(byte[] bArr, ay ayVar, ay... ayVarArr) throws ax {
        return (Boolean) a((byte) 2, bArr, ayVar, ayVarArr);
    }

    private Object a(byte b4, byte[] bArr, ay ayVar, ay... ayVarArr) throws ax {
        Object obj;
        try {
            try {
                bl j4 = j(bArr, ayVar, ayVarArr);
                if (j4 != null) {
                    if (b4 != 2) {
                        if (b4 != 3) {
                            if (b4 != 4) {
                                if (b4 != 6) {
                                    if (b4 != 8) {
                                        if (b4 != 100) {
                                            if (b4 != 10) {
                                                if (b4 == 11 && j4.f60583b == 11) {
                                                    obj = this.f60507a.z();
                                                }
                                            } else if (j4.f60583b == 10) {
                                                obj = Long.valueOf(this.f60507a.x());
                                            }
                                        } else if (j4.f60583b == 11) {
                                            obj = this.f60507a.A();
                                        }
                                    } else if (j4.f60583b == 8) {
                                        obj = Integer.valueOf(this.f60507a.w());
                                    }
                                } else if (j4.f60583b == 6) {
                                    obj = Short.valueOf(this.f60507a.v());
                                }
                            } else if (j4.f60583b == 4) {
                                obj = Double.valueOf(this.f60507a.y());
                            }
                        } else if (j4.f60583b == 3) {
                            obj = Byte.valueOf(this.f60507a.u());
                        }
                    } else if (j4.f60583b == 2) {
                        obj = Boolean.valueOf(this.f60507a.t());
                    }
                    return obj;
                }
                obj = null;
                return obj;
            } catch (Exception e4) {
                throw new ax(e4);
            }
        } finally {
            this.f60508b.e();
            this.f60507a.B();
        }
    }

    public void a(ar arVar, String str) throws ax {
        a(arVar, str.getBytes());
    }
}
