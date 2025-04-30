package com.androidquery.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Picture;
import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* loaded from: classes2.dex */
public class WebImage extends WebViewClient {
    private static final String DOUBLE_TAP_TOAST_COUNT = "double_tap_toast_count";
    private static final String PREF_FILE = "WebViewSettings";
    private static String template;
    private int color;
    private boolean control;
    private Object progress;
    private String url;
    private WebView wv;
    private boolean zoom;

    public WebImage(WebView webView, String str, Object obj, boolean z3, boolean z4, int i2) {
        this.wv = webView;
        this.url = str;
        this.progress = obj;
        this.zoom = z3;
        this.control = z4;
        this.color = i2;
    }

    private void delaySetup() {
        this.wv.setPictureListener(new WebView.PictureListener() { // from class: com.androidquery.util.WebImage.1
            @Override // android.webkit.WebView.PictureListener
            public void onNewPicture(WebView webView, Picture picture) {
                WebImage.this.wv.setPictureListener(null);
                WebImage.this.setup();
            }
        });
        this.wv.loadData("<html></html>", "text/html", "utf-8");
        this.wv.setBackgroundColor(this.color);
    }

    private static void disableZoomControl(WebView webView) {
        if (Build.VERSION.SDK_INT < 11) {
            return;
        }
        AQUtility.invokeHandler(webView.getSettings(), "setDisplayZoomControls", false, false, new Class[]{Boolean.TYPE}, Boolean.FALSE);
    }

    private void done(WebView webView) {
        if (this.progress != null) {
            webView.setVisibility(0);
            Common.showProgress(this.progress, this.url, false);
        }
        webView.setWebViewClient(null);
    }

    private static void fixWebviewTip(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREF_FILE, 0);
        if (sharedPreferences.getInt(DOUBLE_TAP_TOAST_COUNT, 1) > 0) {
            sharedPreferences.edit().putInt(DOUBLE_TAP_TOAST_COUNT, 0).commit();
        }
    }

    private static String getSource(Context context) {
        if (template == null) {
            try {
                template = new String(AQUtility.toBytes(context.getClassLoader().getResourceAsStream("com/androidquery/util/web_image.html")));
            } catch (Exception e4) {
                AQUtility.debug((Throwable) e4);
            }
        }
        return template;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setup() {
        String replace = getSource(this.wv.getContext()).replace("@src", this.url).replace("@color", Integer.toHexString(this.color));
        this.wv.setWebViewClient(this);
        this.wv.loadDataWithBaseURL(null, replace, "text/html", "utf-8", null);
        this.wv.setBackgroundColor(this.color);
    }

    public void load() {
        if (this.url.equals(this.wv.getTag(Constants.TAG_URL))) {
            return;
        }
        this.wv.setTag(Constants.TAG_URL, this.url);
        if (Build.VERSION.SDK_INT <= 10) {
            this.wv.setDrawingCacheEnabled(true);
        }
        fixWebviewTip(this.wv.getContext());
        WebSettings settings = this.wv.getSettings();
        settings.setSupportZoom(this.zoom);
        settings.setBuiltInZoomControls(this.zoom);
        if (!this.control) {
            disableZoomControl(this.wv);
        }
        settings.setJavaScriptEnabled(true);
        this.wv.setBackgroundColor(this.color);
        Object obj = this.progress;
        if (obj != null) {
            Common.showProgress(obj, this.url, true);
        }
        if (this.wv.getWidth() > 0) {
            setup();
        } else {
            delaySetup();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        done(webView);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        done(webView);
    }

    @Override // android.webkit.WebViewClient
    public void onScaleChanged(WebView webView, float f4, float f5) {
    }
}
