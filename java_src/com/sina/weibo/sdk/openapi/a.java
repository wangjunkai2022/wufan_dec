package com.sina.weibo.sdk.openapi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.sina.weibo.sdk.api.WeiboMultiMessage;
import com.sina.weibo.sdk.auth.AccessTokenHelper;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.WbAuthListener;
import com.sina.weibo.sdk.b.a;
import com.sina.weibo.sdk.b.c;
import com.sina.weibo.sdk.common.UiError;
import com.sina.weibo.sdk.share.ShareTransActivity;
import com.sina.weibo.sdk.share.WbShareCallback;
import com.sina.weibo.sdk.share.e;
import com.sina.weibo.sdk.web.b.d;
/* loaded from: classes4.dex */
public final class a implements IWBAPI {
    private Context mContext;

    /* renamed from: r  reason: collision with root package name */
    private com.sina.weibo.sdk.auth.a f56744r = new com.sina.weibo.sdk.auth.a();

    /* renamed from: s  reason: collision with root package name */
    private e f56745s = new e();

    public a(Context context) {
        this.mContext = context;
    }

    @Override // com.sina.weibo.sdk.openapi.IWBAPI
    public final void authorize(Activity activity, WbAuthListener wbAuthListener) {
        com.sina.weibo.sdk.auth.a aVar = this.f56744r;
        c.a("WBSsoTag", "authorize()");
        if (wbAuthListener != null) {
            aVar.f56723d = wbAuthListener;
            if (com.sina.weibo.sdk.a.a(activity)) {
                if (com.sina.weibo.sdk.b.a.e(activity) != null) {
                    aVar.a(activity);
                    return;
                }
            }
            aVar.b(activity);
            return;
        }
        throw new RuntimeException("listener can not be null.");
    }

    @Override // com.sina.weibo.sdk.openapi.IWBAPI
    public final void authorizeCallback(Activity activity, int i2, int i4, Intent intent) {
        com.sina.weibo.sdk.auth.a aVar = this.f56744r;
        c.a("WBSsoTag", "authorizeCallback()");
        WbAuthListener wbAuthListener = aVar.f56723d;
        if (wbAuthListener != null) {
            if (32973 != i2) {
                wbAuthListener.onError(new UiError(-7, "request code is error", "requestCode is error"));
            } else if (i4 != -1) {
                if (i4 == 0) {
                    wbAuthListener.onCancel();
                } else {
                    wbAuthListener.onError(new UiError(-6, "result code is error", "result code is error"));
                }
            } else if (intent != null) {
                String stringExtra = intent.getStringExtra("error");
                String stringExtra2 = intent.getStringExtra("error_type");
                String stringExtra3 = intent.getStringExtra("error_description");
                if (TextUtils.isEmpty(stringExtra) && TextUtils.isEmpty(stringExtra2) && TextUtils.isEmpty(stringExtra3)) {
                    Oauth2AccessToken parseAccessToken = Oauth2AccessToken.parseAccessToken(intent.getExtras());
                    if (parseAccessToken != null) {
                        AccessTokenHelper.writeAccessToken(activity, parseAccessToken);
                        aVar.f56723d.onComplete(parseAccessToken);
                        return;
                    }
                    aVar.f56723d.onError(new UiError(-4, "oauth2AccessToken is null", "oauth2AccessToken is null"));
                } else if (!"access_denied".equals(stringExtra) && !"OAuthAccessDeniedException".equals(stringExtra)) {
                    aVar.f56723d.onError(new UiError(-5, stringExtra2, stringExtra3));
                } else {
                    aVar.f56723d.onCancel();
                }
            }
        }
    }

    @Override // com.sina.weibo.sdk.openapi.IWBAPI
    public final void authorizeClient(Activity activity, WbAuthListener wbAuthListener) {
        com.sina.weibo.sdk.auth.a aVar = this.f56744r;
        c.a("WBSsoTag", "authorizeClient()");
        if (wbAuthListener != null) {
            aVar.f56723d = wbAuthListener;
            aVar.a(activity);
            return;
        }
        throw new RuntimeException("listener can not be null.");
    }

