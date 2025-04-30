package com.cmic.sso.sdk.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.cmic.sso.sdk.auth.AuthnHelper;
/* compiled from: ServerClauseDialog.java */
/* loaded from: classes2.dex */
public class c extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private WebView f11048a;

    /* renamed from: b  reason: collision with root package name */
    private String f11049b;

    /* renamed from: c  reason: collision with root package name */
    private String f11050c;

    /* renamed from: d  reason: collision with root package name */
    private LinearLayout f11051d;

    public c(Context context, int i2, String str, String str2) {
        super(context, i2);
        try {
            this.f11050c = str;
            this.f11049b = str2;
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private ViewGroup c() {
        View findViewById;
        try {
            LinearLayout linearLayout = new LinearLayout(getContext());
            this.f11051d = linearLayout;
            linearLayout.setOrientation(1);
            this.f11051d.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            AuthThemeConfig authThemeConfig = AuthnHelper.getInstance(getContext()).getAuthThemeConfig();
            int clauseLayoutResID = authThemeConfig.getClauseLayoutResID();
            String str = TextUtils.isEmpty(this.f11050c) ? com.cmic.sso.sdk.c.f10788d[authThemeConfig.getAppLanguageType()] : this.f11050c;
            if (clauseLayoutResID != -1) {
                RelativeLayout a4 = d.a(getContext(), getLayoutInflater().inflate(clauseLayoutResID, (ViewGroup) this.f11051d, false), 1118481, 0, str, (View.OnClickListener) null);
                String clauseLayoutReturnID = authThemeConfig.getClauseLayoutReturnID();
                if (!TextUtils.isEmpty(clauseLayoutReturnID) && (findViewById = a4.findViewById(b.a(getContext(), clauseLayoutReturnID))) != null) {
                    findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.cmic.sso.sdk.view.c.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            c.this.f11048a.stopLoading();
                            c.this.b();
                        }
                    });
                }
                this.f11051d.addView(a4);
            } else {
                this.f11051d.addView(d.a(getContext(), (View) null, 1118481, 2236962, str, new View.OnClickListener() { // from class: com.cmic.sso.sdk.view.c.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        c.this.f11048a.stopLoading();
                        c.this.b();
                    }
                }));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return this.f11051d;
    }

    private void d() {
        WebView webView = new WebView(getContext());
        this.f11048a = webView;
        WebSettings settings = webView.getSettings();
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setSavePassword(false);
        settings.setJavaScriptEnabled(true);
        this.f11051d.addView(this.f11048a, new LinearLayout.LayoutParams(-1, -1));
        if (Build.VERSION.SDK_INT < 17) {
            this.f11048a.removeJavascriptInterface("searchBoxJavaBridge_");
            this.f11048a.removeJavascriptInterface("accessibility");
            this.f11048a.removeJavascriptInterface("accessibilityTraversal");
        }
        this.f11048a.setWebViewClient(new WebViewClient() { // from class: com.cmic.sso.sdk.view.c.3
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                c.this.f11048a.loadUrl(str);
                return true;
            }
        });
        this.f11048a.loadUrl(this.f11049b);
    }

    public void b() {
        if (this.f11048a.canGoBack()) {
            this.f11048a.goBack();
        } else {
            dismiss();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        WebView webView = this.f11048a;
        if (webView != null) {
            webView.stopLoading();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        if (this.f11051d == null) {
            a();
        }
        if (this.f11048a == null) {
            d();
        }
        super.show();
    }

    protected void a() {
        requestWindowFeature(1);
        getWindow().setFeatureDrawableAlpha(0, 0);
        AuthThemeConfig authThemeConfig = AuthnHelper.getInstance(getContext()).getAuthThemeConfig();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21 && authThemeConfig.getStatusBarColor() != 0) {
            getWindow().addFlags(Integer.MIN_VALUE);
            getWindow().clearFlags(67108864);
            getWindow().setStatusBarColor(authThemeConfig.getStatusBarColor());
            getWindow().setNavigationBarColor(authThemeConfig.getStatusBarColor());
        }
        if (i2 >= 23) {
            if (authThemeConfig.isLightColor()) {
                getWindow().getDecorView().setSystemUiVisibility(8192);
            } else {
                getWindow().getDecorView().setSystemUiVisibility(0);
            }
        }
        setContentView(c());
    }
}
