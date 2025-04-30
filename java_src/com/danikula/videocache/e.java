package com.danikula.videocache;

import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Config.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public final File f11080a;

    /* renamed from: b  reason: collision with root package name */
    public final com.danikula.videocache.file.c f11081b;

    /* renamed from: c  reason: collision with root package name */
    public final com.danikula.videocache.file.a f11082c;

    /* renamed from: d  reason: collision with root package name */
    public final com.danikula.videocache.sourcestorage.c f11083d;

    /* renamed from: e  reason: collision with root package name */
    public final w.b f11084e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(File file, com.danikula.videocache.file.c cVar, com.danikula.videocache.file.a aVar, com.danikula.videocache.sourcestorage.c cVar2, w.b bVar) {
        this.f11080a = file;
        this.f11081b = cVar;
        this.f11082c = aVar;
        this.f11083d = cVar2;
        this.f11084e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File a(String str) {
        return new File(this.f11080a, this.f11081b.a(str));
    }
}
