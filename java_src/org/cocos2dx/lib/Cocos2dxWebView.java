package org.cocos2dx.lib;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.KeyEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.papa91.arc.CContext;
import java.net.URI;
/* loaded from: classes5.dex */
public class Cocos2dxWebView extends WebView {
    private static final String TAG = Cocos2dxWebViewHelper.class.getSimpleName();
    private String mJSScheme;
    private int mViewTag;

    /* loaded from: classes5.dex */
    class Cocos2dxWebViewClient extends WebViewClient {
        Cocos2dxWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            Cocos2dxWebViewHelper._didFinishLoading(Cocos2dxWebView.this.mViewTag, str);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            super.onReceivedError(webView, i2, str, str2);
            Cocos2dxWebViewHelper._didFailLoading(Cocos2dxWebView.this.mViewTag, str2);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            URI create = URI.create(str);
            if (create == null || !create.getScheme().equals(Cocos2dxWebView.this.mJSScheme)) {
                return Cocos2dxWebViewHelper._shouldStartLoading(Cocos2dxWebView.this.mViewTag, str);
            }
            Cocos2dxWebViewHelper._onJsCallback(Cocos2dxWebView.this.mViewTag, str);
            return true;
        }
    }

    public Cocos2dxWebView(Context context) {
        this(context, -1);
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (4 == i2) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public void setJavascriptInterfaceScheme(String str) {
        if (str == null) {
            str = "";
        }
        this.mJSScheme = str;
    }

    public void setScalesPageToFit(boolean z3) {
        getSettings().setSupportZoom(z3);
    }

    public void setWebViewRect(int i2, int i4, int i5, int i6) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = i2;
        layoutParams.topMargin = i4;
        layoutParams.width = i5;
        layoutParams.height = i6;
        layoutParams.gravity = 51;
        setLayoutParams(layoutParams);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public Cocos2dxWebView(Context context, int i2) {
        super(context);
        this.mViewTag = i2;
        this.mJSScheme = "";
        setFocusable(true);
        setFocusableInTouchMode(true);
        getSettings().setSupportZoom(false);
        getSettings().setJavaScriptEnabled(true);
        try {
            getClass().getMethod("removeJavascriptInterface", String.class).invoke(this, "searchBoxJavaBridge_");
        } catch (Exception unused) {
        }
        setWebViewClient(new Cocos2dxWebViewClient());
        setWebChromeClient(new WebChromeClient());
        addJavascriptInterface(new WebJSPInterface(), CContext.SCENE_PSP);
    }
}
