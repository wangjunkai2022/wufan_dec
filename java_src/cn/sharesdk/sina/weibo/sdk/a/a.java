package cn.sharesdk.sina.weibo.sdk.a;

import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.m;
import cn.sharesdk.sina.weibo.sdk.LoadingBar;
import com.mob.tools.utils.ResHelper;
import java.lang.reflect.Method;
/* compiled from: WeiboWebPageLayout.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private TextView f8971a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f8972b;

    /* renamed from: c  reason: collision with root package name */
    private WebView f8973c;

    /* renamed from: d  reason: collision with root package name */
    private LoadingBar f8974d;

    /* renamed from: e  reason: collision with root package name */
    private LinearLayout f8975e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f8976f;

    /* renamed from: g  reason: collision with root package name */
    private Button f8977g;

    /* renamed from: h  reason: collision with root package name */
    private Context f8978h;

    public a(Context context) {
        this.f8978h = context;
    }

    private void e() {
        this.f8973c.getSettings().setJavaScriptEnabled(true);
        m.a(this.f8973c, false);
        this.f8973c.getSettings().setSavePassword(false);
        this.f8973c.getSettings().setUserAgentString(Build.MANUFACTURER + "-" + Build.MODEL + "_" + Build.VERSION.RELEASE + "_weibosdk_0031405000_android");
        this.f8973c.requestFocus();
        this.f8973c.setScrollBarStyle(0);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 > 10 && i2 < 17) {
            try {
                Method method = this.f8973c.getClass().getMethod("removeJavascriptInterface", String.class);
                method.setAccessible(true);
                method.invoke(this.f8973c, "searchBoxJavaBridge_");
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        }
        this.f8973c.setWebChromeClient(new WebChromeClient() { // from class: cn.sharesdk.sina.weibo.sdk.a.a.2
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i4) {
                super.onProgressChanged(webView, i4);
                a.this.f8974d.a(i4);
                if (i4 == 100) {
                    a.this.f8974d.setVisibility(4);
                } else {
                    a.this.f8974d.setVisibility(0);
                }
            }
        });
    }

    public TextView b() {
        return this.f8971a;
    }

    public WebView c() {
        return this.f8973c;
    }

    public LinearLayout d() {
        return this.f8975e;
    }

    public RelativeLayout a(int i2) {
        RelativeLayout relativeLayout = new RelativeLayout(this.f8978h);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(-1);
        RelativeLayout relativeLayout2 = new RelativeLayout(this.f8978h);
        relativeLayout2.setId(ResHelper.getIdRes(this.f8978h, "ssdk_sina_web_title_id"));
        relativeLayout2.setBackgroundColor(-131587);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, ResHelper.dipToPx(this.f8978h, 55));
        layoutParams.addRule(10);
        relativeLayout.addView(relativeLayout2, layoutParams);
        TextView textView = new TextView(this.f8978h);
        this.f8971a = textView;
        textView.setTextSize(1, 17.0f);
        this.f8971a.setTextColor(cn.sharesdk.sina.weibo.sdk.a.a(-32256, 1728020992));
        int stringRes = ResHelper.getStringRes(this.f8978h, "ssdk_sina_web_close");
        if (stringRes > 0) {
            this.f8971a.setText(stringRes);
        }
        int dipToPx = ResHelper.dipToPx(this.f8978h, 10);
        this.f8971a.setPadding(dipToPx, 0, dipToPx, 0);
        this.f8971a.setOnTouchListener(new View.OnTouchListener() { // from class: cn.sharesdk.sina.weibo.sdk.a.a.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-1);
                    return false;
                } else if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-131587);
                    return false;
                } else {
                    return false;
                }
            }
        });
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(15);
        relativeLayout2.addView(this.f8971a, layoutParams2);
        TextView textView2 = new TextView(this.f8978h);
        this.f8972b = textView2;
        textView2.setTextColor(-11382190);
        this.f8972b.setTextSize(1, 18.0f);
        if (i2 > 0) {
            this.f8972b.setText(i2);
        }
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(13);
        relativeLayout2.addView(this.f8972b, layoutParams3);
        this.f8973c = new WebView(this.f8978h);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams4.addRule(3, relativeLayout2.getId());
        relativeLayout.addView(this.f8973c, layoutParams4);
        this.f8974d = new LoadingBar(this.f8978h);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, ResHelper.dipToPx(this.f8978h, 3));
        layoutParams5.addRule(3, relativeLayout2.getId());
        relativeLayout.addView(this.f8974d, layoutParams5);
        View view = new View(this.f8978h);
        int bitmapRes = ResHelper.getBitmapRes(this.f8978h, "ssdk_weibo_common_shadow_top");
        if (bitmapRes > 0) {
            view.setBackgroundResource(bitmapRes);
        }
        relativeLayout.addView(view, layoutParams5);
        LinearLayout linearLayout = new LinearLayout(this.f8978h);
        this.f8975e = linearLayout;
        linearLayout.setVisibility(8);
        this.f8975e.setGravity(17);
        this.f8975e.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(13);
        relativeLayout.addView(this.f8975e, layoutParams6);
        ImageView imageView = new ImageView(this.f8978h);
        int bitmapRes2 = ResHelper.getBitmapRes(this.f8978h, "ssdk_weibo_empty_failed");
        if (bitmapRes2 > 0) {
            imageView.setImageResource(bitmapRes2);
        }
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams7.bottomMargin = ResHelper.dipToPx(this.f8978h, 8);
        this.f8975e.addView(imageView, layoutParams7);
        this.f8976f = new TextView(this.f8978h);
        int stringRes2 = ResHelper.getStringRes(this.f8978h, "ssdk_sina_web_net_error");
        if (stringRes2 > 0) {
            this.f8976f.setText(stringRes2);
        }
        this.f8976f.setTextColor(-4342339);
        this.f8976f.setTextSize(1, 14.0f);
        this.f8975e.addView(this.f8976f, new LinearLayout.LayoutParams(-2, -2));
        Button button = new Button(this.f8978h);
        this.f8977g = button;
        button.setTextColor(-8882056);
        this.f8977g.setGravity(17);
        this.f8977g.setTextSize(1, 16.0f);
        int stringRes3 = ResHelper.getStringRes(this.f8978h, "ssdk_sina_web_refresh");
        if (stringRes3 > 0) {
            this.f8977g.setText(stringRes3);
        }
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(ResHelper.dipToPx(this.f8978h, 142), ResHelper.dipToPx(this.f8978h, 46));
        layoutParams8.topMargin = dipToPx;
        this.f8975e.addView(this.f8977g, layoutParams8);
        e();
        return relativeLayout;
    }

    public Button a() {
        return this.f8977g;
    }
}
