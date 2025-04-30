package cn.sharesdk.tencent.qzone.utils;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.authorize.RegisterView;
import cn.sharesdk.framework.g;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.tencent.qzone.ReceiveActivity;
import com.mob.tools.FakeActivity;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
/* loaded from: classes2.dex */
public class ShareActivity extends FakeActivity {
    private d adapter;
    private PlatformActionListener pa;
    private boolean resultFailed;
    private boolean resultOk;
    private RegisterView rv;
    private String scheme;
    private String uriScheme;
    private boolean useClient;
    private WebView webView;

    /* JADX INFO: Access modifiers changed from: private */
    public void afterShare(String str) {
        String str2 = str == null ? "" : new String(str);
        Bundle urlToBundle = ResHelper.urlToBundle(str);
        if (urlToBundle == null) {
            this.resultFailed = true;
            finish();
            PlatformActionListener platformActionListener = this.pa;
            platformActionListener.onError(null, 0, new Throwable("failed to parse callback uri: " + str2));
            return;
        }
        String string = urlToBundle.getString("action");
        if (!"share".equals(string) && !"shareToQzone".equals(string)) {
            this.resultFailed = true;
            finish();
            PlatformActionListener platformActionListener2 = this.pa;
            platformActionListener2.onError(null, 0, new Throwable("action error: " + str2));
            return;
        }
        String string2 = urlToBundle.getString("result");
        if ("cancel".equals(string2)) {
            finish();
            this.pa.onCancel(null, 0);
        } else if (!"complete".equals(string2)) {
            this.resultFailed = true;
            finish();
            PlatformActionListener platformActionListener3 = this.pa;
            platformActionListener3.onError(null, 0, new Throwable("operation failed: " + str2));
        } else {
            String string3 = urlToBundle.getString(GrantCredentialsPermissionActivity.f64044h);
            if (TextUtils.isEmpty(string3)) {
                this.resultFailed = true;
                finish();
                PlatformActionListener platformActionListener4 = this.pa;
                platformActionListener4.onError(null, 0, new Throwable("response empty" + str2));
                return;
            }
            this.resultOk = true;
            finish();
            this.pa.onComplete(null, 0, new Hashon().fromJson(string3));
        }
    }

