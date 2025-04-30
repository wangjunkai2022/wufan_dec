package com.ss.android.downloadlib.addownload.compliance;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.R;
import com.facebook.common.util.f;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g.k;
/* loaded from: classes4.dex */
public class AppPrivacyPolicyActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f57185a;

    /* renamed from: b  reason: collision with root package name */
    private WebView f57186b;

    /* renamed from: c  reason: collision with root package name */
    private long f57187c;

    /* renamed from: d  reason: collision with root package name */
    private long f57188d;

    /* renamed from: e  reason: collision with root package name */
    private String f57189e;

    private void b() {
        this.f57185a = (ImageView) findViewById(R.id.iv_privacy_back);
        this.f57186b = (WebView) findViewById(R.id.privacy_webview);
        this.f57185a.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.AppPrivacyPolicyActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.a("lp_app_privacy_click_close", AppPrivacyPolicyActivity.this.f57188d);
                AppPrivacyPolicyActivity.this.finish();
            }
        });
        WebSettings settings = this.f57186b.getSettings();
        settings.setDefaultFontSize(16);
        settings.setCacheMode(-1);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(0);
        }
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setSavePassword(false);
        settings.setAllowFileAccess(false);
        this.f57186b.setWebViewClient(new WebViewClient() { // from class: com.ss.android.downloadlib.addownload.compliance.AppPrivacyPolicyActivity.2
            private boolean a(Uri uri) {
                String scheme = uri.getScheme();
                return (f.f11765a.equals(scheme) || "https".equals(scheme)) ? false : true;
            }

            @Override // android.webkit.WebViewClient
            public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                if (Build.VERSION.SDK_INT < 26) {
                    return super.onRenderProcessGone(webView, renderProcessGoneDetail);
                }
                if (!renderProcessGoneDetail.didCrash()) {
                    k.a("System killed the WebView rendering process to reclaim memory. Recreating...");
                    if (webView != null) {
                        ((ViewGroup) webView.getParent()).removeView(webView);
                        webView.destroy();
                    }
                    return true;
                }
                k.a("The WebView rendering process crashed!");
                if (webView != null) {
                    ((ViewGroup) webView.getParent()).removeView(webView);
                    webView.destroy();
                }
                return true;
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(21)
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                return a(webResourceRequest.getUrl());
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                return a(Uri.parse(str));
            }
        });
        a(this.f57186b);
        this.f57186b.setScrollBarStyle(0);
        this.f57186b.loadUrl(this.f57189e);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        e.a("lp_app_privacy_click_close", this.f57188d);
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.ttdownloader_activity_app_privacy_policy);
        if (a()) {
            b();
        } else {
            com.ss.android.socialbase.appdownloader.c.a((Activity) this);
        }
    }

    public static void a(Activity activity, long j4) {
        Intent intent = new Intent(activity, AppPrivacyPolicyActivity.class);
        intent.putExtra("app_info_id", j4);
        activity.startActivity(intent);
    }

    private boolean a() {
        this.f57187c = getIntent().getLongExtra("app_info_id", 0L);
        com.ss.android.downloadlib.addownload.b.b a4 = c.a().a(this.f57187c);
        if (a4 == null) {
            return false;
        }
        this.f57188d = a4.f57113b;
        String str = a4.f57120i;
        this.f57189e = str;
        if (TextUtils.isEmpty(str)) {
            this.f57189e = j.i().optString("ad_privacy_backup_url", "https://sf6-ttcdn-tos.pstatp.com/obj/ad-tetris-site/personal-privacy-page.html");
            return true;
        }
        return true;
    }

    private void a(WebView webView) {
        try {
            webView.removeJavascriptInterface("searchBoxJavaBridge_");
            webView.removeJavascriptInterface("accessibility");
            webView.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable unused) {
        }
    }
}
