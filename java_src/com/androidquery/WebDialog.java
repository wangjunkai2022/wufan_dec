package com.androidquery;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.androidquery.util.AQUtility;
/* loaded from: classes2.dex */
public class WebDialog extends Dialog {
    private WebViewClient client;
    private LinearLayout ll;
    private String message;
    private String url;
    private WebView wv;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class DialogWebViewClient extends WebViewClient {
        private DialogWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            WebDialog.this.showProgress(false);
            WebDialog.this.client.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebDialog.this.client.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            WebDialog.this.client.onReceivedError(webView, i2, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return WebDialog.this.client.shouldOverrideUrlLoading(webView, str);
        }

        /* synthetic */ DialogWebViewClient(WebDialog webDialog, DialogWebViewClient dialogWebViewClient) {
            this();
        }
    }

    public WebDialog(Context context, String str, WebViewClient webViewClient) {
        super(context, 16973830);
        this.url = str;
        this.client = webViewClient;
    }

    private void setupProgress(RelativeLayout relativeLayout) {
        Context context = getContext();
        this.ll = new LinearLayout(context);
        ProgressBar progressBar = new ProgressBar(context);
        int dip2pixel = AQUtility.dip2pixel(context, 30.0f);
        this.ll.addView(progressBar, new LinearLayout.LayoutParams(dip2pixel, dip2pixel));
        if (this.message != null) {
            TextView textView = new TextView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.leftMargin = AQUtility.dip2pixel(context, 5.0f);
            layoutParams.gravity = 16;
            textView.setText(this.message);
            this.ll.addView(textView, layoutParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        relativeLayout.addView(this.ll, layoutParams2);
    }

    private void setupWebView(RelativeLayout relativeLayout) {
        WebView webView = new WebView(getContext());
        this.wv = webView;
        webView.setVerticalScrollBarEnabled(false);
        this.wv.setHorizontalScrollBarEnabled(false);
        if (this.client == null) {
            this.client = new WebViewClient();
        }
        this.wv.setWebViewClient(new DialogWebViewClient(this, null));
        this.wv.getSettings().setJavaScriptEnabled(true);
        relativeLayout.addView(this.wv, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showProgress(boolean z3) {
        LinearLayout linearLayout = this.ll;
        if (linearLayout != null) {
            if (z3) {
                linearLayout.setVisibility(0);
            } else {
                linearLayout.setVisibility(8);
            }
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception unused) {
        }
    }

    public void load() {
        WebView webView = this.wv;
        if (webView != null) {
            webView.loadUrl(this.url);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setBackgroundColor(-1);
        setupWebView(relativeLayout);
        setupProgress(relativeLayout);
        addContentView(relativeLayout, new FrameLayout.LayoutParams(-1, -1));
    }

    public void setLoadingMessage(String str) {
        this.message = str;
    }
}
