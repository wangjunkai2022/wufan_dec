package cn.sharesdk.sina.weibo;

import android.content.Intent;
import android.os.Bundle;
import android.widget.LinearLayout;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.MobSDK;
import com.mob.tools.FakeActivity;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.WbAuthListener;
import com.sina.weibo.sdk.common.UiError;
import com.sina.weibo.sdk.openapi.IWBAPI;
import com.sina.weibo.sdk.openapi.SdkListener;
import com.sina.weibo.sdk.openapi.WBAPIFactory;
/* loaded from: classes2.dex */
public class SinaWeiboOfficialAuth extends FakeActivity {
    private String appkey;
    private IWBAPI iwbapi;
    private AuthorizeListener listener;
    private String permissions;
    private String redirectUrl;

    public SinaWeiboOfficialAuth(String str, String str2, String str3, AuthorizeListener authorizeListener) {
        this.appkey = str;
        this.redirectUrl = str2;
        this.permissions = str3;
        this.listener = authorizeListener;
    }

    private String join(Object[] objArr, String str) {
        if (objArr == null) {
            return null;
        }
        return join(objArr, str, 0, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loginManager() {
        SSDKLog.b().a("SinaWeiboOfficialAuth loginManager");
        IWBAPI iwbapi = this.iwbapi;
        if (iwbapi != null) {
            iwbapi.authorizeClient(this.activity, new WbAuthListener() { // from class: cn.sharesdk.sina.weibo.SinaWeiboOfficialAuth.2
                @Override // com.sina.weibo.sdk.auth.WbAuthListener
                public void onCancel() {
                    SinaWeiboOfficialAuth.this.listener.onCancel();
                    SinaWeiboOfficialAuth.this.finish();
                }

                @Override // com.sina.weibo.sdk.auth.WbAuthListener
                public void onComplete(Oauth2AccessToken oauth2AccessToken) {
                    Bundle bundle = new Bundle();
                    bundle.putString("access_token", oauth2AccessToken.getAccessToken());
                    bundle.putString("expires_in", String.valueOf(oauth2AccessToken.getExpiresTime()));
                    bundle.putString("refresh_token", oauth2AccessToken.getRefreshToken());
                    bundle.putString("username", oauth2AccessToken.getScreenName());
                    bundle.putString("uid", oauth2AccessToken.getUid());
                    SinaWeiboOfficialAuth.this.listener.onComplete(bundle);
                    SinaWeiboOfficialAuth.this.finish();
                }

                @Override // com.sina.weibo.sdk.auth.WbAuthListener
                public void onError(UiError uiError) {
                    SinaWeiboOfficialAuth sinaWeiboOfficialAuth = SinaWeiboOfficialAuth.this;
                    sinaWeiboOfficialAuth.showWebAuthActivity(sinaWeiboOfficialAuth.listener);
                    SinaWeiboOfficialAuth.this.finish();
                }
            });
            return;
        }
        AuthorizeListener authorizeListener = this.listener;
        if (authorizeListener != null) {
            authorizeListener.onError(new Throwable("SinaWeibo SDK init failed"));
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showWebAuthActivity(AuthorizeListener authorizeListener) {
        new SinaWeiboWebAuthOfficial(this.appkey, this.redirectUrl, this.permissions, authorizeListener).show(MobSDK.getContext(), null);
        SSDKLog.b().a("SinaWeibo SDK Web showWebAuthActivity ");
    }

    @Override // com.mob.tools.FakeActivity
    public void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        IWBAPI iwbapi = this.iwbapi;
        if (iwbapi != null) {
            iwbapi.authorizeCallback(this.activity, i2, i4, intent);
        }
        SSDKLog.b().a("SinaWeiboOfficialAuth onActivityResult");
    }

    @Override // com.mob.tools.FakeActivity
    public void onCreate() {
        SSDKLog.b().a("SinaWeiboOfficialAuth onCreate ");
        try {
            LinearLayout linearLayout = new LinearLayout(this.activity);
            linearLayout.setOrientation(1);
            this.activity.setContentView(linearLayout);
        } catch (Exception e4) {
            SSDKLog.b().a(e4);
            SSDKLog b4 = SSDKLog.b();
            b4.a("SinaWeiboOfficialAuth onCreate exception " + e4.getMessage());
            AuthorizeListener authorizeListener = this.listener;
            if (authorizeListener != null && authorizeListener != null) {
                authorizeListener.onError(new Throwable("SinaWeibo SDK init failed"));
            }
            finish();
        }
        try {
            AuthInfo authInfo = new AuthInfo(this.activity, this.appkey, this.redirectUrl, this.permissions);
            IWBAPI createWBAPI = WBAPIFactory.createWBAPI(this.activity);
            this.iwbapi = createWBAPI;
            createWBAPI.registerApp(this.activity, authInfo, new SdkListener() { // from class: cn.sharesdk.sina.weibo.SinaWeiboOfficialAuth.1
                @Override // com.sina.weibo.sdk.openapi.SdkListener
                public void onInitFailure(Exception exc) {
                    if (SinaWeiboOfficialAuth.this.listener != null) {
                        SinaWeiboOfficialAuth.this.listener.onError(exc);
                    }
                    SSDKLog b5 = SSDKLog.b();
                    b5.a("SinaWeiboShareOfficial", "WeiboInitFailure " + exc);
                }

                @Override // com.sina.weibo.sdk.openapi.SdkListener
                public void onInitSuccess() {
                    SinaWeibo.initFlag = true;
                    SinaWeiboOfficialAuth.this.loginManager();
                }
            });
        } catch (Throwable th) {
            SSDKLog b5 = SSDKLog.b();
            b5.a("SinaWeiboOfficialAuth", "onCreate AuthInfo " + th);
        }
        try {
            if (SinaWeibo.initFlag) {
                loginManager();
            }
            SSDKLog.b().a("SinaWeiboOfficialAuth onCreate loginManager() ");
        } catch (Throwable th2) {
            if (this.listener != null) {
                this.listener.onError(new Throwable("Authorize catch: " + th2));
            }
            SSDKLog b6 = SSDKLog.b();
            b6.a("SinaWeiboOfficialAuth onCreate catch: " + th2);
            finish();
        }
    }

    @Override // com.mob.tools.FakeActivity
    public void onDestroy() {
        super.onDestroy();
        SSDKLog.b().a("SinaWeiboOfficialAuth onDestroy");
    }

    @Override // com.mob.tools.FakeActivity
    public void onPause() {
        super.onPause();
        SSDKLog.b().a("SinaWeiboOfficialAuth onPause");
    }

    @Override // com.mob.tools.FakeActivity
    public void onResume() {
        super.onResume();
        SSDKLog.b().a("SinaWeiboOfficialAuth onResume");
    }

    @Override // com.mob.tools.FakeActivity
    public void onStop() {
        super.onStop();
        SSDKLog.b().a("SinaWeiboOfficialAuth onStop");
    }

    private String join(Object[] objArr, String str, int i2, int i4) {
        if (objArr == null) {
            return null;
        }
        if (str == null) {
            str = "";
        }
        int i5 = i4 - i2;
        if (i5 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i5 * 16);
        if (objArr[i2] != null) {
            sb.append(objArr[i2]);
        }
        while (true) {
            i2++;
            if (i2 < i4) {
                sb.append(str);
                if (objArr[i2] != null) {
                    sb.append(objArr[i2]);
                }
            } else {
                return sb.toString();
            }
        }
    }
}
