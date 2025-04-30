package com.ss.android.downloadlib.addownload;

import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: DownloadInsideHelper.java */
/* loaded from: classes4.dex */
public class h {
    public static boolean a(int i2) {
        return i2 == 0 || i2 == 1;
    }

    public static boolean a(DownloadModel downloadModel) {
        return downloadModel.isAd() && (downloadModel instanceof AdDownloadModel) && downloadModel.getModelType() == 1;
    }

    public static boolean b(int i2) {
        return i2 == 2 || i2 == 1;
    }

    public static boolean b(DownloadModel downloadModel) {
        return downloadModel != null && downloadModel.getModelType() == 2;
    }

    public static boolean a(DownloadModel downloadModel, IDownloadButtonClickListener iDownloadButtonClickListener) {
        return downloadModel.isAd() && iDownloadButtonClickListener != null;
    }

    public static int a(@NonNull com.ss.android.downloadlib.addownload.b.e eVar, boolean z3, com.ss.android.socialbase.appdownloader.f fVar) {
        int i2;
        if (fVar == null || TextUtils.isEmpty(fVar.a()) || fVar.getContext() == null) {
            return 0;
        }
        try {
            i2 = a(fVar, fVar.a());
        } catch (Throwable th) {
            j.s().a(th, "redirectSavePathIfPossible");
            i2 = 4;
        }
        fVar.a(i2);
        if (i2 == 0) {
            fVar.a(new com.ss.android.downloadlib.c.a());
        }
        if (!fVar.Z()) {
            fVar.a(new com.ss.android.downloadlib.c.b());
        }
        int a4 = com.ss.android.socialbase.appdownloader.d.j().a(fVar);
        com.ss.android.downloadad.api.a.b a5 = a(eVar, a4);
        com.ss.android.downloadlib.addownload.b.f.a().a(a5);
        a5.g(a4);
        a5.h(System.currentTimeMillis());
        a5.i(0L);
        com.ss.android.socialbase.downloader.g.a a6 = com.ss.android.socialbase.downloader.g.a.a(fVar.ad());
        if (!a(fVar, a6, a4) && eVar.f57140b.isShowToast()) {
            String startToast = eVar.f57140b.getStartToast();
            if (TextUtils.isEmpty(startToast)) {
                startToast = a6.c("download_start_toast_text");
            }
            if (TextUtils.isEmpty(startToast)) {
                startToast = z3 ? "已开始下载，可在\"我的\"里查看管理" : "已开始下载";
            }
            j.c().a(2, fVar.getContext(), eVar.f57140b, startToast, null, 0);
        }
        return a4;
    }

    private static com.ss.android.downloadad.api.a.b a(com.ss.android.downloadlib.addownload.b.e eVar, int i2) {
        com.ss.android.downloadad.api.a.b bVar = new com.ss.android.downloadad.api.a.b(eVar.f57140b, eVar.f57141c, eVar.f57142d, i2);
        boolean z3 = true;
        if (com.ss.android.socialbase.downloader.g.a.a(i2).a("download_event_opt", 1) > 1) {
            try {
                String packageName = eVar.f57140b.getPackageName();
                if (!TextUtils.isEmpty(packageName)) {
                    if (j.getContext().getPackageManager().getPackageInfo(packageName, 0) == null) {
                        z3 = false;
                    }
                    bVar.h(z3);
                }
            } catch (Throwable unused) {
            }
        }
        return bVar;
    }

