package com.heepay.plugin.activity;

import android.os.Bundle;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.alipay.sdk.cons.b;
import com.facebook.common.util.f;
import com.heepay.plugin.activity.logic.LogicHyNotityActivity;
import com.heepay.plugin.b.a;
import com.heepay.plugin.c.c;
import com.heepay.plugin.domain.e;
import com.join.mgps.dto.Constant;
import com.tencent.stat.DeviceInfo;
import java.util.Timer;
/* loaded from: classes2.dex */
public class HyNotityActivity extends LogicHyNotityActivity {
    protected void a() {
        this.f16752v = new LogicHyNotityActivity.a(this);
        this.f16741e = a.c();
        Bundle extras = getIntent().getExtras();
        this.f16737a = extras.getString(b.f9718c);
        this.f16738b = extras.getInt(DeviceInfo.TAG_ANDROID_ID);
        this.f16739c = extras.getString("bn");
        this.f16742f = extras.getString(Constant.PAY_TYPE);
        i();
        if (this.f16737a.startsWith(f.f11765a)) {
            WebView webView = this.f16751u;
            webView.loadUrl(this.f16737a + "&phoneInfo=" + e.a().c(this));
        }
        if (a(this.f16737a, this.f16738b, this.f16739c, this.f16742f)) {
            return;
        }
        if (this.f16737a.indexOf("_") != -1) {
            String str = this.f16737a;
            this.f16740d = str.substring(0, str.lastIndexOf("_"));
        }
        j();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c.a("-----------onCreate------------");
        a();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        c.a("-----------onDestroy------------");
        super.onDestroy();
        h();
        WebView webView = this.f16751u;
        if (webView != null) {
            webView.stopLoading();
            ((ViewGroup) this.f16751u.getParent()).removeView(this.f16751u);
            this.f16751u.removeAllViews();
            this.f16751u.setWebChromeClient(null);
            this.f16751u.setWebViewClient(null);
            this.f16751u.getSettings().setJavaScriptEnabled(false);
            unregisterForContextMenu(this.f16751u);
            this.f16751u.destroy();
            this.f16751u = null;
            this.f16751u = null;
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        Timer timer = this.f16749m;
        if (timer != null) {
            timer.cancel();
        }
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        c.a("-----------onResume------------" + this.f16745i);
        int i2 = this.f16745i + 1;
        this.f16745i = i2;
        if (i2 < 2) {
            return;
        }
        c.a("--------isNeedQuery------" + this.f16746j);
        if (this.f16746j) {
            WebView webView = this.f16751u;
            if (webView != null && webView.getVisibility() == 0) {
                this.f16751u.setVisibility(8);
                c.a("--------isNeedQuery------" + this.f16746j);
            }
            b();
        } else if (this.f16748l) {
            WebView webView2 = this.f16751u;
            if (webView2 == null || webView2.getVisibility() != 0) {
                return;
            }
            this.f16751u.setVisibility(8);
        } else if (this.f16737a.startsWith(f.f11765a) || this.f16751u.getVisibility() != 0) {
        } else {
            this.f16751u.setVisibility(8);
            a("isLoaded");
        }
    }
}
