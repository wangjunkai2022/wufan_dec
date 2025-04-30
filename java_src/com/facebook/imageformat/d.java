package com.facebook.imageformat;

import com.facebook.common.internal.h;
import com.facebook.common.internal.m;
import com.facebook.imageformat.c;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import javax.annotation.Nullable;
/* compiled from: ImageFormatChecker.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: d  reason: collision with root package name */
    private static d f12387d;

    /* renamed from: a  reason: collision with root package name */
    private int f12388a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private List<c.a> f12389b;

    /* renamed from: c  reason: collision with root package name */
    private final c.a f12390c = new a();

    private d() {
        h();
    }

    public static c b(InputStream inputStream) throws IOException {
        return e().a(inputStream);
    }

    public static c c(String str) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException unused) {
        }
        try {
            c b4 = b(fileInputStream);
            com.facebook.common.internal.c.b(fileInputStream);
            return b4;
        } catch (IOException unused2) {
            fileInputStream2 = fileInputStream;
            c cVar = c.f12384c;
            com.facebook.common.internal.c.b(fileInputStream2);
            return cVar;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            com.facebook.common.internal.c.b(fileInputStream2);
            throw th;
        }
    }

    public static c d(InputStream inputStream) {
        try {
            return b(inputStream);
        } catch (IOException e4) {
            throw m.d(e4);
        }
    }

    public static synchronized d e() {
        d dVar;
        synchronized (d.class) {
            if (f12387d == null) {
                f12387d = new d();
            }
            dVar = f12387d;
        }
        return dVar;
    }

    private static int f(int i2, InputStream inputStream, byte[] bArr) throws IOException {
        h.i(inputStream);
        h.i(bArr);
        h.d(bArr.length >= i2);
        if (inputStream.markSupported()) {
            try {
                inputStream.mark(i2);
                return com.facebook.common.internal.b.b(inputStream, bArr, 0, i2);
            } finally {
                inputStream.reset();
            }
        }
        return com.facebook.common.internal.b.b(inputStream, bArr, 0, i2);
    }

    private void h() {
        this.f12388a = this.f12390c.b();
        List<c.a> list = this.f12389b;
        if (list != null) {
            for (c.a aVar : list) {
                this.f12388a = Math.max(this.f12388a, aVar.b());
            }
        }
    }

    public c a(InputStream inputStream) throws IOException {
        h.i(inputStream);
        int i2 = this.f12388a;
        byte[] bArr = new byte[i2];
        int f4 = f(i2, inputStream, bArr);
        c a4 = this.f12390c.a(bArr, f4);
        if (a4 == null || a4 == c.f12384c) {
            List<c.a> list = this.f12389b;
            if (list != null) {
                for (c.a aVar : list) {
                    c a5 = aVar.a(bArr, f4);
                    if (a5 != null && a5 != c.f12384c) {
                        return a5;
                    }
                }
            }
            return c.f12384c;
        }
        return a4;
    }

    public void g(@Nullable List<c.a> list) {
        this.f12389b = list;
        h();
    }
}
