package com.ss.android.downloadlib.addownload.b;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* compiled from: ModelManager.java */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f57143a;

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentHashMap<Long, DownloadModel> f57144b;

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentHashMap<Long, DownloadEventConfig> f57145c;

    /* renamed from: d  reason: collision with root package name */
    private final ConcurrentHashMap<Long, DownloadController> f57146d;

    /* renamed from: e  reason: collision with root package name */
    private final ConcurrentHashMap<Long, com.ss.android.downloadad.api.a.b> f57147e;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ModelManager.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static f f57149a = new f();
    }

    public DownloadController c(long j4) {
        return this.f57146d.get(Long.valueOf(j4));
    }

    public com.ss.android.downloadad.api.a.b d(long j4) {
        return this.f57147e.get(Long.valueOf(j4));
    }

    @NonNull
    public e e(long j4) {
        e eVar = new e();
        eVar.f57139a = j4;
        eVar.f57140b = a(j4);
        DownloadEventConfig b4 = b(j4);
        eVar.f57141c = b4;
        if (b4 == null) {
            eVar.f57141c = new com.ss.android.download.api.download.c();
        }
        DownloadController c4 = c(j4);
        eVar.f57142d = c4;
        if (c4 == null) {
            eVar.f57142d = new com.ss.android.download.api.download.b();
        }
        return eVar;
    }

    public void f(long j4) {
        this.f57144b.remove(Long.valueOf(j4));
        this.f57145c.remove(Long.valueOf(j4));
        this.f57146d.remove(Long.valueOf(j4));
    }

    private f() {
        this.f57143a = false;
        this.f57144b = new ConcurrentHashMap<>();
        this.f57145c = new ConcurrentHashMap<>();
        this.f57146d = new ConcurrentHashMap<>();
        this.f57147e = new ConcurrentHashMap<>();
    }

    public void b() {
        com.ss.android.downloadlib.d.a().a(new Runnable() { // from class: com.ss.android.downloadlib.addownload.b.f.1
            @Override // java.lang.Runnable
            public void run() {
                if (f.this.f57143a) {
                    return;
                }
                synchronized (f.class) {
                    if (!f.this.f57143a) {
                        f.this.f57147e.putAll(i.a().b());
                        f.this.f57143a = true;
                    }
                }
            }
        }, true);
    }

    public ConcurrentHashMap<Long, com.ss.android.downloadad.api.a.b> c() {
        return this.f57147e;
    }

    public static f a() {
        return a.f57149a;
    }

    public DownloadEventConfig b(long j4) {
        return this.f57145c.get(Long.valueOf(j4));
    }

    public void a(DownloadModel downloadModel) {
        if (downloadModel != null) {
            this.f57144b.put(Long.valueOf(downloadModel.getId()), downloadModel);
            if (downloadModel.getDeepLink() != null) {
                downloadModel.getDeepLink().setId(downloadModel.getId());
                downloadModel.getDeepLink().setPackageName(downloadModel.getPackageName());
            }
        }
    }

    public com.ss.android.downloadad.api.a.b b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (com.ss.android.downloadad.api.a.b bVar : this.f57147e.values()) {
            if (bVar != null && str.equals(bVar.a())) {
                return bVar;
            }
        }
        return null;
    }

    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        for (DownloadModel downloadModel : this.f57144b.values()) {
            if ((downloadModel instanceof AdDownloadModel) && TextUtils.equals(downloadModel.getDownloadUrl(), str)) {
                ((AdDownloadModel) downloadModel).setPackageName(str2);
            }
        }
    }

    public void a(long j4, DownloadEventConfig downloadEventConfig) {
        if (downloadEventConfig != null) {
            this.f57145c.put(Long.valueOf(j4), downloadEventConfig);
        }
    }

    public void a(long j4, DownloadController downloadController) {
        if (downloadController != null) {
            this.f57146d.put(Long.valueOf(j4), downloadController);
        }
    }

    public synchronized void a(com.ss.android.downloadad.api.a.b bVar) {
        if (bVar == null) {
            return;
        }
        this.f57147e.put(Long.valueOf(bVar.b()), bVar);
        i.a().a(bVar);
    }

    public DownloadModel a(long j4) {
        return this.f57144b.get(Long.valueOf(j4));
    }

    public com.ss.android.downloadad.api.a.b a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (com.ss.android.downloadad.api.a.b bVar : this.f57147e.values()) {
            if (bVar != null && str.equals(bVar.e())) {
                return bVar;
            }
        }
        return null;
    }

    public com.ss.android.downloadad.api.a.b a(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return null;
        }
        for (com.ss.android.downloadad.api.a.b bVar : this.f57147e.values()) {
            if (bVar != null && bVar.s() == downloadInfo.getId()) {
                return bVar;
            }
        }
        if (!TextUtils.isEmpty(downloadInfo.getExtra())) {
            try {
                long a4 = l.a(new JSONObject(downloadInfo.getExtra()), BaseConstants.EVENT_LABEL_EXTRA);
                if (a4 != 0) {
                    for (com.ss.android.downloadad.api.a.b bVar2 : this.f57147e.values()) {
                        if (bVar2 != null && bVar2.b() == a4) {
                            return bVar2;
                        }
                    }
                    com.ss.android.downloadlib.e.c.a().a("getNativeModelByInfo");
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        for (com.ss.android.downloadad.api.a.b bVar3 : this.f57147e.values()) {
            if (bVar3 != null && TextUtils.equals(bVar3.a(), downloadInfo.getUrl())) {
                return bVar3;
            }
        }
        return null;
    }

    public com.ss.android.downloadad.api.a.b a(int i2) {
        for (com.ss.android.downloadad.api.a.b bVar : this.f57147e.values()) {
            if (bVar != null && bVar.s() == i2) {
                return bVar;
            }
        }
        return null;
    }

    @NonNull
    public Map<Long, com.ss.android.downloadad.api.a.b> a(String str, String str2) {
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            for (com.ss.android.downloadad.api.a.b bVar : this.f57147e.values()) {
                if (bVar != null && TextUtils.equals(bVar.a(), str)) {
                    bVar.b(str2);
                    hashMap.put(Long.valueOf(bVar.b()), bVar);
                }
            }
        }
        return hashMap;
    }

    public synchronized void a(List<Long> list) {
        ArrayList arrayList = new ArrayList();
        for (Long l4 : list) {
            long longValue = l4.longValue();
            arrayList.add(String.valueOf(longValue));
            this.f57147e.remove(Long.valueOf(longValue));
        }
        i.a().a((List<String>) arrayList);
    }
}
