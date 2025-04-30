package com.ss.android.downloadlib.addownload.c;

import com.ss.android.downloadlib.addownload.b.f;
import com.ss.android.downloadlib.addownload.b.i;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CleanSpaceTask.java */
/* loaded from: classes4.dex */
public class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private DownloadInfo f57167a;

    public b(DownloadInfo downloadInfo) {
        this.f57167a = downloadInfo;
    }

    @Override // java.lang.Runnable
    public void run() {
        final com.ss.android.downloadad.api.a.b a4;
        if (this.f57167a == null || (a4 = f.a().a(this.f57167a)) == null) {
            return;
        }
        com.ss.android.downloadlib.d.a.a().a("cleanspace_task", a4);
        double totalBytes = this.f57167a.getTotalBytes();
        Double.isNaN(totalBytes);
        long longValue = Double.valueOf((com.ss.android.downloadlib.g.e.a(this.f57167a.getId()) + 1.0d) * totalBytes).longValue() - this.f57167a.getCurBytes();
        long a5 = l.a(0L);
        if (j.l() != null) {
            j.l().e();
        }
        c.a();
        c.b();
        if (com.ss.android.downloadlib.g.e.g(a4.s())) {
            c.a(j.getContext());
        }
        long a6 = l.a(0L);
        if (a6 >= longValue) {
            a4.l("1");
            i.a().a(a4);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("quite_clean_size", Long.valueOf(a6 - a5));
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
            com.ss.android.downloadlib.d.a.a().a("cleanspace_download_after_quite_clean", jSONObject, a4);
            Downloader.getInstance(j.getContext()).restart(this.f57167a.getId());
        } else if (j.l() != null) {
            a4.d(false);
            d.a().a(a4.a(), new e() { // from class: com.ss.android.downloadlib.addownload.c.b.1
            });
            if (j.l().a(this.f57167a.getId(), this.f57167a.getUrl(), true, longValue)) {
                a4.e(true);
            }
        } else {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.putOpt("show_dialog_result", 3);
            } catch (JSONException e5) {
                e5.printStackTrace();
            }
            com.ss.android.downloadlib.d.a.a().a("cleanspace_window_show", jSONObject2, a4);
        }
    }
}
