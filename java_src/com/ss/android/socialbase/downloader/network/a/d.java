package com.ss.android.socialbase.downloader.network.a;

import com.ss.android.socialbase.downloader.network.i;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* compiled from: FakeDownloadHttpConnection.java */
/* loaded from: classes4.dex */
public class d implements i {

    /* renamed from: a  reason: collision with root package name */
    protected final Object f58515a;

    /* renamed from: b  reason: collision with root package name */
    private final List<com.ss.android.socialbase.downloader.model.c> f58516b;

    /* renamed from: c  reason: collision with root package name */
    private i f58517c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f58518d;

    /* renamed from: e  reason: collision with root package name */
    private long f58519e;

    /* renamed from: f  reason: collision with root package name */
    private InputStream f58520f;

    @Override // com.ss.android.socialbase.downloader.network.i
    public InputStream a() throws IOException {
        InputStream inputStream = this.f58520f;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }

    public boolean a(int i2) {
        return i2 >= 200 && i2 < 300;
    }

    @Override // com.ss.android.socialbase.downloader.network.g
    public int b() throws IOException {
        i iVar = this.f58517c;
        if (iVar != null) {
            return iVar.b();
        }
        return 0;
    }

    @Override // com.ss.android.socialbase.downloader.network.g
    public void c() {
        i iVar = this.f58517c;
        if (iVar != null) {
            iVar.c();
        }
    }

    @Override // com.ss.android.socialbase.downloader.network.i
    public void d() {
        i iVar = this.f58517c;
        if (iVar != null) {
            iVar.d();
        }
    }

    public void e() throws InterruptedException {
        synchronized (this.f58515a) {
            if (this.f58518d && this.f58517c == null) {
                this.f58515a.wait();
            }
        }
    }

    public List<com.ss.android.socialbase.downloader.model.c> f() {
        return this.f58516b;
    }

    public boolean g() {
        try {
            i iVar = this.f58517c;
            if (iVar != null) {
                return a(iVar.b());
            }
            return false;
        } catch (IOException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public boolean h() {
        return System.currentTimeMillis() - this.f58519e < b.f58498a;
    }

    @Override // com.ss.android.socialbase.downloader.network.g
    public String a(String str) {
        i iVar = this.f58517c;
        if (iVar != null) {
            return iVar.a(str);
        }
        return null;
    }
}
