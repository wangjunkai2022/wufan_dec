package cn.sharesdk.sina.weibo.utils;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.FakeActivity;
import com.mob.tools.RxMob;
import com.mob.tools.network.KVPair;
import com.mob.tools.utils.ResHelper;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class WebSharePage extends FakeActivity implements View.OnClickListener {
    private static final String SHARE_URL = "http://service.weibo.com/share/mobilesdk.php";
    private static final String UPLOAD_PIC_URL = "http://service.weibo.com/share/mobilesdk_uppic.php";
    private AuthorizeListener actionListener;
    private String appKey;
    private Button btnRetry;
    private cn.sharesdk.sina.weibo.sdk.a.a layout;
    private LinearLayout llRetry;
    private int pageStatus;
    private Platform.ShareParams params;
    private String token;
    private TextView tvBack;
    private WebView webView;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0062 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0063 A[Catch: all -> 0x00e0, TryCatch #0 {all -> 0x00e0, blocks: (B:3:0x0005, B:5:0x000d, B:7:0x0019, B:13:0x0042, B:15:0x004e, B:17:0x0051, B:19:0x005c, B:22:0x0063, B:25:0x00a8, B:27:0x00b3, B:29:0x00b9, B:32:0x00c0, B:34:0x00d8, B:9:0x0026, B:11:0x0032), top: B:41:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getPicId() {
        /*
            r11 = this;
            java.lang.String r0 = "data"
            java.lang.String r1 = "code"
            r2 = 0
            cn.sharesdk.framework.Platform$ShareParams r3 = r11.params     // Catch: java.lang.Throwable -> Le0
            android.graphics.Bitmap r3 = r3.getImageData()     // Catch: java.lang.Throwable -> Le0
            if (r3 != 0) goto L24
            cn.sharesdk.framework.Platform$ShareParams r4 = r11.params     // Catch: java.lang.Throwable -> Le0
            java.lang.String r4 = r4.getImagePath()     // Catch: java.lang.Throwable -> Le0
            boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> Le0
            if (r4 != 0) goto L24
            cn.sharesdk.framework.Platform$ShareParams r3 = r11.params     // Catch: java.lang.Throwable -> Le0
            java.lang.String r3 = r3.getImagePath()     // Catch: java.lang.Throwable -> Le0
            android.graphics.Bitmap r3 = com.mob.tools.utils.BitmapHelper.getBitmap(r3)     // Catch: java.lang.Throwable -> Le0
            goto L40
        L24:
            if (r3 != 0) goto L40
            cn.sharesdk.framework.Platform$ShareParams r4 = r11.params     // Catch: java.lang.Throwable -> Le0
            java.lang.String r4 = r4.getImageUrl()     // Catch: java.lang.Throwable -> Le0
            boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> Le0
            if (r4 != 0) goto L40
            android.content.Context r3 = r11.getContext()     // Catch: java.lang.Throwable -> Le0
            cn.sharesdk.framework.Platform$ShareParams r4 = r11.params     // Catch: java.lang.Throwable -> Le0
            java.lang.String r4 = r4.getImageUrl()     // Catch: java.lang.Throwable -> Le0
            android.graphics.Bitmap r3 = com.mob.tools.utils.BitmapHelper.getBitmap(r3, r4)     // Catch: java.lang.Throwable -> Le0
        L40:
            if (r3 == 0) goto L5b
            com.sina.weibo.sdk.api.ImageObject r4 = new com.sina.weibo.sdk.api.ImageObject     // Catch: java.lang.Throwable -> Le0
            r4.<init>()     // Catch: java.lang.Throwable -> Le0
            r4.setImageData(r3)     // Catch: java.lang.Throwable -> Le0
            byte[] r3 = r4.imageData     // Catch: java.lang.Throwable -> Le0
            if (r3 == 0) goto L5b
            int r4 = r3.length     // Catch: java.lang.Throwable -> Le0
            if (r4 <= 0) goto L5b
            java.lang.String r4 = new java.lang.String     // Catch: java.lang.Throwable -> Le0
            byte[] r3 = cn.sharesdk.sina.weibo.sdk.a.a(r3)     // Catch: java.lang.Throwable -> Le0
            r4.<init>(r3)     // Catch: java.lang.Throwable -> Le0
            goto L5c
        L5b:
            r4 = r2
        L5c:
            boolean r3 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> Le0
            if (r3 == 0) goto L63
            return r2
        L63:
            com.mob.tools.network.NetworkHelper r5 = new com.mob.tools.network.NetworkHelper     // Catch: java.lang.Throwable -> Le0
            r5.<init>()     // Catch: java.lang.Throwable -> Le0
            java.util.ArrayList r7 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Le0
            r7.<init>()     // Catch: java.lang.Throwable -> Le0
            com.mob.tools.network.KVPair r3 = new com.mob.tools.network.KVPair     // Catch: java.lang.Throwable -> Le0
            java.lang.String r6 = "img"
            r3.<init>(r6, r4)     // Catch: java.lang.Throwable -> Le0
            r7.add(r3)     // Catch: java.lang.Throwable -> Le0
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Le0
            r8 = 1000(0x3e8, double:4.94E-321)
            long r3 = r3 / r8
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> Le0
            com.mob.tools.network.KVPair r4 = new com.mob.tools.network.KVPair     // Catch: java.lang.Throwable -> Le0
            java.lang.String r6 = "oauth_timestamp"
            r4.<init>(r6, r3)     // Catch: java.lang.Throwable -> Le0
            r7.add(r4)     // Catch: java.lang.Throwable -> Le0
            java.lang.String r3 = r11.token     // Catch: java.lang.Throwable -> Le0
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> Le0
            java.lang.String r3 = r11.appKey     // Catch: java.lang.Throwable -> Le0
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> Le0
            java.lang.String r6 = "http://service.weibo.com/share/mobilesdk_uppic.php"
            r8 = 0
            r9 = 0
            r10 = 0
            java.lang.String r3 = r5.httpPost(r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> Le0
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> Le0
            if (r4 == 0) goto La8
            return r2
        La8:
            com.mob.tools.utils.Hashon r4 = new com.mob.tools.utils.Hashon     // Catch: java.lang.Throwable -> Le0
            r4.<init>()     // Catch: java.lang.Throwable -> Le0
            java.util.HashMap r3 = r4.fromJson(r3)     // Catch: java.lang.Throwable -> Le0
            if (r3 == 0) goto Ldf
            boolean r4 = r3.containsKey(r1)     // Catch: java.lang.Throwable -> Le0
            if (r4 == 0) goto Ldf
            boolean r4 = r3.containsKey(r0)     // Catch: java.lang.Throwable -> Le0
            if (r4 != 0) goto Lc0
            goto Ldf
        Lc0:
            java.lang.Object r1 = r3.get(r1)     // Catch: java.lang.Throwable -> Le0
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> Le0
            java.lang.Object r0 = r3.get(r0)     // Catch: java.lang.Throwable -> Le0
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: java.lang.Throwable -> Le0
            java.lang.String r3 = "1"
            boolean r1 = r3.equals(r1)     // Catch: java.lang.Throwable -> Le0
            if (r1 == 0) goto Ldf
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Le0
            if (r1 != 0) goto Ldf
            return r0
        Ldf:
            return r2
        Le0:
            r0 = move-exception
            cn.sharesdk.framework.utils.SSDKLog r1 = cn.sharesdk.framework.utils.SSDKLog.b()
            r1.a(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.sharesdk.sina.weibo.utils.WebSharePage.getPicId():java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getReqUrl(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new KVPair("title", this.params.getText()));
        arrayList.add(new KVPair("source", this.appKey));
        arrayList.add(new KVPair("access_token", this.token));
        arrayList.add(new KVPair("packagename", this.activity.getPackageName()));
        arrayList.add(new KVPair("picinfo", str));
        arrayList.add(new KVPair("luicode", "10000360"));
        arrayList.add(new KVPair("key_hash", cn.sharesdk.sina.weibo.sdk.a.a(getContext(), this.activity.getPackageName())));
        arrayList.add(new KVPair("lfid", "OP_" + this.appKey));
        arrayList.add(new KVPair("version", "0041005000"));
        return "http://service.weibo.com/share/mobilesdk.php?" + ResHelper.encodeUrl(arrayList);
    }

    private void initView() {
        this.tvBack = this.layout.b();
        this.webView = this.layout.c();
        this.llRetry = this.layout.d();
        this.btnRetry = this.layout.a();
        this.tvBack.setOnClickListener(this);
        this.btnRetry.setOnClickListener(this);
        if (ShareSDK.isRemoveCookieOnAuthorize()) {
            CookieSyncManager.createInstance(this.activity);
            CookieManager.getInstance().removeAllCookie();
        }
        this.webView.setWebViewClient(new WebViewClient() { // from class: cn.sharesdk.sina.weibo.utils.WebSharePage.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                if (WebSharePage.this.pageStatus == -1) {
                    WebSharePage.this.llRetry.setVisibility(0);
                    WebSharePage.this.webView.setVisibility(8);
                }
                WebSharePage.this.pageStatus = 0;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i2, String str, String str2) {
                super.onReceivedError(webView, i2, str, str2);
                String url = webView.getUrl();
                if (TextUtils.isEmpty(url) || TextUtils.isEmpty(str2)) {
                    return;
                }
                Uri parse = Uri.parse(url);
                Uri parse2 = Uri.parse(str2);
                if (parse.getHost().equals(parse2.getHost()) && parse.getScheme().equals(parse2.getScheme())) {
                    WebSharePage.this.pageStatus = -1;
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str.startsWith("sinaweibo://browser/close")) {
                    if (WebSharePage.this.actionListener != null) {
                        WebSharePage.this.reCode(str);
                        return true;
                    }
                    return true;
                }
                return false;
            }
        });
        loadWebView();
    }

    private String loadWebView() {
        RxMob.Subscribable create = RxMob.create(new RxMob.OnSubscribe<String>() { // from class: cn.sharesdk.sina.weibo.utils.WebSharePage.2
            @Override // com.mob.tools.RxMob.OnSubscribe
            public void call(RxMob.Subscriber<String> subscriber) {
                subscriber.onNext(WebSharePage.this.getPicId());
            }
        });
        create.subscribeOn(RxMob.Thread.NEW_THREAD);
        create.observeOn(RxMob.Thread.UI_THREAD);
        create.subscribe(new RxMob.Subscriber<String>() { // from class: cn.sharesdk.sina.weibo.utils.WebSharePage.3
            @Override // com.mob.tools.RxMob.Subscriber
            public void onCompleted() {
                super.onCompleted();
            }

            @Override // com.mob.tools.RxMob.Subscriber
            public void onError(Throwable th) {
                SSDKLog.b().b(th);
                WebSharePage.this.webView.loadUrl(WebSharePage.this.getReqUrl(null));
            }

            @Override // com.mob.tools.RxMob.Subscriber
            public void onStart() {
                super.onStart();
            }

            @Override // com.mob.tools.RxMob.Subscriber
            public void onNext(String str) {
                WebSharePage.this.webView.loadUrl(WebSharePage.this.getReqUrl(str));
            }
        });
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reCode(String str) {
        Bundle urlToBundle = ResHelper.urlToBundle(str);
        String string = urlToBundle.getString("code");
        String string2 = urlToBundle.getString("msg");
        if (this.actionListener != null) {
            if (TextUtils.isEmpty(string)) {
                this.actionListener.onCancel();
            } else if ("0".equals(string)) {
                this.actionListener.onComplete(urlToBundle);
            } else {
                this.actionListener.onError(new Throwable(string2));
            }
        }
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.tvBack) {
            AuthorizeListener authorizeListener = this.actionListener;
            if (authorizeListener != null) {
                authorizeListener.onCancel();
            }
            finish();
        } else if (view == this.btnRetry) {
            this.llRetry.setVisibility(8);
            this.webView.setVisibility(0);
            loadWebView();
        }
    }

    @Override // com.mob.tools.FakeActivity
    public void onCreate() {
        this.layout = new cn.sharesdk.sina.weibo.sdk.a.a(getContext());
        this.activity.setContentView(this.layout.a(ResHelper.getStringRes(getContext(), "ssdk_sina_web_title")));
        initView();
    }

    @Override // com.mob.tools.FakeActivity
    public void onDestroy() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.setFocusable(false);
        }
    }

    @Override // com.mob.tools.FakeActivity
    public boolean onFinish() {
        if (this.actionListener != null) {
            this.actionListener = null;
        }
        return super.onFinish();
    }

    @Override // com.mob.tools.FakeActivity
    public boolean onKeyEvent(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getAction() == 0) {
            AuthorizeListener authorizeListener = this.actionListener;
            if (authorizeListener != null) {
                authorizeListener.onCancel();
            }
            finish();
            return true;
        }
        return false;
    }

    public void setAppKey(String str, String str2) {
        this.appKey = str;
        this.token = str2;
    }

    public void setListener(AuthorizeListener authorizeListener) {
        this.actionListener = authorizeListener;
    }

    public void setShareParams(Platform.ShareParams shareParams) {
        this.params = shareParams;
    }
}
