package com.netease.nis.basesdk.crash;

import android.text.TextUtils;
import com.netease.nis.basesdk.HttpUtil;
import com.netease.nis.basesdk.Logger;
import java.io.UnsupportedEncodingException;
import java.util.Map;
/* loaded from: classes4.dex */
public class CrashReportRunnable implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final String f54059a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f54060b;

    /* renamed from: c  reason: collision with root package name */
    private final HttpUtil.ResponseCallBack f54061c;

    /* loaded from: classes4.dex */
    class a implements HttpUtil.ResponseCallBack {
        a() {
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i2, String str) {
            CrashReportRunnable.this.f54061c.onError(i2, str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            CrashReportRunnable.this.f54061c.onSuccess(str);
        }
    }

    public CrashReportRunnable(Map<String, String> map, String str, HttpUtil.ResponseCallBack responseCallBack) {
        this.f54060b = map;
        this.f54059a = str;
        this.f54061c = responseCallBack;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (TextUtils.isEmpty(this.f54059a) || this.f54060b == null || this.f54061c == null || Thread.currentThread().isInterrupted()) {
            return;
        }
        try {
            HttpUtil.doHttpRequest(this.f54059a, true, false, HttpUtil.map2Form(this.f54060b, "utf-8"), null, null, new a());
        } catch (UnsupportedEncodingException e4) {
            Logger.e("EncodingException" + e4.getMessage());
        }
    }
}
