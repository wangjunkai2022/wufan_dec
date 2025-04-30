package com.switfpass.pay.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* loaded from: classes4.dex */
final class g extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ QQWapPayWebView f58675a;

    public g(QQWapPayWebView qQWapPayWebView) {
        this.f58675a = qQWapPayWebView;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        try {
            QQWapPayWebView qQWapPayWebView = this.f58675a;
            qQWapPayWebView.b(true, "加载中...", qQWapPayWebView);
        } catch (Exception e4) {
            new StringBuilder("onPageStarted ").append(e4);
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i2, String str, String str2) {
        super.onReceivedError(webView, i2, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            QQWapPayWebView qQWapPayWebView = this.f58675a;
            qQWapPayWebView.b(true, "加载中...", qQWapPayWebView);
            Uri parse = Uri.parse(str);
            if (parse.getScheme().equals("mqqapi") && parse.getHost().equals("forward")) {
                this.f58675a.startActivity(new Intent("android.intent.action.VIEW", parse));
                return true;
            } else if (parse.getScheme().equals("weixin") && parse.getHost().equals("wap")) {
                this.f58675a.startActivity(new Intent("android.intent.action.VIEW", parse));
                return true;
            } else if (parse.getHost().equals("mclient.alipay.com")) {
                this.f58675a.startActivity(new Intent("android.intent.action.VIEW", parse));
                return true;
            } else if (parse.getHost().equals("mobilecodec.alipay.com")) {
                this.f58675a.startActivity(new Intent("android.intent.action.VIEW", parse));
                return true;
            } else {
                return super.shouldOverrideUrlLoading(webView, str);
            }
        } catch (Exception e4) {
            new StringBuilder("shouldOverrideUrlLoading ").append(e4);
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }
}
