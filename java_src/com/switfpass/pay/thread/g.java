package com.switfpass.pay.thread;
/* loaded from: classes4.dex */
public class g {
    public static void a(b bVar, e eVar) {
        if (bVar == null) {
            return;
        }
        if (eVar == null || (eVar instanceof h)) {
            new l(eVar, bVar).execute(new Void[0]);
        } else {
            new Thread(new j(bVar, eVar)).start();
        }
    }
}