    private static boolean a(com.ss.android.socialbase.appdownloader.f fVar, @NonNull com.ss.android.socialbase.downloader.g.a aVar, int i2) {
        String optString;
        JSONArray e4 = aVar.e("ah_plans");
        if (e4 != null && e4.length() != 0) {
            int length = e4.length();
            JSONObject jSONObject = null;
            int i4 = 0;
            while (true) {
                if (i4 < length) {
                    JSONObject optJSONObject = e4.optJSONObject(i4);
                    if (optJSONObject != null && ((optString = optJSONObject.optString("type")) == "plan_c" || com.ss.android.socialbase.appdownloader.f.a.a(optJSONObject))) {
                        optString.hashCode();
                        char c4 = 65535;
                        switch (optString.hashCode()) {
                            case -985763637:
                                if (optString.equals("plan_a")) {
                                    c4 = 0;
                                    break;
                                }
                                break;
                            case -985763636:
                                if (optString.equals("plan_b")) {
                                    c4 = 1;
                                    break;
                                }
                                break;
                            case -985763635:
                                if (optString.equals("plan_c")) {
                                    c4 = 2;
                                    break;
                                }
                                break;
                            case -985763634:
                                if (optString.equals("plan_d")) {
                                    c4 = 3;
                                    break;
                                }
                                break;
                            case -985763633:
                                if (optString.equals("plan_e")) {
                                    c4 = 4;
                                    break;
                                }
                                break;
                            case -985763632:
                                if (optString.equals("plan_f")) {
                                    c4 = 5;
                                    break;
                                }
                                break;
                            case -985763631:
                                if (optString.equals("plan_g")) {
                                    c4 = 6;
                                    break;
                                }
                                break;
                            case -985763630:
                                if (optString.equals("plan_h")) {
                                    c4 = 7;
                                    break;
                                }
                                break;
                        }
                        switch (c4) {
                            case 0:
                            case 1:
                            case 4:
                            case 5:
                                if (com.ss.android.socialbase.appdownloader.b.a(optJSONObject, aVar).f57556b == 0) {
                                    break;
                                } else {
                                    continue;
                                }
                            case 2:
                                jSONObject = optJSONObject;
                                continue;
                            case 6:
                                if (com.ss.android.socialbase.appdownloader.b.b(optJSONObject, aVar).f57556b == 0) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                    }
                    i4++;
                }
            }
            if (jSONObject != null) {
                if (jSONObject.optInt("show_unknown_source_on_startup") == 1) {
                    return com.ss.android.socialbase.appdownloader.b.a(com.ss.android.socialbase.downloader.downloader.c.N(), (Intent) null, jSONObject, i2, new com.ss.android.socialbase.appdownloader.a());
                }
            }
        }
        return false;
    }

    public static String a(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return null;
        }
        try {
            String extra = downloadInfo.getExtra();
            if (!TextUtils.isEmpty(extra)) {
                return new JSONObject(extra).optString("notification_jump_url", null);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return null;
    }

    private static int a(com.ss.android.socialbase.appdownloader.f fVar, String str) {
        com.ss.android.socialbase.downloader.g.a a4 = com.ss.android.socialbase.downloader.g.a.a(fVar.ad());
        JSONObject d4 = a4.d("download_dir");
        if (d4 == null || TextUtils.isEmpty(d4.optString("dir_name"))) {
            return -1;
        }
        String b4 = fVar.b();
        String L = fVar.L();
        if (TextUtils.isEmpty(L)) {
            L = com.ss.android.socialbase.appdownloader.c.a(str, b4, fVar.l(), true);
        }
        if (L.length() > 255) {
            L = L.substring(L.length() - 255);
        }
        if (TextUtils.isEmpty(b4)) {
            b4 = L;
        }
        String c4 = fVar.c();
        if (TextUtils.isEmpty(c4)) {
            c4 = com.ss.android.socialbase.appdownloader.c.b();
        }
        String str2 = c4 + File.separator + com.ss.android.socialbase.appdownloader.c.a(b4, a4);
        DownloadInfo a5 = com.ss.android.socialbase.appdownloader.d.j().a(fVar.getContext(), str);
        if (a5 != null && a5.isSavePathRedirected()) {
            fVar.c(a5.getSavePath());
            try {
                fVar.a(new JSONObject(a5.getDownloadSettingString()));
                return 0;
            } catch (Throwable unused) {
                return 0;
            }
        } else if (a5 != null || !AdBaseConstants.MIME_APK.equalsIgnoreCase(com.ss.android.socialbase.appdownloader.d.j().a(L, fVar.l()))) {
            return a5 != null ? 8 : 9;
        } else {
            int a6 = com.ss.android.socialbase.appdownloader.b.a(a4);
            if (a6 == 0) {
                fVar.c(str2);
                return a6;
            }
            return a6;
        }
    }
}
