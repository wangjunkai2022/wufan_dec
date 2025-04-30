package com.ss.android.downloadlib.addownload.d;

import android.content.Context;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.List;
/* compiled from: PauseInterceptorManager.java */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static f f57258a;

    /* renamed from: b  reason: collision with root package name */
    private List<d> f57259b;

    private f() {
        ArrayList arrayList = new ArrayList();
        this.f57259b = arrayList;
        arrayList.add(new e());
        this.f57259b.add(new g());
        this.f57259b.add(new b());
        this.f57259b.add(new a());
    }

    public static f a() {
        if (f57258a == null) {
            synchronized (f.class) {
                if (f57258a == null) {
                    f57258a = new f();
                }
            }
        }
        return f57258a;
    }

    public void a(com.ss.android.downloadad.api.a.b bVar, int i2, c cVar) {
        List<d> list = this.f57259b;
        if (list != null && list.size() != 0 && bVar != null) {
            DownloadInfo a4 = com.ss.android.downloadlib.g.a((Context) null).a(bVar.a());
            if (a4 != null && AdBaseConstants.MIME_APK.equals(a4.getMimeType())) {
                boolean z3 = com.ss.android.socialbase.downloader.g.a.a(bVar.s()).a("pause_optimise_switch", 0) == 1;
                for (d dVar : this.f57259b) {
                    if (z3 || (dVar instanceof g)) {
                        if (dVar.a(bVar, i2, cVar)) {
                            return;
                        }
                    }
                }
                cVar.a(bVar);
                return;
            }
            cVar.a(bVar);
            return;
        }
        cVar.a(bVar);
    }
}
