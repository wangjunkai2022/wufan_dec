package com.netease.nis.basesdk.webview;

import android.content.Context;
import android.content.res.Configuration;
import android.net.http.SslError;
import android.os.Build;
import android.util.AttributeSet;
import android.webkit.JsPromptResult;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* loaded from: classes4.dex */
public class NisWebView extends WebView {

    /* renamed from: a  reason: collision with root package name */
    private WebChromeClient f54071a;

    /* renamed from: b  reason: collision with root package name */
    private WebViewClient f54072b;

    /* renamed from: c  reason: collision with root package name */
    private String f54073c;

    /* renamed from: d  reason: collision with root package name */
    private final WebChromeClient f54074d;

    /* renamed from: e  reason: collision with root package name */
    private final WebViewClient f54075e;

    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StringBuilder f54076a;

        a(StringBuilder sb) {
            this.f54076a = sb;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 19) {
                NisWebView.this.evaluateJavascript(this.f54076a.toString(), null);
            } else {
                NisWebView.this.loadUrl(this.f54076a.toString());
            }
        }
    }

    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StringBuilder f54078a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ValueCallback f54079b;

        b(StringBuilder sb, ValueCallback valueCallback) {
            this.f54078a = sb;
            this.f54079b = valueCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 19) {
                NisWebView.this.evaluateJavascript(this.f54078a.toString(), this.f54079b);
                return;
            }
            NisWebView nisWebView = NisWebView.this;
            nisWebView.loadUrl("javascript:onJsPrompt(" + this.f54078a.toString() + ")");
            this.f54079b.onReceiveValue(NisWebView.this.f54073c);
        }
    }

    /* loaded from: classes4.dex */
    class c extends WebChromeClient {
        c() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            NisWebView.this.f54073c = str2;
            if (NisWebView.this.f54071a != null) {
                return NisWebView.this.f54071a.onJsPrompt(webView, str, str2, str3, jsPromptResult);
            }
            return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
        }
    }

    /* loaded from: classes4.dex */
    class d extends WebViewClient {
        d() {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            sslErrorHandler.cancel();
            if (NisWebView.this.f54072b != null) {
                NisWebView.this.f54072b.onReceivedSslError(webView, sslErrorHandler, sslError);
            } else {
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
            }
        }
    }

    public NisWebView(Context context) {
        this(context, null);
    }

    public void callJsMethod(String str, Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("javascript:");
        sb.append(str);
        sb.append("(");
        for (Object obj : objArr) {
            sb.append(obj);
            sb.append(",");
        }
        sb.append(")");
        post(new a(sb));
    }

    @Override // android.webkit.WebView
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f54071a = webChromeClient;
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
        this.f54072b = webViewClient;
    }

    public NisWebView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NisWebView(Context context, AttributeSet attributeSet, int i2) {
        super(a(context), attributeSet, i2);
        this.f54074d = new c();
        this.f54075e = new d();
        a();
    }

    private static Context a(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        return (i2 < 21 || i2 >= 23) ? context : context.createConfigurationContext(new Configuration());
    }

    private void a() {
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        settings.setAllowFileAccess(false);
        settings.setGeolocationEnabled(false);
        settings.setAllowContentAccess(false);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 16) {
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
        }
        if (i2 < 19) {
            removeJavascriptInterface("searchBoxJavaBridge_");
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
        }
        settings.setLoadWithOverviewMode(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setWebChromeClient(this.f54074d);
        setWebViewClient(this.f54075e);
        resumeTimers();
    }

    public void callJsMethod(String str, Object[] objArr, ValueCallback<String> valueCallback) {
        StringBuilder sb = new StringBuilder();
        sb.append("javascript:");
        sb.append(str);
        sb.append("(");
        for (Object obj : objArr) {
            sb.append(obj);
            sb.append(",");
        }
        sb.append(")");
        post(new b(sb, valueCallback));
    }
}
