package net.lingala.zip4j.unzip;

import e3.h;
import e3.k;
import net.lingala.zip4j.exception.ZipException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Unzip.java */
/* loaded from: classes5.dex */
public class b extends Thread {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f72984a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ h f72985b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ String f72986c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ k f72987d;

    /* renamed from: e  reason: collision with root package name */
    private final /* synthetic */ String f72988e;

    /* renamed from: f  reason: collision with root package name */
    private final /* synthetic */ f3.a f72989f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(c cVar, String str, h hVar, String str2, k kVar, String str3, f3.a aVar) {
        super(str);
        this.f72984a = cVar;
        this.f72985b = hVar;
        this.f72986c = str2;
        this.f72987d = kVar;
        this.f72988e = str3;
        this.f72989f = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.f72984a.i(this.f72985b, this.f72986c, this.f72987d, this.f72988e, this.f72989f);
            this.f72989f.c();
        } catch (ZipException unused) {
        }
    }
}
