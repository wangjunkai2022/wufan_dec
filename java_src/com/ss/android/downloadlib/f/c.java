package com.ss.android.downloadlib.f;

import com.ss.android.socialbase.appdownloader.c.i;
import com.ss.android.socialbase.appdownloader.c.j;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BeforeAppInstallInterceptorManager.java */
/* loaded from: classes4.dex */
public class c implements j {

    /* renamed from: a  reason: collision with root package name */
    private static volatile c f57460a;

    /* renamed from: b  reason: collision with root package name */
    private List<j> f57461b;

    private c() {
        ArrayList arrayList = new ArrayList();
        this.f57461b = arrayList;
        arrayList.add(new b());
        this.f57461b.add(new a());
    }

    public static c a() {
        if (f57460a == null) {
            synchronized (c.class) {
                if (f57460a == null) {
                    f57460a = new c();
                }
            }
        }
        return f57460a;
    }

    @Override // com.ss.android.socialbase.appdownloader.c.j
    public void a(DownloadInfo downloadInfo, i iVar) {
        if (downloadInfo != null && this.f57461b.size() != 0) {
            a(downloadInfo, 0, iVar);
        } else if (iVar != null) {
            iVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final DownloadInfo downloadInfo, final int i2, final i iVar) {
        if (i2 != this.f57461b.size() && i2 >= 0) {
            this.f57461b.get(i2).a(downloadInfo, new i() { // from class: com.ss.android.downloadlib.f.c.1
                @Override // com.ss.android.socialbase.appdownloader.c.i
                public void a() {
                    c.this.a(downloadInfo, i2 + 1, iVar);
                }
            });
        } else {
            iVar.a();
        }
    }
}
