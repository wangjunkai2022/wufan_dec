package com.ss.android.downloadlib.addownload.b;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadad.api.download.AdDownloadController;
import com.ss.android.downloadad.api.download.AdDownloadEventConfig;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import java.util.List;
import org.json.JSONObject;
/* compiled from: ModelBox.java */
/* loaded from: classes4.dex */
public class e implements com.ss.android.downloadad.api.a.a {

    /* renamed from: a  reason: collision with root package name */
    public long f57139a;

    /* renamed from: b  reason: collision with root package name */
    public DownloadModel f57140b;

    /* renamed from: c  reason: collision with root package name */
    public DownloadEventConfig f57141c;

    /* renamed from: d  reason: collision with root package name */
    public DownloadController f57142d;

    public e() {
    }

    @Override // com.ss.android.downloadad.api.a.a
    public String a() {
        return this.f57140b.getDownloadUrl();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public long b() {
        return this.f57140b.getId();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public boolean c() {
        return this.f57140b.isAd();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public String d() {
        return this.f57140b.getLogExtra();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public String e() {
        return this.f57140b.getPackageName();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public String f() {
        if (this.f57140b.getDeepLink() != null) {
            return this.f57140b.getDeepLink().getOpenUrl();
        }
        return null;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public JSONObject g() {
        return this.f57140b.getExtra();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public int h() {
        if (this.f57142d.getDownloadMode() == 2) {
            return 2;
        }
        return this.f57140b.getFunnelType();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public String i() {
        return this.f57141c.getRefer();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public String j() {
        return this.f57141c.getClickButtonTag();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public JSONObject k() {
        return this.f57141c.getParamsJson();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public long l() {
        return this.f57140b.getExtraValue();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public boolean m() {
        return this.f57141c.isEnableV3Event();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public List<String> n() {
        return this.f57140b.getClickTrackUrl();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public Object o() {
        return this.f57141c.getExtraEventObject();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public JSONObject p() {
        return this.f57141c.getExtraJson();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public boolean q() {
        return this.f57142d.enableNewActivity();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public JSONObject r() {
        return this.f57140b.getDownloadSettings();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public int s() {
        return 0;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public int t() {
        return this.f57141c.getDownloadScene();
    }

    @Override // com.ss.android.downloadad.api.a.a
    public DownloadModel u() {
        return this.f57140b;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public DownloadEventConfig v() {
        return this.f57141c;
    }

    @Override // com.ss.android.downloadad.api.a.a
    public DownloadController w() {
        return this.f57142d;
    }

    public boolean x() {
        DownloadModel downloadModel;
        if (this.f57139a == 0 || (downloadModel = this.f57140b) == null || this.f57141c == null || this.f57142d == null) {
            return true;
        }
        return downloadModel.isAd() && this.f57139a <= 0;
    }

    public boolean y() {
        if (x()) {
            return false;
        }
        if (this.f57140b.isAd()) {
            DownloadModel downloadModel = this.f57140b;
            return (downloadModel instanceof AdDownloadModel) && !TextUtils.isEmpty(downloadModel.getLogExtra()) && (this.f57141c instanceof AdDownloadEventConfig) && (this.f57142d instanceof AdDownloadController);
        }
        return this.f57140b instanceof AdDownloadModel;
    }

    public e(long j4, @NonNull DownloadModel downloadModel, @NonNull DownloadEventConfig downloadEventConfig, @NonNull DownloadController downloadController) {
        this.f57139a = j4;
        this.f57140b = downloadModel;
        this.f57141c = downloadEventConfig;
        this.f57142d = downloadController;
    }
}
