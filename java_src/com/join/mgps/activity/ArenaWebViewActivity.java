package com.join.mgps.activity;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LJWebView;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.arena_web)
/* loaded from: classes3.dex */
public class ArenaWebViewActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    LJWebView f28394a;
    @Extra

    /* renamed from: b  reason: collision with root package name */
    String f28395b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b extends WebViewClient {
        private b() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            webView.getSettings().setBlockNetworkImage(false);
        }
    }

    void E0(String str) {
        this.f28394a.setClickable(true);
        this.f28394a.setUseWideViewPort(true);
        this.f28394a.setSupportZoom(false);
        this.f28394a.setBuiltInZoomControls(false);
        this.f28394a.setJavaScriptEnabled(true);
        this.f28394a.setCacheMode(2);
        this.f28394a.w(str);
        this.f28394a.setVisibility(0);
        this.f28394a.setWebViewClient(new b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        E0(this.f28395b);
    }
}
