package com.ss.android.downloadlib.addownload.d;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.ss.android.downloadlib.addownload.i;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.text.DecimalFormat;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* compiled from: ApkSizeInterceptor.java */
/* loaded from: classes4.dex */
public class a implements d {

    /* renamed from: a  reason: collision with root package name */
    private static com.ss.android.downloadlib.addownload.a.c f57250a;

    public static com.ss.android.downloadlib.addownload.a.c a() {
        return f57250a;
    }

    @Override // com.ss.android.downloadlib.addownload.d.d
    public boolean a(final com.ss.android.downloadad.api.a.b bVar, int i2, final c cVar) {
        DownloadInfo a4;
        if (bVar == null || bVar.ac() || !a(bVar) || (a4 = com.ss.android.downloadlib.g.a((Context) null).a(bVar.a())) == null) {
            return false;
        }
        long a5 = i.a(a4.getId(), a4.getCurBytes(), a4.getTotalBytes());
        long totalBytes = a4.getTotalBytes();
        if (a5 <= 0 || totalBytes <= 0 || totalBytes > a(bVar.s())) {
            return false;
        }
        f57250a = new com.ss.android.downloadlib.addownload.a.c() { // from class: com.ss.android.downloadlib.addownload.d.a.1
            @Override // com.ss.android.downloadlib.addownload.a.c
            public void a() {
                com.ss.android.downloadlib.addownload.a.c unused = a.f57250a = null;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("pause_optimise_type", "apk_size");
                    jSONObject.putOpt("pause_optimise_action", "confirm");
                } catch (JSONException e4) {
                    e4.printStackTrace();
                }
                com.ss.android.downloadlib.d.a.a().a("pause_optimise", jSONObject, bVar);
            }

            @Override // com.ss.android.downloadlib.addownload.a.c
            public void b() {
                com.ss.android.downloadlib.addownload.a.c unused = a.f57250a = null;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.putOpt("pause_optimise_type", "apk_size");
                    jSONObject.putOpt("pause_optimise_action", "cancel");
                } catch (JSONException e4) {
                    e4.printStackTrace();
                }
                com.ss.android.downloadlib.d.a.a().a("pause_optimise", jSONObject, bVar);
                cVar.a(bVar);
            }
        };
        TTDelegateActivity.a(bVar, String.format("该下载任务仅需%s，即将下载完成，是否继续下载？", a(totalBytes - a5)), "继续", "暂停");
        bVar.n(true);
        return true;
    }

    private int a(int i2) {
        return com.ss.android.socialbase.downloader.g.a.a(i2).a("pause_optimise_apk_size", 100) * 1024 * 1024;
    }

    private boolean a(com.ss.android.downloadad.api.a.a aVar) {
        return com.ss.android.downloadlib.g.e.a(aVar).a("pause_optimise_apk_size_switch", 0) == 1 && aVar.q();
    }

    private static String a(long j4) {
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        if (j4 >= IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            return (j4 / IjkMediaMeta.AV_CH_STEREO_RIGHT) + "G";
        } else if (j4 >= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            return (j4 / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) + "M";
        } else {
            return decimalFormat.format(((float) j4) / 1048576.0f) + "M";
        }
    }
}
