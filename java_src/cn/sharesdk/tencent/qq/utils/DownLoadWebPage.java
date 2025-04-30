package cn.sharesdk.tencent.qq.utils;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.m;
import com.mob.tools.FakeActivity;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public class DownLoadWebPage extends FakeActivity {
    private SSOListener listener;
    private LinearLayout mainlayout;
    private WebView webView;
    private String url = "http://qzs.qq.com/open/mobile/login/qzsjump.html?sdkv=3.3.0.lite&display=mobile";
    private String downLoadUrl = "http://app.qq.com/detail/com.tencent.mobileqq?autodownload=1&norecommend=1&rootvia=opensdk";

    private void initPage(Activity activity) {
        initView();
        this.webView.setWebViewClient(new WebViewClient() { // from class: cn.sharesdk.tencent.qq.utils.DownLoadWebPage.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str != null) {
                    try {
                        if (str.startsWith("download://")) {
                            DownLoadWebPage.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(DownLoadWebPage.this.downLoadUrl)));
                            return true;
                        }
                    } catch (Throwable th) {
                        SSDKLog.b().a(th);
                        DownLoadWebPage.this.listener.onFailed(th);
                        DownLoadWebPage.this.listener = null;
                        DownLoadWebPage.this.finishOnSuccess();
                    }
                }
                return false;
            }
        });
        this.webView.loadUrl(this.url);
    }

    private void initView() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.mainlayout = linearLayout;
        linearLayout.setOrientation(1);
        new LinearLayout.LayoutParams(-1, -1);
        this.webView = new WebView(getContext());
        this.mainlayout.addView(this.webView, new LinearLayout.LayoutParams(-1, 0, 11.0f));
        initWebView();
    }

    private void initWebView() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 > 10 && i2 < 17) {
            try {
                Method method = this.webView.getClass().getMethod("removeJavascriptInterface", String.class);
                method.setAccessible(true);
                method.invoke(this.webView, "searchBoxJavaBridge_");
                method.invoke(this.webView, "accessibility");
                method.invoke(this.webView, "accessibilityTraversal");
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        }
        WebSettings settings = this.webView.getSettings();
        settings.setCacheMode(2);
        settings.setUseWideViewPort(true);
        settings.setJavaScriptEnabled(true);
        this.webView.setVerticalScrollBarEnabled(false);
        this.webView.setHorizontalScrollBarEnabled(false);
        m.a(this.webView, false);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
    }

    public void finishOnSuccess() {
        finish();
    }

    @Override // com.mob.tools.FakeActivity
    public void onCreate() {
        this.activity.getWindow().setBackgroundDrawable(new ColorDrawable(-1));
        initPage(this.activity);
        this.activity.setContentView(this.mainlayout);
    }

    @Override // com.mob.tools.FakeActivity
    public boolean onKeyEvent(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && keyEvent.getAction() == 1) {
            WebView webView = this.webView;
            if (webView != null && webView.canGoBack()) {
                this.webView.goBack();
            } else {
                this.listener.onCancel();
                this.listener = null;
                finishOnSuccess();
            }
            return true;
        }
        return super.onKeyEvent(i2, keyEvent);
    }

    public void setListener(SSOListener sSOListener) {
        this.listener = sSOListener;
    }
}
