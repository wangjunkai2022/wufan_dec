package com.ss.android.downloadlib.addownload;

import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.downloadlib.g.m;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONObject;
/* compiled from: AdDelayTaskManager.java */
/* loaded from: classes4.dex */
public class a implements m.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f57068a = "a";

    /* renamed from: b  reason: collision with root package name */
    private static a f57069b;

    /* renamed from: c  reason: collision with root package name */
    private m f57070c = new m(Looper.getMainLooper(), this);

    /* renamed from: d  reason: collision with root package name */
    private long f57071d;

    private a() {
    }

    public static a a() {
        if (f57069b == null) {
            synchronized (a.class) {
                if (f57069b == null) {
                    f57069b = new a();
                }
            }
        }
        return f57069b;
    }

    public void a(@NonNull DownloadInfo downloadInfo, long j4, long j5, String str, String str2, String str3, String str4) {
        com.ss.android.downloadlib.addownload.b.a aVar = new com.ss.android.downloadlib.addownload.b.a(downloadInfo.getId(), j4, j5, str, str2, str3, str4);
        com.ss.android.socialbase.downloader.g.a a4 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId());
        if (a4.a("back_miui_silent_install", 1) == 0 && ((com.ss.android.socialbase.appdownloader.f.d.l() || com.ss.android.socialbase.appdownloader.f.d.m()) && com.ss.android.socialbase.downloader.i.j.a(j.getContext(), "com.miui.securitycore", "com.miui.enterprise.service.EntInstallService"))) {
            if (com.ss.android.socialbase.downloader.i.f.a(downloadInfo.getTempCacheData().get("extra_silent_install_succeed"), false)) {
                Message obtainMessage = this.f57070c.obtainMessage(200, aVar);
                obtainMessage.arg1 = 2;
                this.f57070c.sendMessageDelayed(obtainMessage, a4.a("check_silent_install_interval", BaseConstants.Time.MINUTE));
                return;
            }
            com.ss.android.downloadad.api.a.b d4 = com.ss.android.downloadlib.addownload.b.f.a().d(aVar.f57105b);
            JSONObject jSONObject = new JSONObject();
            int i2 = -1;
            try {
                jSONObject.put("ttdownloader_type", "miui_silent_install");
                jSONObject.put("ttdownloader_message", "miui_silent_install_failed: has not started service");
                i2 = 5;
            } catch (Exception unused) {
            }
            j.f().a(null, new BaseException(i2, jSONObject.toString()), i2);
            com.ss.android.downloadlib.d.a.a().a("embeded_ad", "ah_result", jSONObject, d4);
        }
        if (com.ss.android.downloadlib.g.e.c()) {
            long currentTimeMillis = System.currentTimeMillis() - this.f57071d;
            long d5 = com.ss.android.downloadlib.g.e.d();
            if (currentTimeMillis < com.ss.android.downloadlib.g.e.e()) {
                long e4 = com.ss.android.downloadlib.g.e.e() - currentTimeMillis;
                d5 += e4;
                this.f57071d = System.currentTimeMillis() + e4;
            } else {
                this.f57071d = System.currentTimeMillis();
            }
            m mVar = this.f57070c;
            mVar.sendMessageDelayed(mVar.obtainMessage(200, aVar), d5);
        }
    }

    private void a(com.ss.android.downloadlib.addownload.b.a aVar, int i2) {
        if (j.k() == null || j.k().a() || aVar == null) {
            return;
        }
        if (2 == i2) {
            com.ss.android.downloadad.api.a.b d4 = com.ss.android.downloadlib.addownload.b.f.a().d(aVar.f57105b);
            JSONObject jSONObject = new JSONObject();
            int i4 = -1;
            try {
                jSONObject.put("ttdownloader_type", "miui_silent_install");
                if (com.ss.android.downloadlib.g.l.d(j.getContext(), aVar.f57107d)) {
                    jSONObject.put("ttdownloader_message", "miui_silent_install_succeed");
                    i4 = 4;
                } else {
                    jSONObject.put("ttdownloader_message", "miui_silent_install_failed: has started service");
                    i4 = 5;
                }
            } catch (Exception unused) {
            }
            j.f().a(null, new BaseException(i4, jSONObject.toString()), i4);
            com.ss.android.downloadlib.d.a.a().a("embeded_ad", "ah_result", jSONObject, d4);
        }
        if (com.ss.android.downloadlib.g.l.d(j.getContext(), aVar.f57107d)) {
            com.ss.android.downloadlib.d.a.a().a("delayinstall_installed", aVar.f57105b);
        } else if (!com.ss.android.downloadlib.g.l.a(aVar.f57110g)) {
            com.ss.android.downloadlib.d.a.a().a("delayinstall_file_lost", aVar.f57105b);
        } else if (com.ss.android.downloadlib.addownload.a.a.a().a(aVar.f57107d)) {
            com.ss.android.downloadlib.d.a.a().a("delayinstall_conflict_with_back_dialog", aVar.f57105b);
        } else {
            com.ss.android.downloadlib.d.a.a().a("delayinstall_install_start", aVar.f57105b);
            com.ss.android.socialbase.appdownloader.d.a(j.getContext(), (int) aVar.f57104a);
        }
    }

    @Override // com.ss.android.downloadlib.g.m.a
    public void a(Message message) {
        if (message.what != 200) {
            return;
        }
        a((com.ss.android.downloadlib.addownload.b.a) message.obj, message.arg1);
    }
}
