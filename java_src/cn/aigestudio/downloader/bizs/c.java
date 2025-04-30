package cn.aigestudio.downloader.bizs;

import android.content.Context;
import java.util.List;
/* compiled from: DLDBManager.java */
/* loaded from: classes2.dex */
public final class c implements m, n {

    /* renamed from: c  reason: collision with root package name */
    private static c f8359c;

    /* renamed from: a  reason: collision with root package name */
    private o f8360a;

    /* renamed from: b  reason: collision with root package name */
    private p f8361b;

    private c(Context context) {
        this.f8360a = new o(context);
        this.f8361b = new p(context);
    }

    public static c k(Context context) {
        if (f8359c == null) {
            f8359c = new c(context);
        }
        return f8359c;
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public synchronized void a(String str) {
        this.f8361b.a(str);
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public synchronized f b(String str) {
        return this.f8360a.b(str);
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public synchronized j c(String str) {
        return this.f8361b.c(str);
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public synchronized void d(f fVar) {
        this.f8360a.d(fVar);
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public synchronized void e(f fVar) {
        this.f8360a.e(fVar);
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public synchronized void f(j jVar) {
        this.f8361b.f(jVar);
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public synchronized void g(j jVar) {
        this.f8361b.g(jVar);
    }

    @Override // cn.aigestudio.downloader.bizs.m
    public synchronized void h(String str) {
        this.f8360a.h(str);
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public synchronized void i(String str) {
        this.f8361b.i(str);
    }

    @Override // cn.aigestudio.downloader.bizs.n
    public synchronized List<j> j(String str) {
        return this.f8361b.j(str);
    }
}
