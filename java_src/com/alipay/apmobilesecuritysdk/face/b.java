package com.alipay.apmobilesecuritysdk.face;

import com.alipay.apmobilesecuritysdk.face.a;
import com.umeng.analytics.pro.ai;
import java.util.HashMap;
import java.util.LinkedList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f9565a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f9565a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LinkedList linkedList;
        LinkedList linkedList2;
        while (true) {
            try {
                linkedList = this.f9565a.f9553d;
                if (linkedList.isEmpty()) {
                    break;
                }
                linkedList2 = this.f9565a.f9553d;
                a.b bVar = (a.b) linkedList2.pollFirst();
                if (bVar != null && !a.this.f9551b) {
                    a.this.f9551b = true;
                    try {
                        com.alipay.apmobilesecuritysdk.d.a.a(a.this.f9550a);
                        com.alipay.apmobilesecuritysdk.d.a.c();
                        HashMap hashMap = new HashMap();
                        hashMap.put(com.alipay.sdk.cons.b.f9718c, bVar.f9556c);
                        hashMap.put(com.alipay.sdk.cons.b.f9722g, bVar.f9555b);
                        com.alipay.apmobilesecuritysdk.d.a.a(a.this.f9550a);
                        hashMap.put(ai.f60407g, com.alipay.apmobilesecuritysdk.d.a.b());
                        hashMap.put("userId", bVar.f9557d);
                        e.a(a.this.f9550a, hashMap);
                        if (bVar.f9558e != null) {
                            a.c cVar = new a.c();
                            cVar.f9562c = com.alipay.apmobilesecuritysdk.a.a.f(a.this.f9550a);
                            cVar.f9561b = com.alipay.apmobilesecuritysdk.a.a.a(a.this.f9550a);
                            com.alipay.apmobilesecuritysdk.d.a.a(a.this.f9550a);
                            cVar.f9560a = com.alipay.apmobilesecuritysdk.d.a.b();
                            cVar.f9563d = com.alipay.apmobilesecuritysdk.f.b.a(a.this.f9550a);
                        }
                    } catch (Throwable unused) {
                    }
                    a.this.f9551b = false;
                }
            } catch (Throwable unused2) {
            }
        }
        a.g(this.f9565a);
    }
}
