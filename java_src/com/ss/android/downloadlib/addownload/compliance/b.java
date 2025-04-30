package com.ss.android.downloadlib.addownload.compliance;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.ss.android.download.api.config.q;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.f;
import com.ss.android.downloadlib.g.c;
import com.ss.android.downloadlib.g.l;
import com.umeng.analytics.pro.ai;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AdLpComplianceManager.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private SoftReference<Activity> f57210a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdLpComplianceManager.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static b f57219a = new b();
    }

    public void b(long j4) {
        com.ss.android.downloadlib.addownload.e a4 = f.a().a(com.ss.android.downloadlib.addownload.b.f.a().e(j4).f57140b.getDownloadUrl());
        if (a4 != null) {
            a4.a(true, true);
            return;
        }
        e.a(11, j4);
        com.ss.android.downloadlib.e.c.a().b("startDownload handler null");
    }

    private b() {
    }

    public static b a() {
        return a.f57219a;
    }

    public void a(long j4) {
        TTDelegateActivity.a(j4);
    }

    public boolean a(DownloadModel downloadModel) {
        if (downloadModel.isAd() && j.i().optInt("ad_lp_show_app_dialog") != 0) {
            String webUrl = downloadModel.getDeepLink() == null ? null : downloadModel.getDeepLink().getWebUrl();
            return (TextUtils.isEmpty(webUrl) || Pattern.compile(j.i().optString("ad_allow_web_url_regex", ".+(www.chengzijianzhan.com|www.toutiaopage.com/tetris/page|ad.toutiao.com/tetris/page).+")).matcher(webUrl).matches()) ? false : true;
        }
        return false;
    }

    public Activity b() {
        Activity activity = this.f57210a.get();
        this.f57210a = null;
        return activity;
    }

    public boolean a(@NonNull com.ss.android.downloadlib.addownload.b.e eVar) {
        long j4;
        long j5;
        if (!TextUtils.isEmpty(eVar.f57140b.getLogExtra())) {
            try {
                j4 = l.a(new JSONObject(eVar.f57140b.getLogExtra()), "convert_id");
            } catch (Exception e4) {
                e4.printStackTrace();
                j4 = 0;
            }
            if (j4 <= 0) {
                e.a(3, eVar);
            }
            j5 = j4;
        } else {
            e.a(9, eVar);
            com.ss.android.downloadlib.e.c.a().a("requestAppInfo getLogExtra null");
            j5 = 0;
        }
        final long j6 = eVar.f57139a;
        com.ss.android.downloadlib.addownload.b.b a4 = c.a().a(j5, j6);
        if (a4 != null) {
            d.a().a(a4.a(), j6, a4.f57115d);
            a(a4.a());
            e.a("lp_app_dialog_try_show", eVar);
            return true;
        }
        StringBuilder sb = new StringBuilder();
        if (j5 > 0) {
            sb.append("convert_id=");
            sb.append(j5);
        }
        if (!TextUtils.isEmpty(eVar.f57140b.getPackageName())) {
            if (sb.length() > 0) {
                sb.append(m.a.f72566d);
            }
            sb.append("package_name=");
            sb.append(eVar.f57140b.getPackageName());
        }
        if (sb.length() <= 0) {
            e.a(6, eVar);
            return false;
        }
        final long j7 = j5;
        com.ss.android.downloadlib.g.c.a((c.a<String, R>) new c.a<String, Boolean>() { // from class: com.ss.android.downloadlib.addownload.compliance.b.2
            @Override // com.ss.android.downloadlib.g.c.a
            public Boolean a(String str) {
                final boolean[] zArr = {false};
                j.d().a("GET", str, new HashMap(), new q() { // from class: com.ss.android.downloadlib.addownload.compliance.b.2.1
                    @Override // com.ss.android.download.api.config.q
                    public void a(String str2) {
                        boolean[] zArr2 = zArr;
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        zArr2[0] = b.this.a(j7, j6, str2);
                    }

                    @Override // com.ss.android.download.api.config.q
                    public void a(Throwable th) {
                        e.a(2, j6);
                        zArr[0] = false;
                    }
                });
                return Boolean.valueOf(zArr[0]);
            }
        }, "https://apps.oceanengine.com/customer/api/app/pkg_info?" + sb.toString()).a(new c.a<Boolean, Object>() { // from class: com.ss.android.downloadlib.addownload.compliance.b.1
            @Override // com.ss.android.downloadlib.g.c.a
            public Object a(Boolean bool) {
                if (bool.booleanValue()) {
                    b.this.a(com.ss.android.downloadlib.addownload.b.b.a(j7, j6));
                    e.b("lp_app_dialog_try_show", j6);
                    return null;
                }
                b.this.b(j6);
                return null;
            }
        }).a();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(long j4, long j5, String str) {
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("package");
            if (optJSONObject != null && optJSONObject.length() != 0) {
                com.ss.android.downloadlib.addownload.b.b bVar = new com.ss.android.downloadlib.addownload.b.b();
                bVar.f57112a = j4;
                bVar.f57113b = j5;
                bVar.f57115d = optJSONObject.optString("icon_url");
                bVar.f57116e = optJSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.APP_NAME);
                bVar.f57114c = optJSONObject.optString(ai.f60415o);
                bVar.f57117f = optJSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME);
                bVar.f57118g = optJSONObject.optString("developer_name");
                bVar.f57120i = optJSONObject.optString("policy_url");
                JSONArray optJSONArray = optJSONObject.optJSONArray("permissions");
                if (optJSONArray != null) {
                    for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                        JSONObject jSONObject = (JSONObject) optJSONArray.get(i2);
                        bVar.f57119h.add(new Pair<>(jSONObject.optString("permission_name"), jSONObject.optString("permission_desc")));
                    }
                }
                c.a().a(bVar);
                d.a().a(bVar.a(), j5, bVar.f57115d);
                return true;
            }
            e.a(7, j5);
            return false;
        } catch (Exception e4) {
            com.ss.android.downloadlib.e.c.a().a(e4, "AdLpComplianceManager parseResponse");
            e.a(7, j5);
            return false;
        }
    }

    public void a(Activity activity) {
        this.f57210a = new SoftReference<>(activity);
    }
}
