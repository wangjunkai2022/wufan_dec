package com.switfpass.pay.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import com.switfpass.pay.bean.RequestMsg;
/* loaded from: classes4.dex */
public class QQWapPayWebView extends BasePayActivity {

    /* renamed from: b  reason: collision with root package name */
    private boolean f58651b = false;

    /* renamed from: c  reason: collision with root package name */
    private WebViewEx f58652c;

    /* renamed from: d  reason: collision with root package name */
    private String f58653d;

    /* renamed from: e  reason: collision with root package name */
    private String f58654e;

    /* renamed from: f  reason: collision with root package name */
    private String f58655f;

    public static void startActivity(Activity activity, String str) {
        Intent intent = new Intent();
        intent.putExtra("url", str);
        intent.setClass(activity, QQWapPayWebView.class);
        activity.startActivityForResult(intent, 1);
    }

    public static void startActivity(Activity activity, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.putExtra("url", str);
        intent.putExtra("tokenId", str2);
        intent.putExtra("outTradeNo", str3);
        intent.setClass(activity, QQWapPayWebView.class);
        activity.startActivityForResult(intent, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.switfpass.pay.activity.BasePayActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        WebSettings.ZoomDensity zoomDensity;
        super.onCreate(bundle);
        this.f58651b = true;
        WebViewEx webViewEx = new WebViewEx(this);
        this.f58652c = webViewEx;
        WebSettings settings = webViewEx.getSettings();
        if (Build.VERSION.SDK_INT == 17) {
            settings.setDisplayZoomControls(false);
        }
        settings.setLoadWithOverviewMode(true);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i2 = displayMetrics.densityDpi;
        if (i2 == 120) {
            zoomDensity = WebSettings.ZoomDensity.CLOSE;
        } else if (i2 != 160) {
            if (i2 == 240) {
                zoomDensity = WebSettings.ZoomDensity.FAR;
            }
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            this.f58652c.setWebChromeClient(new h());
            this.f58652c.setWebViewClient(new g(this));
            this.f58655f = getIntent().getStringExtra("url");
            this.f58653d = getIntent().getStringExtra("tokenId");
            this.f58654e = getIntent().getStringExtra("outTradeNo");
            this.f58652c.loadUrl(this.f58655f);
            this.f58652c.getSettings().setJavaScriptEnabled(true);
        } else {
            zoomDensity = WebSettings.ZoomDensity.MEDIUM;
        }
        settings.setDefaultZoom(zoomDensity);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        this.f58652c.setWebChromeClient(new h());
        this.f58652c.setWebViewClient(new g(this));
        this.f58655f = getIntent().getStringExtra("url");
        this.f58653d = getIntent().getStringExtra("tokenId");
        this.f58654e = getIntent().getStringExtra("outTradeNo");
        this.f58652c.loadUrl(this.f58655f);
        this.f58652c.getSettings().setJavaScriptEnabled(true);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        a();
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        a();
        if (this.f58651b) {
            this.f58651b = false;
        } else {
            String str = this.f58653d;
            String str2 = this.f58654e;
            RequestMsg requestMsg = new RequestMsg();
            requestMsg.N(str);
            requestMsg.F(str2);
            com.switfpass.pay.service.d.d().i(requestMsg, new f(this));
        }
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
