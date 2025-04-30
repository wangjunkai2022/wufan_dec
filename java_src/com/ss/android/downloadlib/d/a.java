package com.ss.android.downloadlib.d;

import android.os.Build;
import androidx.annotation.NonNull;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.model.c;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.addownload.b.e;
import com.ss.android.downloadlib.addownload.b.f;
import com.ss.android.downloadlib.addownload.b.i;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.appdownloader.e.d;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.tencent.cos.common.COSHttpResponseKey;
import com.umeng.analytics.pro.ai;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AdEventHandler.java */
/* loaded from: classes4.dex */
public class a {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdEventHandler.java */
    /* renamed from: com.ss.android.downloadlib.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0299a {

        /* renamed from: a  reason: collision with root package name */
        private static a f57421a = new a();
    }

    public static a a() {
        return C0299a.f57421a;
    }

    public void b(long j4, int i2) {
        a(j4, i2, (DownloadInfo) null);
    }

    private a() {
    }

    public void a(long j4, int i2) {
        e e4 = f.a().e(j4);
        if (e4.x()) {
            com.ss.android.downloadlib.e.c.a().a("sendClickEvent ModelBox notValid");
        } else if (e4.f57141c.isEnableClickEvent()) {
            int i4 = 1;
            DownloadEventConfig downloadEventConfig = e4.f57141c;
            String clickItemTag = i2 == 1 ? downloadEventConfig.getClickItemTag() : downloadEventConfig.getClickButtonTag();
            String a4 = l.a(e4.f57141c.getClickLabel(), "click");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("download_click_type", Integer.valueOf(i2));
                jSONObject.putOpt("permission_notification", Integer.valueOf(d.a() ? 1 : 2));
                if (!com.ss.android.socialbase.downloader.i.f.c(j.getContext())) {
                    i4 = 2;
                }
                jSONObject.putOpt("network_available", Integer.valueOf(i4));
            } catch (JSONException e5) {
                e5.printStackTrace();
            }
            a(clickItemTag, a4, jSONObject, e4);
            if (!"click".equals(a4) || e4.f57140b == null) {
                return;
            }
            c.a().a(j4, e4.f57140b.getLogExtra());
        }
    }

    public void b(DownloadInfo downloadInfo, BaseException baseException) {
        if (downloadInfo == null) {
            return;
        }
        com.ss.android.downloadad.api.a.b a4 = f.a().a(downloadInfo);
        if (a4 == null) {
            com.ss.android.downloadlib.e.c.a().a("sendDownloadFailedEvent nativeModel null");
        } else if (a4.f56985c.get()) {
        } else {
            JSONObject jSONObject = new JSONObject();
            try {
                com.ss.android.downloadlib.g.f.c(downloadInfo, jSONObject);
                com.ss.android.downloadlib.a.a(jSONObject, downloadInfo);
                if (baseException != null) {
                    jSONObject.putOpt("fail_status", Integer.valueOf(baseException.getErrorCode()));
                    jSONObject.putOpt("fail_msg", baseException.getErrorMessage());
                    a4.d(baseException.getErrorCode());
                    a4.a(baseException.getErrorMessage());
                }
                a4.y();
                jSONObject.put("download_failed_times", a4.x());
                if (downloadInfo.getTotalBytes() > 0) {
                    double curBytes = downloadInfo.getCurBytes();
                    double totalBytes = downloadInfo.getTotalBytes();
                    Double.isNaN(curBytes);
                    Double.isNaN(totalBytes);
                    jSONObject.put("download_percent", curBytes / totalBytes);
                }
                int i2 = 1;
                jSONObject.put("has_send_download_failed_finally", a4.f56986d.get() ? 1 : 2);
                com.ss.android.downloadlib.g.f.a(a4, jSONObject);
                if (!a4.V()) {
                    i2 = 2;
                }
                jSONObject.put("is_update_download", i2);
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
            a(a4.j(), "download_failed", jSONObject, a4);
            i.a().a(a4);
        }
    }

    public void a(long j4, int i2, DownloadInfo downloadInfo) {
        e e4 = f.a().e(j4);
        if (e4.x()) {
            com.ss.android.downloadlib.e.c.a().a("sendEvent ModelBox notValid");
            return;
        }
        String str = null;
        JSONObject jSONObject = new JSONObject();
        l.a(jSONObject, "download_scene", Integer.valueOf(e4.t()));
        if (i2 == 1) {
            str = l.a(e4.f57141c.getStorageDenyLabel(), "storage_deny");
        } else if (i2 == 2) {
            str = l.a(e4.f57141c.getClickStartLabel(), "click_start");
            com.ss.android.downloadlib.g.f.a(downloadInfo, jSONObject);
        } else if (i2 == 3) {
            str = l.a(e4.f57141c.getClickPauseLabel(), "click_pause");
            com.ss.android.downloadlib.g.f.b(downloadInfo, jSONObject);
        } else if (i2 == 4) {
            str = l.a(e4.f57141c.getClickContinueLabel(), "click_continue");
            com.ss.android.downloadlib.g.f.c(downloadInfo, jSONObject);
        } else if (i2 == 5) {
            if (downloadInfo != null) {
                try {
                    com.ss.android.downloadlib.g.f.a(jSONObject, downloadInfo.getId());
                    com.ss.android.downloadlib.a.b(jSONObject, downloadInfo);
                } catch (Throwable unused) {
                }
            }
            str = l.a(e4.f57141c.getClickInstallLabel(), "click_install");
        }
        a(null, str, jSONObject, 0L, 1, e4);
    }

    public void b(String str, com.ss.android.downloadad.api.a.a aVar) {
        a((String) null, str, aVar);
    }

    public void b(String str, JSONObject jSONObject, com.ss.android.downloadad.api.a.a aVar) {
        a((String) null, str, jSONObject, aVar);
    }

    public void a(String str, int i2, e eVar) {
        a(null, str, null, i2, 0, eVar);
    }

    public void a(long j4, boolean z3, int i2) {
        e e4 = f.a().e(j4);
        if (e4.x()) {
            com.ss.android.downloadlib.e.c.a().a("sendQuickAppEvent ModelBox notValid");
        } else if (e4.f57140b.getQuickAppModel() == null) {
        } else {
            DownloadModel downloadModel = e4.f57140b;
            if (downloadModel instanceof AdDownloadModel) {
                ((AdDownloadModel) downloadModel).setFunnelType(3);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("download_click_type", Integer.valueOf(i2));
            } catch (JSONException e5) {
                e5.printStackTrace();
            }
            b(z3 ? "deeplink_quickapp_success" : "deeplink_quickapp_failed", jSONObject, e4);
        }
    }

    public void a(long j4, BaseException baseException) {
        e e4 = f.a().e(j4);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("download_time", 0);
            if (baseException != null) {
                jSONObject.putOpt("fail_status", Integer.valueOf(baseException.getErrorCode()));
                jSONObject.putOpt("fail_msg", baseException.getErrorMessage());
            }
        } catch (JSONException e5) {
            e5.printStackTrace();
        }
        b("download_failed", jSONObject, e4);
    }

    public void a(DownloadInfo downloadInfo) {
        com.ss.android.downloadad.api.a.b a4 = f.a().a(downloadInfo);
        if (a4 == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            com.ss.android.downloadlib.g.f.c(downloadInfo, jSONObject);
            a4.a(System.currentTimeMillis());
            a(a4.j(), "download_resume", jSONObject, a4);
            i.a().a(a4);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(JSONObject jSONObject, @NonNull com.ss.android.downloadad.api.a.b bVar) {
        a(bVar.j(), "install_finish", jSONObject, bVar);
    }

    public void a(DownloadInfo downloadInfo, BaseException baseException) {
        com.ss.android.downloadad.api.a.b a4;
        if (downloadInfo == null || (a4 = f.a().a(downloadInfo)) == null || a4.f56985c.get()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            com.ss.android.downloadlib.a.a(jSONObject, downloadInfo);
            jSONObject.putOpt("fail_status", Integer.valueOf(a4.E()));
            jSONObject.putOpt("fail_msg", a4.F());
            jSONObject.put("download_failed_times", a4.x());
            if (downloadInfo.getTotalBytes() > 0) {
                double curBytes = downloadInfo.getCurBytes();
                double totalBytes = downloadInfo.getTotalBytes();
                Double.isNaN(curBytes);
                Double.isNaN(totalBytes);
                jSONObject.put("download_percent", curBytes / totalBytes);
            }
            jSONObject.put("download_status", downloadInfo.getRealStatus());
            long currentTimeMillis = System.currentTimeMillis();
            if (a4.H() > 0) {
                jSONObject.put("time_from_start_download", currentTimeMillis - a4.H());
            }
            if (a4.B() > 0) {
                jSONObject.put("time_from_download_resume", currentTimeMillis - a4.B());
            }
            int i2 = 1;
            jSONObject.put("is_update_download", a4.V() ? 1 : 2);
            jSONObject.put("can_show_notification", d.a() ? 1 : 2);
            if (!a4.f56986d.get()) {
                i2 = 2;
            }
            jSONObject.put("has_send_download_failed_finally", i2);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        a(a4.j(), "download_cancel", jSONObject, a4);
    }

    public void a(String str, com.ss.android.downloadad.api.a.a aVar) {
        a(str, (JSONObject) null, aVar);
    }

    public void a(String str, JSONObject jSONObject, long j4) {
        com.ss.android.downloadad.api.a.a d4 = f.a().d(j4);
        if (d4 != null) {
            a(str, jSONObject, d4);
            return;
        }
        e e4 = f.a().e(j4);
        if (e4.x()) {
            com.ss.android.downloadlib.e.c.a().a("sendUnityEvent ModelBox notValid");
        } else {
            a(str, jSONObject, e4);
        }
    }

    public void a(String str, JSONObject jSONObject, com.ss.android.downloadad.api.a.a aVar) {
        JSONObject jSONObject2 = new JSONObject();
        l.a(jSONObject2, "unity_label", str);
        a("embeded_ad", "ttdownloader_unity", l.a(jSONObject, jSONObject2), aVar);
    }

    public void a(String str, @NonNull DownloadModel downloadModel, @NonNull DownloadEventConfig downloadEventConfig, @NonNull DownloadController downloadController) {
        b(str, new e(downloadModel.getId(), downloadModel, downloadEventConfig, downloadController));
    }

    public void a(String str, long j4) {
        com.ss.android.downloadad.api.a.b d4 = f.a().d(j4);
        if (d4 != null) {
            b(str, d4);
        } else {
            b(str, f.a().e(j4));
        }
    }

    public void a(String str, String str2, com.ss.android.downloadad.api.a.a aVar) {
        a(str, str2, (JSONObject) null, aVar);
    }

    public void a(String str, String str2, JSONObject jSONObject, com.ss.android.downloadad.api.a.a aVar) {
        a(str, str2, jSONObject, 0L, 0, aVar);
    }

    private void a(String str, String str2, JSONObject jSONObject, long j4, int i2, com.ss.android.downloadad.api.a.a aVar) {
        if (aVar == null) {
            com.ss.android.downloadlib.e.c.a().a("onEvent data null");
        } else if ((aVar instanceof e) && ((e) aVar).x()) {
            com.ss.android.downloadlib.e.c.a().a("onEvent ModelBox notValid");
        } else {
            try {
                c.a c4 = new c.a().a(l.a(str, aVar.j(), "embeded_ad")).b(str2).b(aVar.c()).a(aVar.b()).c(aVar.d());
                if (j4 <= 0) {
                    j4 = aVar.l();
                }
                c.a a4 = c4.b(j4).d(aVar.i()).a(aVar.n()).a(l.a(a(aVar), jSONObject)).b(aVar.k()).a(aVar.o());
                if (i2 <= 0) {
                    i2 = 2;
                }
                a(a4.a(i2).a(aVar.m()).a());
            } catch (Exception e4) {
                com.ss.android.downloadlib.e.c.a().a(e4, "onEvent");
            }
        }
    }

    private JSONObject a(com.ss.android.downloadad.api.a.a aVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            l.a(aVar.g(), jSONObject);
            l.a(aVar.p(), jSONObject);
            jSONObject.putOpt(COSHttpResponseKey.DOWNLOAD_URL, aVar.a());
            jSONObject.putOpt(ai.f60415o, aVar.e());
            jSONObject.putOpt("android_int", Integer.valueOf(Build.VERSION.SDK_INT));
            jSONObject.putOpt("rom_name", com.ss.android.socialbase.appdownloader.f.d.g());
            jSONObject.putOpt("rom_version", com.ss.android.socialbase.appdownloader.f.d.h());
            jSONObject.putOpt("ttdownloader", 1);
            jSONObject.putOpt("funnel_type", Integer.valueOf(aVar.h()));
            if (aVar.h() == 2) {
                com.ss.android.downloadlib.g.f.b(jSONObject, aVar);
            }
        } catch (Exception e4) {
            j.s().a(e4, "getBaseJson");
        }
        return jSONObject;
    }

    private void a(com.ss.android.download.api.model.c cVar) {
        if (j.a() == null) {
            return;
        }
        if (cVar.m()) {
            j.a().a(cVar);
        } else {
            j.a().b(cVar);
        }
    }
}
