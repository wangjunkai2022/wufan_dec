package com.alipay.sdk.auth;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.webkit.ConsoleMessage;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.alipay.sdk.authjs.a;
import com.alipay.sdk.util.j;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;
@SuppressLint({"SetJavaScriptEnabled", "DefaultLocale"})
/* loaded from: classes2.dex */
public class AuthActivity extends Activity {

    /* renamed from: h  reason: collision with root package name */
    static final String f9642h = "params";

    /* renamed from: i  reason: collision with root package name */
    static final String f9643i = "redirectUri";

    /* renamed from: a  reason: collision with root package name */
    private WebView f9644a;

    /* renamed from: b  reason: collision with root package name */
    private String f9645b;

    /* renamed from: c  reason: collision with root package name */
    private com.alipay.sdk.widget.a f9646c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f9647d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f9648e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f9649f;

    /* renamed from: g  reason: collision with root package name */
    private Runnable f9650g = new f(this);

    /* loaded from: classes2.dex */
    private class a extends WebChromeClient {
        private a() {
        }

        @Override // android.webkit.WebChromeClient
        public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            String message = consoleMessage.message();
            if (TextUtils.isEmpty(message)) {
                return super.onConsoleMessage(consoleMessage);
            }
            String replaceFirst = message.startsWith("h5container.message: ") ? message.replaceFirst("h5container.message: ", "") : null;
            if (TextUtils.isEmpty(replaceFirst)) {
                return super.onConsoleMessage(consoleMessage);
            }
            AuthActivity.i(AuthActivity.this, replaceFirst);
            return super.onConsoleMessage(consoleMessage);
        }

