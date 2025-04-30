package com.join.mgps.customview;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import java.io.File;
/* loaded from: classes3.dex */
public class LJWebView extends RelativeLayout {

    /* renamed from: p  reason: collision with root package name */
    public static int f45689p = 1;

    /* renamed from: q  reason: collision with root package name */
    public static int f45690q = 2;

    /* renamed from: r  reason: collision with root package name */
    public static final int f45691r = 43234;

    /* renamed from: a  reason: collision with root package name */
    private Context f45692a;

    /* renamed from: b  reason: collision with root package name */
    private WebView f45693b;

    /* renamed from: c  reason: collision with root package name */
    private ProgressBar f45694c;

    /* renamed from: d  reason: collision with root package name */
    private RelativeLayout f45695d;

    /* renamed from: e  reason: collision with root package name */
    private int f45696e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f45697f;

    /* renamed from: g  reason: collision with root package name */
    private int f45698g;

    /* renamed from: h  reason: collision with root package name */
    private String f45699h;

    /* renamed from: i  reason: collision with root package name */
    private View f45700i;

    /* renamed from: j  reason: collision with root package name */
    private View f45701j;

    /* renamed from: k  reason: collision with root package name */
    private b f45702k;

    /* renamed from: l  reason: collision with root package name */
    Activity f45703l;

    /* renamed from: m  reason: collision with root package name */
    ValueCallback<Uri> f45704m;

    /* renamed from: n  reason: collision with root package name */
    ValueCallback<Uri[]> f45705n;

    /* renamed from: o  reason: collision with root package name */
    private c f45706o;

    /* loaded from: classes3.dex */
    public interface b {
        void D(View view, WebChromeClient.CustomViewCallback customViewCallback, WebChromeClient webChromeClient);

        void U();

        void p0(String str);

        void q0();

        void s();
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a();
    }

    public LJWebView(Context context) {
        super(context);
        this.f45693b = null;
        this.f45694c = null;
        this.f45695d = null;
        this.f45696e = 4;
        this.f45697f = false;
        this.f45698g = f45690q;
        this.f45701j = null;
        this.f45692a = context;
        t();
    }

    private void t() {
        WebView webView = new WebView(this.f45692a);
        this.f45693b = webView;
        addView(webView, -1, -1);
        this.f45693b.setBackgroundColor(0);
        u();
        this.f45693b.setWebChromeClient(new a());
    }

    @TargetApi(21)
    private void x(int i2, int i4, Intent intent) {
        Uri[] uriArr;
        if (i2 != 43234 || this.f45705n == null) {
            return;
        }
        if (i4 != -1 || intent == null) {
            uriArr = null;
        } else {
            String dataString = intent.getDataString();
            ClipData clipData = intent.getClipData();
            if (clipData != null) {
                uriArr = new Uri[clipData.getItemCount()];
                for (int i5 = 0; i5 < clipData.getItemCount(); i5++) {
                    uriArr[i5] = clipData.getItemAt(i5).getUri();
                }
            } else {
                uriArr = null;
            }
            if (dataString != null) {
                uriArr = new Uri[]{Uri.parse(dataString)};
            }
        }
        this.f45705n.onReceiveValue(uriArr);
        this.f45705n = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("*/*");
        this.f45703l.startActivityForResult(Intent.createChooser(intent, "Image Chooser"), f45691r);
    }

    public WebView getWebView() {
        return this.f45693b;
    }

    public void q(int i2, int i4, Intent intent) {
        if (i2 == 43234) {
            if (this.f45704m == null && this.f45705n == null) {
                return;
            }
            Uri data = (intent == null || i4 != -1) ? null : intent.getData();
            if (this.f45705n != null) {
                x(i2, i4, intent);
                return;
            }
            ValueCallback<Uri> valueCallback = this.f45704m;
            if (valueCallback != null) {
                valueCallback.onReceiveValue(data);
                this.f45704m = null;
                return;
            }
            return;
        }
        ValueCallback<Uri> valueCallback2 = this.f45704m;
        if (valueCallback2 != null) {
            valueCallback2.onReceiveValue(null);
            this.f45704m = null;
            return;
        }
        ValueCallback<Uri[]> valueCallback3 = this.f45705n;
        if (valueCallback3 != null) {
            valueCallback3.onReceiveValue(null);
            this.f45705n = null;
        }
    }

