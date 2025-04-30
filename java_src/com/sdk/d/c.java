package com.sdk.d;

import android.os.Process;
import android.os.SystemClock;
import com.sdk.a.e;
import com.sdk.d.e;
import java.net.HttpURLConnection;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Add missing generic type declarations: [Params, Result] */
/* loaded from: classes4.dex */
public class c<Params, Result> extends e.c<Params, Result> {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ e f56601b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(e eVar) {
        super(null);
        this.f56601b = eVar;
    }

    @Override // java.util.concurrent.Callable
    public Result call() {
        AtomicBoolean atomicBoolean;
        Object a4;
        atomicBoolean = this.f56601b.f56608f;
        atomicBoolean.set(true);
        Process.setThreadPriority(10);
        e eVar = this.f56601b;
        Params[] paramsArr = this.f56614a;
        com.sdk.a.e eVar2 = (com.sdk.a.e) eVar;
        if (eVar2.f56534p != e.a.CANCELLED && paramsArr != null && paramsArr.length != 0) {
            if (paramsArr.length == 4) {
                eVar2.f56538t = String.valueOf(paramsArr[1]);
                eVar2.f56539u = true;
                eVar2.f56540v = (Boolean) paramsArr[2];
                eVar2.f56541w = (Boolean) paramsArr[3];
            }
            if (paramsArr.length == 2) {
                eVar2.f56542x = (Boolean) paramsArr[1];
            }
            try {
                eVar2.f56537s = SystemClock.uptimeMillis();
                eVar2.a(1);
                com.sdk.a.g gVar = (com.sdk.a.g) paramsArr[0];
                String a5 = gVar.a();
                eVar2.f56533o = a5;
                HttpURLConnection a6 = gVar.a(a5, false);
                if (a6 == null) {
                    eVar2.a(4, new com.sdk.a.i(0, eVar2.b(), false));
                } else {
                    com.sdk.a.i b4 = eVar2.b(gVar, a6);
                    if (b4.a() == 0) {
                        eVar2.a(4, b4);
                    } else {
                        eVar2.a(3, Integer.valueOf(b4.a()), b4.b());
                    }
                }
            } catch (Exception e4) {
                com.sdk.o.c.c(e4.toString());
                com.sdk.o.b.a("PriorityAsyncTask", "网络访问异常：\n" + e4.toString(), eVar2.f56610h);
                com.sdk.o.b.a("PriorityAsyncTask", "网络访问异常httphander330：\n" + e4.toString(), eVar2.f56610h);
                eVar2.a(3, 302002, "网络访问异常");
            }
        }
        a4 = eVar.a((e) null);
        return (Result) a4;
    }
}
