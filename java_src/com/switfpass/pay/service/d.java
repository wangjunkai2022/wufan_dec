package com.switfpass.pay.service;

import com.switfpass.pay.bean.RequestMsg;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f58883a = "com.switfpass.pay.service.d";

    /* renamed from: b  reason: collision with root package name */
    private static d f58884b;

    public static d d() {
        if (f58884b == null) {
            f58884b = new d();
        }
        return f58884b;
    }

    public void a(RequestMsg requestMsg, String str, com.switfpass.pay.thread.h hVar) {
        com.switfpass.pay.thread.g.a(new m(requestMsg, str, hVar), hVar);
    }

    public void b(RequestMsg requestMsg, com.switfpass.pay.thread.h hVar) {
        com.switfpass.pay.thread.g.a(new n(requestMsg, hVar), hVar);
    }

    public void c(RequestMsg requestMsg, String str, com.switfpass.pay.thread.h hVar) {
        com.switfpass.pay.thread.g.a(new f(requestMsg, str, hVar), hVar);
    }

    public void f(RequestMsg requestMsg, String str, com.switfpass.pay.thread.h hVar) {
        com.switfpass.pay.thread.g.a(new l(requestMsg, str, hVar), hVar);
    }

    public void g(String str, com.switfpass.pay.thread.h hVar) {
        com.switfpass.pay.thread.g.a(new k(str, hVar), hVar);
    }

    public void h(String str, String str2, com.switfpass.pay.thread.h hVar) {
        com.switfpass.pay.thread.g.a(new h(str2, str, hVar), hVar);
    }

    public void i(RequestMsg requestMsg, com.switfpass.pay.thread.h hVar) {
        com.switfpass.pay.thread.g.a(new g(requestMsg, hVar), hVar);
    }

    public void j(RequestMsg requestMsg, com.switfpass.pay.thread.h hVar) {
        com.switfpass.pay.thread.g.a(new i(requestMsg, hVar), hVar);
    }

    public void k(RequestMsg requestMsg, com.switfpass.pay.thread.h hVar) {
        com.switfpass.pay.thread.g.a(new j(requestMsg, hVar), hVar);
    }

    public void l(String str, com.switfpass.pay.thread.h hVar) {
        com.switfpass.pay.thread.g.a(new e(str, hVar), hVar);
    }
}