    private void clientShare() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(this.scheme));
            intent.putExtra("pkg_name", this.activity.getPackageName());
            if (Build.VERSION.SDK_INT >= 11) {
                intent.setFlags(335544320);
            }
            this.activity.startActivityForResult(intent, 100);
        } catch (Throwable th) {
            PlatformActionListener platformActionListener = this.pa;
            if (platformActionListener != null) {
                platformActionListener.onError(null, 0, th);
            }
        }
    }

    private d getAdapter() {
        try {
            String string = this.activity.getPackageManager().getActivityInfo(this.activity.getComponentName(), 128).metaData.getString("QZoneWebShareAdapter");
            if (string != null && string.length() > 0) {
                Object newInstance = Class.forName(string).newInstance();
                if (newInstance instanceof d) {
                    return (d) newInstance;
                }
                return null;
            }
            return null;
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchQZone(String str) {
        ResolveInfo resolveInfo;
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        try {
            resolveInfo = this.activity.getPackageManager().resolveActivity(intent, 0);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            resolveInfo = null;
        }
        if (resolveInfo != null) {
            try {
                startActivity(intent);
            } catch (Throwable th2) {
                SSDKLog.b().a(th2);
            }
        }
    }

    private void webShare() {
        this.rv = getBodyView();
        try {
            int stringRes = ResHelper.getStringRes(getContext(), "ssdk_share_to_qzone");
            if (stringRes > 0) {
                this.rv.c().getTvTitle().setText(stringRes);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            this.rv.c().setVisibility(8);
        }
        this.adapter.a(this.rv.d());
        this.adapter.a(this.rv.b());
        this.adapter.a(this.rv.c());
        this.adapter.a();
        this.activity.setContentView(this.rv);
        if ("none".equals(DeviceHelper.getInstance(this.activity).getDetailNetworkTypeForStatic())) {
            this.resultFailed = true;
            finish();
            this.pa.onError(null, 0, new Throwable("failed to load webpage, network disconnected."));
            return;
        }
        this.rv.b().loadUrl(this.scheme);
    }

    protected RegisterView getBodyView() {
        RegisterView registerView = new RegisterView(this.activity);
        registerView.c().getChildAt(registerView.c().getChildCount() - 1).setVisibility(8);
        registerView.a().setOnClickListener(new View.OnClickListener() { // from class: cn.sharesdk.tencent.qzone.utils.ShareActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new Thread() { // from class: cn.sharesdk.tencent.qzone.utils.ShareActivity.1.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            new Instrumentation().sendKeyDownUpSync(4);
                        } catch (Throwable th) {
                            SSDKLog.b().a(th);
                            ShareActivity.this.finish();
                            ShareActivity.this.pa.onCancel(null, 0);
                        }
                    }
                }.start();
            }
        });
        WebView b4 = registerView.b();
        this.webView = b4;
        WebSettings settings = b4.getSettings();
        settings.setBuiltInZoomControls(true);
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(1);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setDatabasePath(this.activity.getDir("database", 0).getPath());
        settings.setSavePassword(false);
        this.webView.setVerticalScrollBarEnabled(false);
        this.webView.setHorizontalScrollBarEnabled(false);
        this.webView.setWebViewClient(new g() { // from class: cn.sharesdk.tencent.qzone.utils.ShareActivity.2
            @Override // cn.sharesdk.framework.g, android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str != null && str.startsWith(ShareActivity.this.uriScheme)) {
                    ShareActivity.this.afterShare(str);
                } else if (str != null && str.startsWith("mqzone://")) {
                    ShareActivity.this.launchQZone(str);
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        });
        return registerView;
    }

    @Override // com.mob.tools.FakeActivity
    public void onActivityResult(int i2, int i4, Intent intent) {
        finish();
    }

    @Override // com.mob.tools.FakeActivity
    public void onCreate() {
        try {
            try {
                Class<?> cls = Class.forName("cn.sharesdk.tencent.qq.ReceiveActivity");
                cls.getMethod("setUriScheme", String.class).invoke(null, this.uriScheme);
                cls.getMethod("setPlatformActionListener", PlatformActionListener.class).invoke(null, this.pa);
                if (this.useClient) {
                    clientShare();
                } else {
                    webShare();
                }
            } catch (Throwable th) {
                this.activity.finish();
                PlatformActionListener platformActionListener = this.pa;
                if (platformActionListener != null) {
                    platformActionListener.onError(null, 9, th);
                }
            }
        } catch (Throwable unused) {
            ReceiveActivity.a(this.uriScheme);
            ReceiveActivity.a(this.pa);
            if (this.useClient) {
                clientShare();
            } else {
                webShare();
            }
        }
    }

    @Override // com.mob.tools.FakeActivity
    public void onDestroy() {
        if (!this.useClient && !this.resultFailed && !this.resultOk) {
            this.pa.onCancel(null, 0);
        }
        WebView webView = this.webView;
        if (webView != null) {
            webView.setFocusable(false);
        }
        d dVar = this.adapter;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // com.mob.tools.FakeActivity
    public boolean onFinish() {
        d dVar = this.adapter;
        if (dVar != null) {
            return dVar.h();
        }
        return super.onFinish();
    }

    @Override // com.mob.tools.FakeActivity
    public void onPause() {
        d dVar = this.adapter;
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // com.mob.tools.FakeActivity
    public void onRestart() {
        d dVar = this.adapter;
        if (dVar != null) {
            dVar.g();
        }
    }

    @Override // com.mob.tools.FakeActivity
    public void onResume() {
        d dVar = this.adapter;
        if (dVar != null) {
            dVar.e();
        }
    }

    @Override // com.mob.tools.FakeActivity
    public void onStart() {
        d dVar = this.adapter;
        if (dVar != null) {
            dVar.c();
        }
    }

    @Override // com.mob.tools.FakeActivity
    public void onStop() {
        d dVar = this.adapter;
        if (dVar != null) {
            dVar.f();
        }
    }

    @Override // com.mob.tools.FakeActivity
    public void setActivity(Activity activity) {
        super.setActivity(activity);
        if (this.adapter == null) {
            d adapter = getAdapter();
            this.adapter = adapter;
            if (adapter == null) {
                this.adapter = new d();
            }
        }
        this.adapter.a(activity);
    }

    public void setAppId(String str) {
        this.uriScheme = "tencent" + str;
    }

    public void setScheme(String str, boolean z3) {
        this.scheme = str;
        this.useClient = z3;
    }

    public void setSharedCallback(PlatformActionListener platformActionListener) {
        this.pa = platformActionListener;
    }
}
