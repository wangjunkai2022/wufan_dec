package cn.sharesdk.sina.weibo.utils;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.WebAuthorizeActivity;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import java.util.HashMap;
/* compiled from: SinaWeiboAuthorizeWebviewClient.java */
/* loaded from: classes2.dex */
public class a extends cn.sharesdk.framework.authorize.b {

    /* renamed from: a  reason: collision with root package name */
    private boolean f8983a;

    public a(WebAuthorizeActivity webAuthorizeActivity) {
        super(webAuthorizeActivity);
    }

    static /* synthetic */ AuthorizeListener a(a aVar) {
        return aVar.listener;
    }

    @Override // cn.sharesdk.framework.authorize.b
    protected void onComplete(String str) {
        if (this.f8983a) {
            return;
        }
        this.f8983a = true;
        Bundle urlToBundle = ResHelper.urlToBundle(str);
        String string = urlToBundle.getString("error");
        String string2 = urlToBundle.getString("error_code");
        if (this.listener != null) {
            if (string == null && string2 == null) {
                String string3 = urlToBundle.getString("code");
                if (TextUtils.isEmpty(string3)) {
                    this.listener.onError(new Throwable("Authorize code is empty"));
                }
                a(this.activity.getHelper().getPlatform(), string3);
            } else if (string.equals("access_denied")) {
                this.listener.onCancel();
            } else {
                int i2 = 0;
                try {
                    i2 = ResHelper.parseInt(string2);
                } catch (Throwable th) {
                    SSDKLog.b().a(th);
                }
                this.listener.onError(new Throwable(string + " (" + i2 + ")"));
            }
        }
    }

    @Override // cn.sharesdk.framework.g, android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (!TextUtils.isEmpty(this.redirectUri) && str.startsWith(this.redirectUri)) {
            webView.stopLoading();
            this.activity.finish();
            onComplete(str);
        } else if (str.startsWith("sms:")) {
            String substring = str.substring(4);
            try {
                try {
                    Intent a4 = a(substring);
                    a4.setPackage("com.android.mms");
                    webView.getContext().startActivity(a4);
                } catch (Throwable th) {
                    AuthorizeListener authorizeListener = this.listener;
                    if (authorizeListener != null) {
                        authorizeListener.onError(th);
                    }
                }
            } catch (Throwable unused) {
                webView.getContext().startActivity(a(substring));
            }
        } else {
            super.onPageStarted(webView, str, bitmap);
        }
    }

    @Override // cn.sharesdk.framework.g, android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!TextUtils.isEmpty(this.redirectUri) && str.startsWith(this.redirectUri)) {
            webView.stopLoading();
            this.activity.finish();
            onComplete(str);
            return true;
        } else if (str.startsWith("sms:")) {
            String substring = str.substring(4);
            try {
                try {
                    Intent a4 = a(substring);
                    a4.setPackage("com.android.mms");
                    webView.getContext().startActivity(a4);
                } catch (Throwable th) {
                    AuthorizeListener authorizeListener = this.listener;
                    if (authorizeListener != null) {
                        authorizeListener.onError(th);
                    }
                }
            } catch (Throwable unused) {
                webView.getContext().startActivity(a(substring));
            }
            return true;
        } else {
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    private void a(final Platform platform, final String str) {
        new Thread() { // from class: cn.sharesdk.sina.weibo.utils.a.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    String b4 = cn.sharesdk.sina.weibo.a.a(platform).b(str);
                    if (b4 == null) {
                        ((cn.sharesdk.framework.authorize.b) a.this).listener.onError(new Throwable("Authorize token is empty"));
                        return;
                    }
                    HashMap fromJson = new Hashon().fromJson(b4);
                    Bundle bundle = new Bundle();
                    bundle.putString("uid", String.valueOf(fromJson.get("uid")));
                    bundle.putString("remind_in", String.valueOf(fromJson.get("remind_in")));
                    bundle.putString("expires_in", String.valueOf(fromJson.get("expires_in")));
                    bundle.putString("access_token", String.valueOf(fromJson.get("access_token")));
                    ((cn.sharesdk.framework.authorize.b) a.this).listener.onComplete(bundle);
                } catch (Throwable th) {
                    SSDKLog.b().a(th);
                }
            }
        }.start();
    }

    private Intent a(String str) {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + str));
        intent.putExtra("sms_body", "");
        intent.setFlags(268435456);
        return intent;
    }
}
