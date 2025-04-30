package com.heepay.plugin.d;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.heepay.plugin.activity.HyNotityActivity;
import com.heepay.plugin.c.d;
import com.join.mgps.Util.u;
/* loaded from: classes2.dex */
public class c extends com.heepay.plugin.d.a.b {

    /* renamed from: a  reason: collision with root package name */
    private HyNotityActivity f16803a;

    public c(HyNotityActivity hyNotityActivity) {
        super(hyNotityActivity);
        this.f16803a = hyNotityActivity;
    }

    @Override // com.heepay.plugin.d.a.b, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (((HyNotityActivity) webView.getContext()).f16742f.equals(u.f27861t) && webView.getVisibility() == 8) {
            webView.setVisibility(0);
        }
        d.a("----->onPageFinished" + str);
        com.heepay.plugin.c.c.a("---->onPageFinished:" + str);
    }

    @Override // com.heepay.plugin.d.a.b, android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        HyNotityActivity hyNotityActivity;
        boolean z3;
        d.a("----->onPageStarted" + str);
        com.heepay.plugin.c.c.a("---->onPageStarted:" + str);
        if (!str.startsWith("wei_xin:".replace("_", "")) && !str.startsWith("ali_payqr:".replace("_", "")) && !str.startsWith("ali_pays:".replace("_", ""))) {
            com.heepay.plugin.c.c.b("setWebViewClient_isNeedQuery", "-1--" + this.f16803a.f16746j);
            super.onPageStarted(webView, str, bitmap);
            return;
        }
        if (this.f16803a.f16742f.equals(u.f27861t)) {
            hyNotityActivity = this.f16803a;
            z3 = false;
        } else {
            hyNotityActivity = this.f16803a;
            z3 = true;
        }
        hyNotityActivity.f16746j = z3;
        if (((HyNotityActivity) webView.getContext()).f16750n) {
            ((HyNotityActivity) webView.getContext()).h();
            com.heepay.plugin.c.c.b("----->关闭启动loading", "---");
        }
        this.f16803a.b(str);
        com.heepay.plugin.c.c.b("setWebViewClient_isNeedQuery", "-2--" + this.f16803a.f16746j);
        webView.stopLoading();
    }

    @Override // com.heepay.plugin.d.a.b, android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        super.onReceivedError(webView, i2, str, str2);
        d.a("----->onReceivedError" + str2);
        com.heepay.plugin.c.c.a("---->onReceivedError:" + str2 + ",errorCode:" + i2);
        StringBuilder sb = new StringBuilder();
        sb.append("---->onReceivedError:");
        sb.append(str2);
        com.heepay.plugin.c.c.a(sb.toString());
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(23)
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        d.a("----->onReceivedHttpError:" + webView.getUrl());
        com.heepay.plugin.c.c.a("---->onReceivedHttpError:" + webView.getUrl() + ",errorCode:" + webResourceResponse.getStatusCode());
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        d.a("----->shouldOverrideUrlLoading" + str);
        com.heepay.plugin.c.c.a("---->shouldOverrideUrlLoading:" + str);
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
