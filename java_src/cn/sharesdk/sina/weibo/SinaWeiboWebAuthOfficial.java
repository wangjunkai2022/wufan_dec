package cn.sharesdk.sina.weibo;

import android.os.Bundle;
import android.widget.LinearLayout;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.FakeActivity;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.WbAuthListener;
import com.sina.weibo.sdk.common.UiError;
import com.sina.weibo.sdk.openapi.IWBAPI;
import com.sina.weibo.sdk.openapi.SdkListener;
import com.sina.weibo.sdk.openapi.WBAPIFactory;
/* loaded from: classes2.dex */
public class SinaWeiboWebAuthOfficial extends FakeActivity {
    private String appkey;
    private IWBAPI iwbapi;
    private AuthorizeListener listener;
    private String permissions;
    private String redirectUrl;

    public SinaWeiboWebAuthOfficial(String str, String str2, String str3, AuthorizeListener authorizeListener) {
        this.appkey = str;
        this.redirectUrl = str2;
        this.permissions = str3;
        this.listener = authorizeListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loginManager() {
        SSDKLog.b().a("SinaWeiboWebAuthOfficial onCreate ");
        IWBAPI iwbapi = this.iwbapi;
        if (iwbapi != null) {
            iwbapi.authorizeWeb(this.activity, new WbAuthListener() { // from class: cn.sharesdk.sina.weibo.SinaWeiboWebAuthOfficial.2
                @Override // com.sina.weibo.sdk.auth.WbAuthListener
                public void onCancel() {
                    SinaWeiboWebAuthOfficial.this.listener.onCancel();
                    SinaWeiboWebAuthOfficial.this.finish();
                }

                @Override // com.sina.weibo.sdk.auth.WbAuthListener
                public void onComplete(Oauth2AccessToken oauth2AccessToken) {
                    Bundle bundle = new Bundle();
                    bundle.putString("access_token", oauth2AccessToken.getAccessToken());
                    bundle.putString("expires_in", String.valueOf(oauth2AccessToken.getExpiresTime()));
                    bundle.putString("refresh_token", oauth2AccessToken.getRefreshToken());
                    bundle.putString("username", oauth2AccessToken.getScreenName());
                    bundle.putString("uid", oauth2AccessToken.getUid());
                    SinaWeiboWebAuthOfficial.this.listener.onComplete(bundle);
                    SinaWeiboWebAuthOfficial.this.finish();
                }

                @Override // com.sina.weibo.sdk.auth.WbAuthListener
                public void onError(UiError uiError) {
                    SinaWeiboWebAuthOfficial.this.listener.onError(new Throwable("errorCode: " + uiError.errorCode + " errorMessage: " + uiError.errorMessage + " errorDetail: " + uiError.errorDetail));
                    SinaWeiboWebAuthOfficial.this.finish();
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

    @Override // com.mob.tools.FakeActivity
    public void onCreate() {
        super.onCreate();
        SSDKLog.b().a("SinaWeiboWebAuthOfficial onCreate ");
        try {
            LinearLayout linearLayout = new LinearLayout(this.activity);
            linearLayout.setOrientation(1);
            this.activity.setContentView(linearLayout);
        } catch (Exception e4) {
            SSDKLog.b().a(e4);
            SSDKLog b4 = SSDKLog.b();
            b4.a("SinaWeiboOfficialAuth onCreate exception " + e4.getMessage());
        }
        try {
            AuthInfo authInfo = new AuthInfo(this.activity, this.appkey, this.redirectUrl, this.permissions);
            IWBAPI createWBAPI = WBAPIFactory.createWBAPI(this.activity);
            this.iwbapi = createWBAPI;
            createWBAPI.registerApp(this.activity, authInfo, new SdkListener() { // from class: cn.sharesdk.sina.weibo.SinaWeiboWebAuthOfficial.1
                @Override // com.sina.weibo.sdk.openapi.SdkListener
                public void onInitFailure(Exception exc) {
                    if (SinaWeiboWebAuthOfficial.this.listener != null) {
                        SinaWeiboWebAuthOfficial.this.listener.onError(exc);
                    }
                    SSDKLog b5 = SSDKLog.b();
                    b5.a("SinaWeiboShareOfficial", "WeiboInitFailure " + exc);
                }

                @Override // com.sina.weibo.sdk.openapi.SdkListener
                public void onInitSuccess() {
                    SinaWeibo.initFlag = true;
                    SinaWeiboWebAuthOfficial.this.loginManager();
                }
            });
        } catch (Throwable th) {
            SSDKLog b5 = SSDKLog.b();
            b5.a("SinaWeiboWebAuthOfficial", "onCreate AuthInfo " + th);
            AuthorizeListener authorizeListener = this.listener;
            if (authorizeListener != null && authorizeListener != null) {
                authorizeListener.onError(new Throwable("SinaWeibo SDK init failed"));
            }
            finish();
        }
        try {
            if (SinaWeibo.initFlag) {
                loginManager();
            }
            SSDKLog.b().a("SinaWeiboWebAuthOfficial onCreate loginManager() ");
        } catch (Throwable th2) {
            if (this.listener != null) {
                this.listener.onError(new Throwable("Authorize catch: " + th2));
            }
            SSDKLog b6 = SSDKLog.b();
            b6.a("SinaWeiboWebAuthOfficial onCreate catch: " + th2);
            finish();
        }
    }

    @Override // com.mob.tools.FakeActivity
    public void onDestroy() {
        super.onDestroy();
        SSDKLog.b().a("SinaWeiboWebAuthOfficial onDestroy");
    }

    @Override // com.mob.tools.FakeActivity
    public void onPause() {
        super.onPause();
        SSDKLog.b().a("SinaWeiboWebAuthOfficial onPause");
    }

    @Override // com.mob.tools.FakeActivity
    public void onResume() {
        super.onResume();
        SSDKLog.b().a("SinaWeiboWebAuthOfficial onResume");
    }

    @Override // com.mob.tools.FakeActivity
    public void onStop() {
        super.onStop();
        SSDKLog.b().a("SinaWeiboWebAuthOfficial onStop");
    }
}
