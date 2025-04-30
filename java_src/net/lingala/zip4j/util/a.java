package net.lingala.zip4j.util;

import e3.o;
import net.lingala.zip4j.exception.ZipException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ArchiveMaintainer.java */
/* loaded from: classes5.dex */
public class a extends Thread {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f72997a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ o f72998b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ e3.h f72999c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ f3.a f73000d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(c cVar, String str, o oVar, e3.h hVar, f3.a aVar) {
        super(str);
        this.f72997a = cVar;
        this.f72998b = oVar;
        this.f72999c = hVar;
        this.f73000d = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.f72997a.j(this.f72998b, this.f72999c, this.f73000d);
            this.f73000d.c();
        } catch (ZipException unused) {
        }
    }
}
