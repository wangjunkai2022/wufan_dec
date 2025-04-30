package net.lingala.zip4j.zip;

import e3.p;
import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ZipEngine.java */
/* loaded from: classes5.dex */
public class a extends Thread {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f73072a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ArrayList f73073b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ p f73074c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ f3.a f73075d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar, String str, ArrayList arrayList, p pVar, f3.a aVar) {
        super(str);
        this.f73072a = bVar;
        this.f73073b = arrayList;
        this.f73074c = pVar;
        this.f73075d = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.f73072a.h(this.f73073b, this.f73074c, this.f73075d);
        } catch (ZipException unused) {
        }
    }
}
