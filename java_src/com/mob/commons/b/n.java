package com.mob.commons.b;

import android.content.Context;
import com.mob.commons.b.g;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public class n extends g {
    public n(Context context) {
        super(context);
    }

    private String a(Context context, Object obj, Method method) {
        if (obj == null || method == null) {
            return null;
        }
        try {
            Object invoke = method.invoke(obj, context);
            if (invoke != null) {
                return (String) invoke;
            }
            return null;
        } catch (Throwable th) {
            c.a().a(th);
            return null;
        }
    }

    @Override // com.mob.commons.b.g
    protected g.c c() {
        Class<?> cls;
        Object obj;
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Method method6 = null;
        try {
            cls = Class.forName(com.mob.commons.j.a("034LbecaAjWcjbdbiLf%bfcabc$f!cjbc$fVcjbc0jc!cbcjce<f<efbfca0h<bc;fg<bfce2jcBcb"));
            try {
                obj = cls.newInstance();
            } catch (Throwable th) {
                th = th;
                c.a().a(th);
                obj = null;
                boolean z3 = true;
                if (cls != null) {
                }
                method = null;
                method2 = null;
                method3 = null;
                g.c cVar = new g.c();
                cVar.f52883b = a(this.f52869a, obj, method6);
                cVar.f52886e = a(this.f52869a, obj, method3);
                cVar.f52884c = a(this.f52869a, obj, method);
                cVar.f52885d = a(this.f52869a, obj, method2);
                cVar.f52882a = (cls != null || obj == null) ? false : false;
                return cVar;
            }
        } catch (Throwable th2) {
            th = th2;
            cls = null;
        }
        boolean z32 = true;
        if (cls != null || obj == null) {
            method = null;
            method2 = null;
            method3 = null;
        } else {
            try {
                method4 = cls.getMethod(com.mob.commons.j.a("014Pdd*gbIdg3g!dfbdbacb>b-ccdgcedg"), Context.class);
            } catch (Throwable th3) {
                c.a().a(th3);
                method4 = null;
            }
            try {
                method5 = cls.getMethod(com.mob.commons.j.a("007'dd%gbWdjchcedg"), Context.class);
            } catch (Throwable th4) {
                c.a().a(th4);
                method5 = null;
            }
            try {
                method3 = cls.getMethod(com.mob.commons.j.a("0075dd1gbLedchcedg"), Context.class);
            } catch (Throwable th5) {
                c.a().a(th5);
                method3 = null;
            }
            try {
                method6 = cls.getMethod(com.mob.commons.j.a("007Udd^gbSchchcedg"), Context.class);
            } catch (Throwable th6) {
                c.a().a(th6);
            }
            Method method7 = method4;
            method = method6;
            method6 = method5;
            method2 = method7;
        }
        g.c cVar2 = new g.c();
        cVar2.f52883b = a(this.f52869a, obj, method6);
        cVar2.f52886e = a(this.f52869a, obj, method3);
        cVar2.f52884c = a(this.f52869a, obj, method);
        cVar2.f52885d = a(this.f52869a, obj, method2);
        cVar2.f52882a = (cls != null || obj == null) ? false : false;
        return cVar2;
    }
}
