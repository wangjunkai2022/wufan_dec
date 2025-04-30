package com.alipay.android.phone.mrpc.core;

import java.lang.reflect.Method;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;
/* loaded from: classes2.dex */
public final class x extends k {

    /* renamed from: g  reason: collision with root package name */
    private u f9499g;

    public x(u uVar, Method method, int i2, String str, byte[] bArr, boolean z3) {
        super(method, i2, str, bArr, "application/x-www-form-urlencoded", z3);
        this.f9499g = uVar;
    }

    @Override // com.alipay.android.phone.mrpc.core.f
    public final Object a() {
        c0 c0Var = new c0(this.f9499g.a());
        c0Var.f9430d = this.f9474b;
        c0Var.f9431e = this.f9477e;
        c0Var.f9434h = this.f9478f;
        c0Var.e("id", String.valueOf(this.f9476d));
        c0Var.e("operationType", this.f9475c);
        c0Var.e("gzip", String.valueOf(this.f9499g.d()));
        c0Var.f(new BasicHeader("uuid", UUID.randomUUID().toString()));
        List<Header> list = this.f9499g.c().f9480b;
        if (list != null && !list.isEmpty()) {
            for (Header header : list) {
                c0Var.f(header);
            }
        }
        Thread.currentThread().getId();
        c0Var.toString();
        try {
            e eVar = this.f9499g.b().a(c0Var).get();
            if (eVar != null) {
                return eVar.b();
            }
            throw new c((Integer) 9, "response is null");
        } catch (InterruptedException e4) {
            throw new c(13, "", e4);
        } catch (CancellationException e5) {
            throw new c(13, "", e5);
        } catch (ExecutionException e6) {
            Throwable cause = e6.getCause();
            if (cause == null || !(cause instanceof a)) {
                throw new c(9, "", e6);
            }
            a aVar = (a) cause;
            int a4 = aVar.a();
            switch (a4) {
                case 1:
                    a4 = 2;
                    break;
                case 2:
                    a4 = 3;
                    break;
                case 3:
                    a4 = 4;
                    break;
                case 4:
                    a4 = 5;
                    break;
                case 5:
                    a4 = 6;
                    break;
                case 6:
                    a4 = 7;
                    break;
                case 7:
                    a4 = 8;
                    break;
                case 8:
                    a4 = 15;
                    break;
                case 9:
                    a4 = 16;
                    break;
            }
            throw new c(Integer.valueOf(a4), aVar.b());
        }
    }
}
