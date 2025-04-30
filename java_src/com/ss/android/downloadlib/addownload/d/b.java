package com.ss.android.downloadlib.addownload.d;

import android.content.Context;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.ss.android.downloadlib.addownload.i;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DownloadPercentInterceptor.java */
/* loaded from: classes4.dex */
public class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private static com.ss.android.downloadlib.addownload.a.c f57254a;

    public static com.ss.android.downloadlib.addownload.a.c a() {
        return f57254a;
    }

    @Override // com.ss.android.downloadlib.addownload.d.d
    public boolean a(final com.ss.android.downloadad.api.a.b bVar, int i2, final c cVar) {
        DownloadInfo a4;
        if (bVar == null || bVar.ad() || !a(bVar) || (a4 = com.ss.android.downloadlib.g.a((Context) null).a(bVar.a())) == null) {
            return false;
        }
        long curBytes = a4.getCurBytes();
        long totalBytes = a4.getTotalBytes();
        if (curBytes > 0 && totalBytes > 0) {
            int a5 = i.a(a4.getId(), (int) ((curBytes * 100) / totalBytes));
            if (a5 > a(bVar.s())) {
                f57254a = new com.ss.android.downloadlib.addownload.a.c() { // from class: com.ss.android.downloadlib.addownload.d.b.1
                    @Override // com.ss.android.downloadlib.addownload.a.c
                    public void a() {
                        com.ss.android.downloadlib.addownload.a.c unused = b.f57254a = null;
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.putOpt("pause_optimise_type", "download_percent");
                            jSONObject.putOpt("pause_optimise_action", "confirm");
                        } catch (JSONException e4) {
                            e4.printStackTrace();
                        }
                        com.ss.android.downloadlib.d.a.a().a("pause_optimise", jSONObject, bVar);
                    }

                    @Override // com.ss.android.downloadlib.addownload.a.c
                    public void b() {
                        com.ss.android.downloadlib.addownload.a.c unused = b.f57254a = null;
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.putOpt("pause_optimise_type", "download_percent");
                            jSONObject.putOpt("pause_optimise_action", "cancel");
                        } catch (JSONException e4) {
                            e4.printStackTrace();
                        }
                        com.ss.android.downloadlib.d.a.a().a("pause_optimise", jSONObject, bVar);
                        cVar.a(bVar);
                    }
                };
                TTDelegateActivity.b(bVar, String.format("已下载%s%%，即将下载完成，是否继续下载？", Integer.valueOf(a5)), "继续", "暂停");
                bVar.o(true);
                return true;
            }
        }
        return false;
    }

    private int a(int i2) {
        return com.ss.android.socialbase.downloader.g.a.a(i2).a("pause_optimise_download_percent", 50);
    }

    private boolean a(com.ss.android.downloadad.api.a.a aVar) {
        return com.ss.android.downloadlib.g.e.a(aVar).a("pause_optimise_download_percent_switch", 0) == 1 && aVar.q();
    }
}
