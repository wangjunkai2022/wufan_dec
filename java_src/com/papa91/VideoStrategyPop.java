package com.papa91;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.mgsim.common.R;
/* loaded from: classes4.dex */
public class VideoStrategyPop extends PopupWindow {
    private Activity context;
    private Handler handler;
    @SuppressLint({"HandlerLeak"})
    private Handler handlerTime;
    private VideoPopListener mVideoPopListener;
    private ImageView popCloseIv;
    private TextView popTimeTv;
    private int times;
    private String url;
    private WebView web;

    /* loaded from: classes4.dex */
    public interface VideoPopListener {
        void onClose();
    }

    public VideoStrategyPop(Activity activity, int i2, String str, VideoPopListener videoPopListener) {
        super(activity);
        this.handler = new Handler();
        this.handlerTime = new Handler() { // from class: com.papa91.VideoStrategyPop.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                VideoStrategyPop.access$020(VideoStrategyPop.this, 1);
                if (VideoStrategyPop.this.times < 0) {
                    VideoStrategyPop.this.popTimeTv.setVisibility(8);
                    VideoStrategyPop.this.popCloseIv.setVisibility(0);
                    return;
                }
                TextView textView = VideoStrategyPop.this.popTimeTv;
                textView.setText(VideoStrategyPop.this.times + "");
                VideoStrategyPop.this.handlerTime.sendEmptyMessageDelayed(1, 1000L);
            }
        };
        this.context = activity;
        this.url = str;
        setHeight(-1);
        setWidth(-1);
        setOutsideTouchable(false);
        setFocusable(false);
        setBackgroundDrawable(new ColorDrawable(0));
        View inflate = LayoutInflater.from(activity).inflate(R.layout.dialog_video_strategy_view, (ViewGroup) null, false);
        inflate.setOnKeyListener(new View.OnKeyListener() { // from class: com.papa91.VideoStrategyPop.2
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i4, KeyEvent keyEvent) {
                return true;
            }
        });
        this.times = i2;
        this.mVideoPopListener = videoPopListener;
        this.web = (WebView) inflate.findViewById(R.id.web);
        this.popCloseIv = (ImageView) inflate.findViewById(R.id.popCloseIv);
        TextView textView = (TextView) inflate.findViewById(R.id.popTimeTv);
        this.popTimeTv = textView;
        textView.setText(i2 + "");
        this.popCloseIv.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.VideoStrategyPop.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoStrategyPop.this.dismiss();
                if (VideoStrategyPop.this.mVideoPopListener != null) {
                    VideoStrategyPop.this.mVideoPopListener.onClose();
                }
            }
        });
        setContentView(inflate);
        setWeb();
    }

    static /* synthetic */ int access$020(VideoStrategyPop videoStrategyPop, int i2) {
        int i4 = videoStrategyPop.times - i2;
        videoStrategyPop.times = i4;
        return i4;
    }

    private void setWeb() {
        this.web.getSettings().setJavaScriptEnabled(true);
        this.web.setWebViewClient(new WebViewClient() { // from class: com.papa91.VideoStrategyPop.4
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                VideoStrategyPop.this.handlerTime.sendEmptyMessageDelayed(1, 1000L);
                webView.loadUrl("javascript:onPageFinished();");
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                sslErrorHandler.proceed();
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                webView.loadUrl(str);
                return true;
            }
        });
        this.web.addJavascriptInterface(this, "yqw");
        this.web.setWebChromeClient(new WebChromeClient() { // from class: com.papa91.VideoStrategyPop.5
            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                super.onShowCustomView(view, customViewCallback);
            }
        });
        this.web.loadUrl("file:///android_asset/h5video.html?videoUrl=" + this.url);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        WebView webView = this.web;
        if (webView != null) {
            webView.destroy();
        }
        super.dismiss();
    }

    public void onMyPause() {
        WebView webView = this.web;
        if (webView != null) {
            webView.onPause();
            this.web.loadUrl("javascript:onPagePause();");
        }
    }

    public void onMyResume() {
        WebView webView = this.web;
        if (webView != null) {
            webView.onResume();
            this.web.loadUrl("javascript:onPageFinished();");
        }
    }

    @JavascriptInterface
    public void videoEndFunction() {
        this.handler.postDelayed(new Runnable() { // from class: com.papa91.VideoStrategyPop.6
            @Override // java.lang.Runnable
            public void run() {
                VideoStrategyPop.this.handlerTime.removeMessages(1);
                VideoStrategyPop.this.popTimeTv.setVisibility(8);
                VideoStrategyPop.this.popCloseIv.setVisibility(0);
            }
        }, 1000L);
    }
}
