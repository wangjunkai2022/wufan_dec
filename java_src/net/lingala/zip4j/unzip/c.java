package net.lingala.zip4j.unzip;

import e3.h;
import e3.k;
import e3.o;
import java.io.File;
import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: Unzip.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private o f72990a;

    public c(o oVar) throws ZipException {
        if (oVar != null) {
            this.f72990a = oVar;
            return;
        }
        throw new ZipException("ZipModel is null");
    }

    private long c(ArrayList arrayList) throws ZipException {
        long e4;
        if (arrayList != null) {
            long j4 = 0;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                h hVar = (h) arrayList.get(i2);
                if (hVar.A() != null && hVar.A().f() > 0) {
                    e4 = hVar.A().a();
                } else {
                    e4 = hVar.e();
                }
                j4 += e4;
            }
            return j4;
        }
        throw new ZipException("fileHeaders is null, cannot calculate total work");
    }

    private void d(h hVar, String str, String str2) throws ZipException {
        if (hVar != null && net.lingala.zip4j.util.h.A(str)) {
            String p3 = hVar.p();
            if (!net.lingala.zip4j.util.h.A(str2)) {
                str2 = p3;
            }
            if (net.lingala.zip4j.util.h.A(str2)) {
                StringBuffer stringBuffer = new StringBuffer(String.valueOf(str));
                stringBuffer.append(str2);
                try {
                    File file = new File(new File(stringBuffer.toString()).getParent());
                    if (file.exists()) {
                        return;
                    }
                    file.mkdirs();
                    return;
                } catch (Exception e4) {
                    throw new ZipException(e4);
                }
            }
            return;
        }
        throw new ZipException("Cannot check output directory structure...one of the parameters was null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(ArrayList arrayList, k kVar, f3.a aVar, String str) throws ZipException {
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            i((h) arrayList.get(i2), str, kVar, null, aVar);
            if (aVar.m()) {
                aVar.setResult(3);
                aVar.u(0);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(h hVar, String str, k kVar, String str2, f3.a aVar) throws ZipException {
        if (hVar != null) {
            try {
                aVar.r(hVar.p());
                String str3 = net.lingala.zip4j.util.e.E0;
                if (!str.endsWith(str3)) {
                    StringBuffer stringBuffer = new StringBuffer(str);
                    stringBuffer.append(str3);
                    str = stringBuffer.toString();
                }
                if (hVar.C()) {
                    try {
                        String p3 = hVar.p();
                        if (net.lingala.zip4j.util.h.A(p3)) {
                            StringBuffer stringBuffer2 = new StringBuffer(String.valueOf(str));
                            stringBuffer2.append(p3);
                            File file = new File(stringBuffer2.toString());
                            if (file.exists()) {
                                return;
                            }
                            file.mkdirs();
                            return;
                        }
                        return;
                    } catch (Exception e4) {
                        aVar.b(e4);
                        throw new ZipException(e4);
                    }
                }
                d(hVar, str, str2);
                try {
                    new d(this.f72990a, hVar).t(aVar, str, str2, kVar);
                    return;
                } catch (Exception e5) {
                    aVar.b(e5);
                    throw new ZipException(e5);
                }
            } catch (ZipException e6) {
                aVar.b(e6);
                throw e6;
            } catch (Exception e7) {
                aVar.b(e7);
                throw new ZipException(e7);
            }
        }
        throw new ZipException("fileHeader is null");
    }

    public void e(k kVar, String str, f3.a aVar, boolean z3) throws ZipException {
        e3.c b4 = this.f72990a.b();
        if (b4 != null && b4.b() != null) {
            ArrayList b5 = b4.b();
            aVar.p(1);
            aVar.v(c(b5));
            aVar.u(1);
            if (z3) {
                new a(this, net.lingala.zip4j.util.e.G0, b5, kVar, aVar, str).start();
                return;
            } else {
                h(b5, kVar, aVar, str);
                return;
            }
        }
        throw new ZipException("invalid central directory in zipModel");
    }

    public void f(h hVar, String str, k kVar, String str2, f3.a aVar, boolean z3) throws ZipException {
        if (hVar != null) {
            aVar.p(1);
            aVar.v(hVar.e());
            aVar.u(1);
            aVar.t(0);
            aVar.r(hVar.p());
            if (z3) {
                new b(this, net.lingala.zip4j.util.e.G0, hVar, str, kVar, str2, aVar).start();
                return;
            }
            i(hVar, str, kVar, str2, aVar);
            aVar.c();
            return;
        }
        throw new ZipException("fileHeader is null");
    }

    public net.lingala.zip4j.io.h g(h hVar) throws ZipException {
        return new d(this.f72990a, hVar).k();
    }
}
