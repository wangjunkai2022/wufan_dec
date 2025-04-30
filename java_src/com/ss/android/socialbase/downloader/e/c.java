package com.ss.android.socialbase.downloader.e;

import com.ss.android.socialbase.downloader.i.f;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: SyncStreamReader.java */
/* loaded from: classes4.dex */
public class c implements b {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f58050a;

    /* renamed from: b  reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.f.a f58051b;

    public c(InputStream inputStream, int i2) {
        this.f58050a = inputStream;
        this.f58051b = new com.ss.android.socialbase.downloader.f.a(i2);
    }

    @Override // com.ss.android.socialbase.downloader.e.b
    public com.ss.android.socialbase.downloader.f.a a() throws IOException {
        com.ss.android.socialbase.downloader.f.a aVar = this.f58051b;
        aVar.f58062c = this.f58050a.read(aVar.f58060a);
        return this.f58051b;
    }

    @Override // com.ss.android.socialbase.downloader.e.b
    public void a(com.ss.android.socialbase.downloader.f.a aVar) {
    }

    @Override // com.ss.android.socialbase.downloader.e.b
    public void b() {
        f.a(this.f58050a);
    }
}
