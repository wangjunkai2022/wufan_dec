package net.lingala.zip4j.util;

import e3.o;
import java.io.File;
import net.lingala.zip4j.exception.ZipException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ArchiveMaintainer.java */
/* loaded from: classes5.dex */
public class b extends Thread {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f73001a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ o f73002b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ File f73003c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ f3.a f73004d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(c cVar, String str, o oVar, File file, f3.a aVar) {
        super(str);
        this.f73001a = cVar;
        this.f73002b = oVar;
        this.f73003c = file;
        this.f73004d = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.f73001a.g(this.f73002b, this.f73003c, this.f73004d);
        } catch (ZipException unused) {
        }
    }
}
