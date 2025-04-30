package net.lingala.zip4j.unzip;

import e3.k;
import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Unzip.java */
/* loaded from: classes5.dex */
public class a extends Thread {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f72979a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ArrayList f72980b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ k f72981c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ f3.a f72982d;

    /* renamed from: e  reason: collision with root package name */
    private final /* synthetic */ String f72983e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(c cVar, String str, ArrayList arrayList, k kVar, f3.a aVar, String str2) {
        super(str);
        this.f72979a = cVar;
        this.f72980b = arrayList;
        this.f72981c = kVar;
        this.f72982d = aVar;
        this.f72983e = str2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.f72979a.h(this.f72980b, this.f72981c, this.f72982d, this.f72983e);
            this.f72982d.c();
        } catch (ZipException unused) {
        }
    }
}