        /* synthetic */ a(AuthActivity authActivity, byte b4) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b extends WebViewClient {
        private b() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            AuthActivity.p(AuthActivity.this);
            AuthActivity.this.f9647d.removeCallbacks(AuthActivity.this.f9650g);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            AuthActivity.m(AuthActivity.this);
            AuthActivity.this.f9647d.postDelayed(AuthActivity.this.f9650g, 30000L);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i2, String str, String str2) {
            AuthActivity.d(AuthActivity.this);
            super.onReceivedError(webView, i2, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            if (AuthActivity.this.f9648e) {
                sslErrorHandler.proceed();
                AuthActivity.this.f9648e = false;
                return;
            }
            AuthActivity.this.runOnUiThread(new g(this, sslErrorHandler));
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (!str.toLowerCase().startsWith(com.alipay.sdk.cons.a.f9708i.toLowerCase()) && !str.toLowerCase().startsWith(com.alipay.sdk.cons.a.f9709j.toLowerCase())) {
                if (AuthActivity.e(AuthActivity.this, str)) {
                    webView.stopLoading();
                    return true;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
            try {
                j.a c4 = com.alipay.sdk.util.j.c(AuthActivity.this, com.alipay.sdk.util.j.f9851b);
                if (c4 != null) {
                    String f4 = com.alipay.sdk.util.j.f(c4.f9853a);
                    if (f4 != null && !TextUtils.equals(f4, com.alipay.sdk.cons.a.f9707h)) {
                        com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f9617l, com.alipay.sdk.app.statistic.c.f9624s, f4);
                        return true;
                    }
                    if (str.startsWith("intent://platformapi/startapp")) {
                        str = str.replaceFirst(com.alipay.sdk.cons.a.f9709j, com.alipay.sdk.cons.a.f9708i);
                    }
                    AuthActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                }
            } catch (Throwable unused) {
            }
            return true;
        }

        /* synthetic */ b(AuthActivity authActivity, byte b4) {
            this();
        }
    }

    private void a() {
        try {
            if (this.f9646c == null) {
                this.f9646c = new com.alipay.sdk.widget.a(this, com.alipay.sdk.widget.a.f9857d);
            }
            this.f9646c.c();
        } catch (Exception unused) {
            this.f9646c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(AuthActivity authActivity, com.alipay.sdk.authjs.a aVar) {
        if (authActivity.f9644a != null && aVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.alipay.sdk.authjs.a.f9677k, aVar.f9681a);
                jSONObject.put(com.alipay.sdk.authjs.a.f9679m, aVar.f9683c);
                jSONObject.put(com.alipay.sdk.authjs.a.f9678l, aVar.f9685e);
                jSONObject.put(com.alipay.sdk.authjs.a.f9680n, aVar.f9684d);
                authActivity.runOnUiThread(new e(authActivity, String.format("AlipayJSBridge._invokeJS(%s)", jSONObject.toString())));
            } catch (JSONException unused) {
            }
        }
    }

    private void c(com.alipay.sdk.authjs.a aVar) {
        if (this.f9644a != null && aVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.alipay.sdk.authjs.a.f9677k, aVar.f9681a);
                jSONObject.put(com.alipay.sdk.authjs.a.f9679m, aVar.f9683c);
                jSONObject.put(com.alipay.sdk.authjs.a.f9678l, aVar.f9685e);
                jSONObject.put(com.alipay.sdk.authjs.a.f9680n, aVar.f9684d);
                runOnUiThread(new e(this, String.format("AlipayJSBridge._invokeJS(%s)", jSONObject.toString())));
            } catch (JSONException unused) {
            }
        }
    }

    static /* synthetic */ boolean d(AuthActivity authActivity) {
        authActivity.f9649f = true;
        return true;
    }

    static /* synthetic */ boolean e(AuthActivity authActivity, String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("http://") || str.startsWith("https://")) {
            return false;
        }
        if (!"SDKLite://h5quit".equalsIgnoreCase(str)) {
            if (TextUtils.equals(str, authActivity.f9645b)) {
                str = str + "?resultCode=150";
            }
            j.d(authActivity, str);
        }
        authActivity.finish();
        return true;
    }

    private boolean g(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("http://") || str.startsWith("https://")) {
            return false;
        }
        if (!"SDKLite://h5quit".equalsIgnoreCase(str)) {
            if (TextUtils.equals(str, this.f9645b)) {
                str = str + "?resultCode=150";
            }
            j.d(this, str);
        }
        finish();
        return true;
    }

    private void h() {
        com.alipay.sdk.widget.a aVar = this.f9646c;
        if (aVar != null) {
            aVar.f();
        }
        this.f9646c = null;
    }

    static /* synthetic */ void i(AuthActivity authActivity, String str) {
        JSONObject jSONObject;
        String string;
        com.alipay.sdk.authjs.d dVar = new com.alipay.sdk.authjs.d(authActivity.getApplicationContext(), new d(authActivity));
        String str2 = null;
        try {
            jSONObject = new JSONObject(str);
            string = jSONObject.getString(com.alipay.sdk.authjs.a.f9677k);
        } catch (Exception unused) {
        }
        try {
            if (TextUtils.isEmpty(string)) {
                return;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject(com.alipay.sdk.authjs.a.f9678l);
            JSONObject jSONObject3 = jSONObject2 instanceof JSONObject ? jSONObject2 : null;
            String string2 = jSONObject.getString(com.alipay.sdk.authjs.a.f9679m);
            String string3 = jSONObject.getString(com.alipay.sdk.authjs.a.f9676j);
            com.alipay.sdk.authjs.a aVar = new com.alipay.sdk.authjs.a("call");
            aVar.f9682b = string3;
            aVar.f9683c = string2;
            aVar.f9685e = jSONObject3;
            aVar.f9681a = string;
            dVar.c(aVar);
        } catch (Exception unused2) {
            str2 = string;
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            try {
                dVar.g(str2, a.EnumC0025a.RUNTIME_ERROR);
            } catch (JSONException unused3) {
            }
        }
    }

    private void j(String str) {
        JSONObject jSONObject;
        String string;
        com.alipay.sdk.authjs.d dVar = new com.alipay.sdk.authjs.d(getApplicationContext(), new d(this));
        String str2 = null;
        try {
            jSONObject = new JSONObject(str);
            string = jSONObject.getString(com.alipay.sdk.authjs.a.f9677k);
        } catch (Exception unused) {
        }
        try {
            if (TextUtils.isEmpty(string)) {
                return;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject(com.alipay.sdk.authjs.a.f9678l);
            JSONObject jSONObject3 = jSONObject2 instanceof JSONObject ? jSONObject2 : null;
            String string2 = jSONObject.getString(com.alipay.sdk.authjs.a.f9679m);
            String string3 = jSONObject.getString(com.alipay.sdk.authjs.a.f9676j);
            com.alipay.sdk.authjs.a aVar = new com.alipay.sdk.authjs.a("call");
            aVar.f9682b = string3;
            aVar.f9683c = string2;
            aVar.f9685e = jSONObject3;
            aVar.f9681a = string;
            dVar.c(aVar);
        } catch (Exception unused2) {
            str2 = string;
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            try {
                dVar.g(str2, a.EnumC0025a.RUNTIME_ERROR);
            } catch (JSONException unused3) {
            }
        }
    }

    static /* synthetic */ void m(AuthActivity authActivity) {
        try {
            if (authActivity.f9646c == null) {
                authActivity.f9646c = new com.alipay.sdk.widget.a(authActivity, com.alipay.sdk.widget.a.f9857d);
            }
            authActivity.f9646c.c();
        } catch (Exception unused) {
            authActivity.f9646c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void p(AuthActivity authActivity) {
        com.alipay.sdk.widget.a aVar = authActivity.f9646c;
        if (aVar != null) {
            aVar.f();
        }
        authActivity.f9646c = null;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f9644a.canGoBack()) {
            if (this.f9649f) {
                j.d(this, this.f9645b + "?resultCode=150");
                finish();
                return;
            }
            return;
        }
        j.d(this, this.f9645b + "?resultCode=150");
        finish();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                finish();
                return;
            }
            try {
                this.f9645b = extras.getString(f9643i);
                String string = extras.getString("params");
                if (!com.alipay.sdk.util.j.m(string)) {
                    finish();
                    return;
                }
                super.requestWindowFeature(1);
                this.f9647d = new Handler(getMainLooper());
                LinearLayout linearLayout = new LinearLayout(this);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                linearLayout.setOrientation(1);
                setContentView(linearLayout, layoutParams);
                WebView webView = new WebView(this);
                this.f9644a = webView;
                layoutParams.weight = 1.0f;
                webView.setVisibility(0);
                linearLayout.addView(this.f9644a, layoutParams);
                WebSettings settings = this.f9644a.getSettings();
                settings.setUserAgentString(settings.getUserAgentString() + com.alipay.sdk.util.j.o(getApplicationContext()));
                settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
                settings.setSupportMultipleWindows(true);
                settings.setJavaScriptEnabled(true);
                settings.setSavePassword(false);
                settings.setJavaScriptCanOpenWindowsAutomatically(true);
                settings.setMinimumFontSize(settings.getMinimumFontSize() + 8);
                settings.setAllowFileAccess(false);
                settings.setTextSize(WebSettings.TextSize.NORMAL);
                this.f9644a.setVerticalScrollbarOverlay(true);
                this.f9644a.setWebViewClient(new b(this, (byte) 0));
                this.f9644a.setWebChromeClient(new a(this, (byte) 0));
                this.f9644a.setDownloadListener(new c(this));
                this.f9644a.loadUrl(string);
                if (Build.VERSION.SDK_INT >= 7) {
                    try {
                        Method method = this.f9644a.getSettings().getClass().getMethod("setDomStorageEnabled", Boolean.TYPE);
                        if (method != null) {
                            method.invoke(this.f9644a.getSettings(), Boolean.TRUE);
                        }
                    } catch (Exception unused) {
                    }
                }
                try {
                    try {
                        this.f9644a.removeJavascriptInterface("searchBoxJavaBridge_");
                        this.f9644a.removeJavascriptInterface("accessibility");
                        this.f9644a.removeJavascriptInterface("accessibilityTraversal");
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable unused3) {
                    Method method2 = this.f9644a.getClass().getMethod("removeJavascriptInterface", new Class[0]);
                    if (method2 != null) {
                        method2.invoke(this.f9644a, "searchBoxJavaBridge_");
                        method2.invoke(this.f9644a, "accessibility");
                        method2.invoke(this.f9644a, "accessibilityTraversal");
                    }
                }
                if (Build.VERSION.SDK_INT >= 19) {
                    this.f9644a.getSettings().setCacheMode(1);
                }
            } catch (Exception unused4) {
                finish();
            }
        } catch (Exception unused5) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        WebView webView = this.f9644a;
        if (webView != null) {
            webView.removeAllViews();
            try {
                this.f9644a.destroy();
            } catch (Throwable unused) {
            }
            this.f9644a = null;
        }
    }
}
