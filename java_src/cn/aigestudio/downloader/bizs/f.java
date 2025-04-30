package cn.aigestudio.downloader.bizs;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: DLInfo.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: c  reason: collision with root package name */
    public String f8373c;

    /* renamed from: d  reason: collision with root package name */
    public String f8374d;

    /* renamed from: e  reason: collision with root package name */
    public String f8375e;

    /* renamed from: f  reason: collision with root package name */
    public String f8376f;

    /* renamed from: h  reason: collision with root package name */
    int f8378h;

    /* renamed from: i  reason: collision with root package name */
    volatile boolean f8379i;

    /* renamed from: j  reason: collision with root package name */
    volatile boolean f8380j;

    /* renamed from: k  reason: collision with root package name */
    String f8381k;

    /* renamed from: l  reason: collision with root package name */
    String f8382l;

    /* renamed from: m  reason: collision with root package name */
    String f8383m;

    /* renamed from: n  reason: collision with root package name */
    String f8384n;

    /* renamed from: o  reason: collision with root package name */
    List<e> f8385o;

    /* renamed from: q  reason: collision with root package name */
    d.b f8387q;

    /* renamed from: r  reason: collision with root package name */
    File f8388r;

    /* renamed from: a  reason: collision with root package name */
    public AtomicLong f8371a = new AtomicLong();

    /* renamed from: b  reason: collision with root package name */
    public AtomicLong f8372b = new AtomicLong();

    /* renamed from: g  reason: collision with root package name */
    public AtomicInteger f8377g = new AtomicInteger();

    /* renamed from: s  reason: collision with root package name */
    public boolean f8389s = false;

    /* renamed from: t  reason: collision with root package name */
    public boolean f8390t = false;

    /* renamed from: p  reason: collision with root package name */
    final List<j> f8386p = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(j jVar) {
        this.f8386p.add(jVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b(j jVar) {
        this.f8386p.remove(jVar);
    }
}