    public void r(Object obj) {
        this.f45693b.addJavascriptInterface(obj, "papa");
    }

    public void s(Object obj) {
        this.f45693b.addJavascriptInterface(obj, "wufan");
    }

    public void setActivity(Activity activity) {
        this.f45703l = activity;
    }

    public void setBarHeight(int i2) {
        this.f45696e = i2;
    }

    public void setBuiltInZoomControls(boolean z3) {
        this.f45693b.getSettings().setBuiltInZoomControls(z3);
    }

    public void setCacheMode(int i2) {
        this.f45693b.getSettings().setCacheMode(i2);
    }

    @Override // android.view.View
    public void setClickable(boolean z3) {
        this.f45693b.setClickable(z3);
    }

    public void setJavaScriptEnabled(boolean z3) {
        this.f45693b.getSettings().setJavaScriptEnabled(z3);
    }

    public void setMethodListenter(b bVar) {
        this.f45702k = bVar;
    }

    public void setProgressStyle(int i2) {
        this.f45698g = i2;
    }

    public void setSupportZoom(boolean z3) {
        this.f45693b.getSettings().setSupportZoom(z3);
    }

    public void setUseWideViewPort(boolean z3) {
        this.f45693b.getSettings().setUseWideViewPort(z3);
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        this.f45693b.setWebViewClient(webViewClient);
        if (Build.VERSION.SDK_INT >= 11) {
            try {
                this.f45693b.removeJavascriptInterface("searchBoxJavaBredge_");
            } catch (Exception unused) {
            }
        }
    }

    public void setonShowFileChooser(c cVar) {
        this.f45706o = cVar;
    }