    @Override // com.sina.weibo.sdk.openapi.IWBAPI
    public final void authorizeWeb(Activity activity, WbAuthListener wbAuthListener) {
        com.sina.weibo.sdk.auth.a aVar = this.f56744r;
        c.a("WBSsoTag", "authorizeWeb()");
        if (wbAuthListener != null) {
            aVar.f56723d = wbAuthListener;
            aVar.b(activity);
            return;
        }
        throw new RuntimeException("listener can not be null.");
    }

    @Override // com.sina.weibo.sdk.openapi.IWBAPI
    public final void doResultIntent(Intent intent, WbShareCallback wbShareCallback) {
        Bundle extras;
        if (intent == null || wbShareCallback == null || (extras = intent.getExtras()) == null) {
            return;
        }
        try {
            int i2 = extras.getInt("_weibo_resp_errcode", -1);
            if (i2 == 0) {
                wbShareCallback.onComplete();
            } else if (i2 == 1) {
                wbShareCallback.onCancel();
            } else if (i2 != 2) {
            } else {
                wbShareCallback.onError(new UiError(i2, extras.getString("_weibo_resp_errstr"), "error from weibo client!"));
            }
        } catch (Exception e4) {
            wbShareCallback.onError(new UiError(-1, e4.getMessage(), e4.getMessage()));
        }
    }

    @Override // com.sina.weibo.sdk.openapi.IWBAPI
    public final boolean isWBAppInstalled() {
        return com.sina.weibo.sdk.a.a(this.mContext);
    }

    @Override // com.sina.weibo.sdk.openapi.IWBAPI
    public final boolean isWBAppSupportMultipleImage() {
        return com.sina.weibo.sdk.a.b(this.mContext);
    }

    @Override // com.sina.weibo.sdk.openapi.IWBAPI
    public final void registerApp(Context context, AuthInfo authInfo) {
        registerApp(context, authInfo, null);
    }

    @Override // com.sina.weibo.sdk.openapi.IWBAPI
    public final void setLoggerEnable(boolean z3) {
        c.setLoggerEnable(z3);
    }

    @Override // com.sina.weibo.sdk.openapi.IWBAPI
    public final void shareMessage(Activity activity, WeiboMultiMessage weiboMultiMessage, boolean z3) {
        e eVar = this.f56745s;
        if (activity != null) {
            if (com.sina.weibo.sdk.a.a(activity) || !z3) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - eVar.D >= 5000) {
                    eVar.D = currentTimeMillis;
                    if (z3) {
                        e.a(activity, weiboMultiMessage);
                        return;
                    }
                    a.C0286a e4 = com.sina.weibo.sdk.b.a.e(activity);
                    if (com.sina.weibo.sdk.a.a(activity) && e4 != null) {
                        a.C0286a e5 = com.sina.weibo.sdk.b.a.e(activity);
                        boolean z4 = false;
                        if (e5 != null && e5.ah > 10000) {
                            z4 = true;
                        }
                        if (z4) {
                            e.a(activity, weiboMultiMessage);
                            return;
                        }
                    }
                    AuthInfo a4 = com.sina.weibo.sdk.a.a();
                    if (a4 != null) {
                        d dVar = new d(a4);
                        dVar.setContext(activity);
                        dVar.aE = weiboMultiMessage;
                        dVar.packageName = activity.getPackageName();
                        Oauth2AccessToken readAccessToken = AccessTokenHelper.readAccessToken(activity);
                        if (readAccessToken != null) {
                            String accessToken = readAccessToken.getAccessToken();
                            if (!TextUtils.isEmpty(readAccessToken.getAccessToken())) {
                                dVar.ae = accessToken;
                            }
                        }
                        Bundle bundle = new Bundle();
                        dVar.writeToBundle(bundle);
                        Intent intent = new Intent(activity, ShareTransActivity.class);
                        intent.putExtra("start_flag", 1001);
                        intent.putExtra("start_web_activity", "com.sina.weibo.sdk.web.WebActivity");
                        intent.putExtras(bundle);
                        activity.startActivityForResult(intent, 10001);
                    }
                }
            }
        }
    }

    @Override // com.sina.weibo.sdk.openapi.IWBAPI
    public final void registerApp(Context context, AuthInfo authInfo, SdkListener sdkListener) {
        com.sina.weibo.sdk.a.a(authInfo, sdkListener);
    }
}
