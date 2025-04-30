package com.efs.sdk.base.core.d;

import com.efs.sdk.base.protocol.ILogProtocol;
import java.io.File;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public a f11349a;

    /* renamed from: b  reason: collision with root package name */
    public c f11350b = new c();

    /* renamed from: c  reason: collision with root package name */
    public byte[] f11351c;

    /* renamed from: d  reason: collision with root package name */
    public File f11352d;

    public b(String str, byte b4) {
        this.f11349a = new a(str, b4);
    }

    private void d() {
        byte[] bArr;
        a aVar = this.f11349a;
        int i2 = aVar.f11344c;
        if (i2 == 0 && (bArr = this.f11351c) != null) {
            aVar.f11347f = bArr.length;
        } else if (i2 == 1 && this.f11352d.exists()) {
            this.f11349a.f11347f = this.f11352d.length();
        }
    }

    public final long a() {
        d();
        return this.f11349a.f11347f;
    }

    public final boolean b() {
        return !"none".equals(this.f11349a.f11345d);
    }

    public final void c() {
        this.f11350b.f11353a = true;
    }

    public final void b(int i2) {
        this.f11349a.f11344c = i2;
    }

    public final void a(String str) {
        this.f11349a.f11345d = str;
    }

    public final void a(int i2) {
        this.f11349a.f11346e = i2;
        d();
    }

    public final void a(byte[] bArr) {
        this.f11351c = bArr;
        d();
    }

    public static b a(ILogProtocol iLogProtocol) {
        b bVar;
        b bVar2 = null;
        try {
            bVar = new b(iLogProtocol.getLogType(), iLogProtocol.getLogProtocol());
        } catch (Exception e4) {
            e = e4;
        }
        try {
            int bodyType = iLogProtocol.getBodyType();
            if (bodyType == 0) {
                bVar.b(0);
                bVar.a(iLogProtocol.generate());
            } else if (bodyType != 1) {
                com.efs.sdk.base.core.util.d.a("efs.base", "Can not support body type: " + iLogProtocol.getBodyType(), null);
            } else {
                bVar.b(1);
                bVar.f11352d = new File(iLogProtocol.getFilePath());
            }
            return bVar;
        } catch (Exception e5) {
            e = e5;
            bVar2 = bVar;
            com.efs.sdk.base.core.util.d.b("efs.base", "log send error", e);
            return bVar2;
        }
    }
}
