package com.alipay.sdk.packet;

import com.alipay.sdk.util.j;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private boolean f9802a;

    /* renamed from: b  reason: collision with root package name */
    private String f9803b = j.n();

    public e(boolean z3) {
        this.f9802a = z3;
    }

    private static int a(String str) {
        return Integer.parseInt(str);
    }

    private static String d(int i2) {
        return String.format(Locale.getDefault(), "%05d", Integer.valueOf(i2));
    }

    private static byte[] e(String str, String str2) {
        return com.alipay.sdk.encrypt.d.a(str, str2);
    }

    private static byte[] f(String str, byte[] bArr) {
        return com.alipay.sdk.encrypt.e.b(str, bArr);
    }

    private static byte[] g(byte[]... bArr) {
        DataOutputStream dataOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        if (bArr != null) {
            try {
                if (bArr.length != 0) {
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                            for (int i2 = 0; i2 < bArr.length; i2++) {
                                try {
                                    dataOutputStream.write(String.format(Locale.getDefault(), "%05d", Integer.valueOf(bArr[i2].length)).getBytes());
                                    dataOutputStream.write(bArr[i2]);
                                } catch (Exception unused) {
                                    if (byteArrayOutputStream != null) {
                                        try {
                                            byteArrayOutputStream.close();
                                        } catch (Exception unused2) {
                                        }
                                    }
                                    if (dataOutputStream != null) {
                                        dataOutputStream.close();
                                    }
                                    return null;
                                } catch (Throwable th) {
                                    th = th;
                                    byteArrayOutputStream2 = byteArrayOutputStream;
                                    if (byteArrayOutputStream2 != null) {
                                        try {
                                            byteArrayOutputStream2.close();
                                        } catch (Exception unused3) {
                                        }
                                    }
                                    if (dataOutputStream != null) {
                                        try {
                                            dataOutputStream.close();
                                        } catch (Exception unused4) {
                                        }
                                    }
                                    throw th;
                                }
                            }
                            dataOutputStream.flush();
                            byteArrayOutputStream.toByteArray();
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception unused5) {
                            }
                            dataOutputStream.close();
                        } catch (Exception unused6) {
                            dataOutputStream = null;
                        } catch (Throwable th2) {
                            th = th2;
                            dataOutputStream = null;
                        }
                    } catch (Exception unused7) {
                        byteArrayOutputStream = null;
                        dataOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        dataOutputStream = null;
                    }
                }
            } catch (Exception unused8) {
            }
        }
        return null;
    }

    private static byte[] h(String str, byte[] bArr) {
        return com.alipay.sdk.encrypt.e.d(str, bArr);
    }

    public final b b(c cVar) {
        ByteArrayInputStream byteArrayInputStream;
        String str;
        String str2;
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            byteArrayInputStream = new ByteArrayInputStream(cVar.f9781b);
            try {
                try {
                    byte[] bArr = new byte[5];
                    byteArrayInputStream.read(bArr);
                    byte[] bArr2 = new byte[Integer.parseInt(new String(bArr))];
                    byteArrayInputStream.read(bArr2);
                    str = new String(bArr2);
                } catch (Exception unused) {
                    str = null;
                }
                try {
                    byte[] bArr3 = new byte[5];
                    byteArrayInputStream.read(bArr3);
                    int parseInt = Integer.parseInt(new String(bArr3));
                    if (parseInt > 0) {
                        byte[] bArr4 = new byte[parseInt];
                        byteArrayInputStream.read(bArr4);
                        if (this.f9802a) {
                            bArr4 = com.alipay.sdk.encrypt.e.d(this.f9803b, bArr4);
                        }
                        if (cVar.f9780a) {
                            bArr4 = com.alipay.sdk.encrypt.c.b(bArr4);
                        }
                        str2 = new String(bArr4);
                    } else {
                        str2 = null;
                    }
                    try {
                        byteArrayInputStream.close();
                    } catch (Exception unused2) {
                    }
                } catch (Exception unused3) {
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (Exception unused4) {
                        }
                    }
                    str2 = null;
                    if (str == null) {
                    }
                    return new b(str, str2);
                }
            } catch (Throwable th) {
                th = th;
                byteArrayInputStream2 = byteArrayInputStream;
                if (byteArrayInputStream2 != null) {
                    try {
                        byteArrayInputStream2.close();
                    } catch (Exception unused5) {
                    }
                }
                throw th;
            }
        } catch (Exception unused6) {
            byteArrayInputStream = null;
            str = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (str == null || str2 != null) {
            return new b(str, str2);
        }
        return null;
    }

    public final c c(b bVar, boolean z3) {
        byte[] g4;
        if (bVar == null) {
            return null;
        }
        byte[] bytes = bVar.f9778a.getBytes();
        byte[] bytes2 = bVar.f9779b.getBytes();
        if (z3) {
            try {
                bytes2 = com.alipay.sdk.encrypt.c.a(bytes2);
            } catch (Exception unused) {
                z3 = false;
            }
        }
        if (this.f9802a) {
            g4 = g(bytes, com.alipay.sdk.encrypt.d.a(this.f9803b, com.alipay.sdk.cons.a.f9701b), com.alipay.sdk.encrypt.e.b(this.f9803b, bytes2));
        } else {
            g4 = g(bytes, bytes2);
        }
        return new c(z3, g4);
    }
}
