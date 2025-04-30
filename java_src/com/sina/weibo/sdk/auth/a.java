package com.sina.weibo.sdk.auth;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.sina.weibo.BuildConfig;
import com.sina.weibo.sdk.b.a;
import com.sina.weibo.sdk.b.c;
import com.sina.weibo.sdk.common.UiError;
import com.sina.weibo.sdk.net.h;
import com.sina.weibo.sdk.web.WebActivity;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: d  reason: collision with root package name */
    public WbAuthListener f56723d;

    public final void a(Activity activity) {
        c.a("WBSsoTag", "startClientAuth()");
        try {
            a.C0286a e4 = com.sina.weibo.sdk.b.a.e(activity);
            Intent intent = new Intent();
            if (e4 == null) {
                intent.setClassName(BuildConfig.APPLICATION_ID, "com.sina.weibo.SSOActivity");
            } else {
                intent.setClassName(e4.packageName, e4.ag);
            }
            AuthInfo a4 = com.sina.weibo.sdk.a.a();
            intent.putExtra("appKey", a4.getAppKey());
            intent.putExtra("redirectUri", a4.getRedirectUrl());
            intent.putExtra("scope", a4.getScope());
            intent.putExtra("packagename", a4.getPackageName());
            intent.putExtra("key_hash", a4.getHash());
            intent.putExtra("_weibo_command_type", 3);
            StringBuilder sb = new StringBuilder();
            sb.append(System.currentTimeMillis());
            intent.putExtra("_weibo_transaction", sb.toString());
            if (activity == null) {
                this.f56723d.onError(new UiError(-1, "activity is null", ""));
            } else if (com.sina.weibo.sdk.b.a.a(activity, intent)) {
                activity.startActivityForResult(intent, 32973);
                c.a("WBSsoTag", "start SsoActivity ");
            } else {
                this.f56723d.onError(new UiError(-2, "your app is illegal", ""));
            }
        } catch (Exception e5) {
            e5.printStackTrace();
            c.b("WBSsoTag", e5.getMessage());
            this.f56723d.onError(new UiError(-3, "occur exception", e5.getMessage()));
        }
    }

    public final void b(Activity activity) {
        h hVar = new h();
        AuthInfo a4 = com.sina.weibo.sdk.a.a();
        if (a4 == null) {
            return;
        }
        hVar.put("client_id", a4.getAppKey());
        hVar.put("redirect_uri", a4.getRedirectUrl());
        hVar.put("scope", a4.getScope());
        hVar.put("packagename", a4.getPackageName());
        hVar.put("key_hash", a4.getHash());
        hVar.put("response_type", "code");
        hVar.put("version", "0041005000");
        hVar.put("luicode", "10000360");
        hVar.put("lfid", "OP_" + a4.getAppKey());
        Oauth2AccessToken readAccessToken = AccessTokenHelper.readAccessToken(activity);
        if (readAccessToken != null) {
            String accessToken = readAccessToken.getAccessToken();
            if (!TextUtils.isEmpty(readAccessToken.getAccessToken())) {
                hVar.put("trans_token", accessToken);
                hVar.put("trans_access_token", accessToken);
            }
        }
        String str = "https://open.weibo.cn/oauth2/authorize?" + hVar.g();
        if (this.f56723d != null) {
            b b4 = b.b();
            StringBuilder sb = new StringBuilder();
            sb.append(System.currentTimeMillis());
            String sb2 = sb.toString();
            b4.a(sb2, this.f56723d);
            Intent intent = new Intent(activity, WebActivity.class);
            com.sina.weibo.sdk.web.b.a aVar = new com.sina.weibo.sdk.web.b.a(a4, str, sb2);
            Bundle bundle = new Bundle();
            aVar.writeToBundle(bundle);
            intent.putExtras(bundle);
            activity.startActivity(intent);
        }
    }
}
