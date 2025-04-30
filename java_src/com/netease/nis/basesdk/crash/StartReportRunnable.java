package com.netease.nis.basesdk.crash;

import android.text.TextUtils;
import com.netease.nis.basesdk.HttpUtil;
import java.util.Map;
/* loaded from: classes4.dex */
public class StartReportRunnable implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final String f54065a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f54066b;

    /* renamed from: c  reason: collision with root package name */
    private final HttpUtil.ResponseCallBack f54067c;

    /* loaded from: classes4.dex */
    class a implements HttpUtil.ResponseCallBack {
        a() {
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i2, String str) {
            StartReportRunnable.this.f54067c.onError(i2, str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            StartReportRunnable.this.f54067c.onSuccess(str);
        }
    }

    public StartReportRunnable(Map<String, String> map, String str, HttpUtil.ResponseCallBack responseCallBack) {
        this.f54066b = map;
        this.f54065a = str;
        this.f54067c = responseCallBack;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map<String, String> map;
        if (TextUtils.isEmpty(this.f54065a) || (map = this.f54066b) == null || this.f54067c == null) {
            return;
        }
        HttpUtil.doPostRequestByForm(this.f54065a, map, null, new a());
    }
}