    public void u() {
        this.f45693b.getSettings().setDomStorageEnabled(true);
        this.f45693b.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        this.f45693b.getSettings().setAppCacheEnabled(true);
        this.f45699h = this.f45692a.getApplicationContext().getDir("cacheH5", 0).getPath();
        this.f45693b.getSettings().setAppCachePath(this.f45699h);
        this.f45693b.getSettings().setAllowFileAccess(true);
        this.f45693b.getSettings().setCacheMode(-1);
        this.f45693b.getSettings().setPluginState(WebSettings.PluginState.ON);
        this.f45693b.getSettings().setLoadWithOverviewMode(true);
        this.f45693b.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        this.f45693b.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.f45693b.getSettings().setTextZoom(100);
        this.f45693b.getSettings().setMediaPlaybackRequiresUserGesture(false);
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f45693b.getSettings().setSafeBrowsingEnabled(false);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void v(String str) {
        this.f45693b.loadData(str, "text/html", "utf-8");
    }

    public void w(String str) {
        this.f45693b.loadUrl(str);
    }

    public void z(Bundle bundle) {
        this.f45693b.saveState(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends WebChromeClient {

        /* renamed from: a  reason: collision with root package name */
        WebChromeClient.CustomViewCallback f45707a;

        a() {
        }

        public void a(ValueCallback<Uri> valueCallback) {
            LJWebView lJWebView = LJWebView.this;
            lJWebView.f45704m = valueCallback;
            lJWebView.y();
        }

        public void b(ValueCallback valueCallback, String str) {
            LJWebView lJWebView = LJWebView.this;
            lJWebView.f45704m = valueCallback;
            lJWebView.y();
        }

        public void c(ValueCallback<Uri> valueCallback, String str, String str2) {
            LJWebView lJWebView = LJWebView.this;
            lJWebView.f45704m = valueCallback;
            lJWebView.y();
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            if (LJWebView.this.f45701j == null) {
                LayoutInflater from = LayoutInflater.from(LJWebView.this.f45692a);
                LJWebView.this.f45701j = from.inflate(R.layout.video_loading_progress, (ViewGroup) null);
            }
            return LJWebView.this.f45701j;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            String message = consoleMessage.message();
            if (message != null && message.contains("Uncaught ReferenceError") && message.contains("papaBackPageUp") && LJWebView.this.f45702k != null) {
                LJWebView.this.f45702k.s();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(consoleMessage.message());
            sb.append(" -- From line ");
            sb.append(consoleMessage.lineNumber());
            sb.append(" of ");
            sb.append(consoleMessage.sourceId());
            return super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            if (LJWebView.this.f45700i == null) {
                return;
            }
            LJWebView.this.f45700i = null;
            try {
                WebChromeClient.CustomViewCallback customViewCallback = this.f45707a;
                if (customViewCallback != null) {
                    customViewCallback.onCustomViewHidden();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (LJWebView.this.f45702k != null) {
                LJWebView.this.f45702k.q0();
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i2) {
            super.onProgressChanged(webView, i2);
            if (i2 > 10 && LJWebView.this.f45702k != null) {
                LJWebView.this.f45702k.U();
            }
            if (i2 > 80) {
                if (LJWebView.this.f45698g == LJWebView.f45690q) {
                    if (LJWebView.this.f45694c != null) {
                        LJWebView.this.f45694c.setVisibility(8);
                    }
                } else if (LJWebView.this.f45695d != null) {
                    LJWebView.this.f45695d.setVisibility(8);
                }
            }
            if (i2 == 100) {
                if (LJWebView.this.f45698g == LJWebView.f45690q) {
                    if (LJWebView.this.f45694c != null) {
                        LJWebView.this.f45694c.setVisibility(8);
                        return;
                    }
                    return;
                } else if (LJWebView.this.f45695d != null) {
                    LJWebView.this.f45695d.setVisibility(8);
                    return;
                } else {
                    return;
                }
            }
            if (!LJWebView.this.f45697f) {
                if (LJWebView.this.f45698g == LJWebView.f45690q) {
                    LJWebView lJWebView = LJWebView.this;
                    lJWebView.f45694c = (ProgressBar) LayoutInflater.from(lJWebView.f45692a).inflate(R.layout.progress_horizontal, (ViewGroup) null);
                    LJWebView.this.f45694c.setMax(100);
                    LJWebView.this.f45694c.setProgress(0);
                    LJWebView lJWebView2 = LJWebView.this;
                    lJWebView2.addView(lJWebView2.f45694c, -1, LJWebView.this.f45696e);
                } else {
                    LJWebView lJWebView3 = LJWebView.this;
                    lJWebView3.f45695d = (RelativeLayout) LayoutInflater.from(lJWebView3.f45692a).inflate(R.layout.loding_layout, (ViewGroup) null);
                    LJWebView lJWebView4 = LJWebView.this;
                    lJWebView4.addView(lJWebView4.f45695d, -1, -1);
                }
                LJWebView.this.f45697f = true;
            }
            if (LJWebView.this.f45698g == LJWebView.f45690q) {
                LJWebView.this.f45694c.setVisibility(0);
                LJWebView.this.f45694c.setProgress(i2);
                return;
            }
            LJWebView.this.f45695d.setVisibility(0);
        }

        @Override // android.webkit.WebChromeClient
        public void onReachedMaxAppCacheSize(long j4, long j5, WebStorage.QuotaUpdater quotaUpdater) {
            try {
                UtilsMy.delete(new File(LJWebView.this.f45699h));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            super.onReachedMaxAppCacheSize(j4, j5, quotaUpdater);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            if (LJWebView.this.f45702k != null) {
                LJWebView.this.f45702k.p0(str);
            }
            super.onReceivedTitle(webView, str);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            try {
                if (LJWebView.this.f45700i != null) {
                    customViewCallback.onCustomViewHidden();
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            LJWebView.this.f45700i = view;
            this.f45707a = customViewCallback;
            if (LJWebView.this.f45702k != null) {
                LJWebView.this.f45702k.D(view, customViewCallback, this);
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            LJWebView lJWebView = LJWebView.this;
            lJWebView.f45705n = valueCallback;
            lJWebView.y();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, int i2, WebChromeClient.CustomViewCallback customViewCallback) {
            onShowCustomView(view, customViewCallback);
        }
    }

    public LJWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45693b = null;
        this.f45694c = null;
        this.f45695d = null;
        this.f45696e = 4;
        this.f45697f = false;
        this.f45698g = f45690q;
        this.f45701j = null;
        this.f45692a = context;
        t();
    }

    public LJWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45693b = null;
        this.f45694c = null;
        this.f45695d = null;
        this.f45696e = 4;
        this.f45697f = false;
        this.f45698g = f45690q;
        this.f45701j = null;
        this.f45692a = context;
        t();
    }
}
