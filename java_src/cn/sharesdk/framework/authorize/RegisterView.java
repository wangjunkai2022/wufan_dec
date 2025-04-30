package cn.sharesdk.framework.authorize;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.sharesdk.framework.TitleLayout;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.utils.ResHelper;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public class RegisterView extends ResizeLayout {

    /* renamed from: a  reason: collision with root package name */
    private TitleLayout f8802a;

    /* renamed from: b  reason: collision with root package name */
    private RelativeLayout f8803b;

    /* renamed from: c  reason: collision with root package name */
    private WebView f8804c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f8805d;

    public RegisterView(Context context) {
        super(context);
        a(context);
    }

    private int b(Context context) {
        WindowManager windowManager;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if ((context instanceof Activity) && (windowManager = ((Activity) context).getWindowManager()) != null) {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.widthPixels;
        }
        return 0;
    }

    public TitleLayout c() {
        return this.f8802a;
    }

    public RelativeLayout d() {
        return this.f8803b;
    }

    private void a(Context context) {
        setBackgroundColor(-1);
        setOrientation(1);
        final int b4 = b(context);
        this.f8802a = new TitleLayout(context);
        try {
            int bitmapRes = ResHelper.getBitmapRes(context, "ssdk_auth_title_back");
            if (bitmapRes > 0) {
                this.f8802a.setBackgroundResource(bitmapRes);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
        this.f8802a.getBtnRight().setVisibility(8);
        int stringRes = ResHelper.getStringRes(getContext(), "ssdk_weibo_oauth_regiseter");
        if (stringRes > 0) {
            this.f8802a.getTvTitle().setText(stringRes);
        }
        addView(this.f8802a);
        ImageView imageView = new ImageView(context);
        int bitmapRes2 = ResHelper.getBitmapRes(context, "ssdk_logo");
        if (bitmapRes2 > 0) {
            imageView.setImageResource(bitmapRes2);
        }
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setPadding(0, 0, ResHelper.dipToPx(context, 10), 0);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.sharesdk.framework.authorize.RegisterView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    int stringRes2 = ResHelper.getStringRes(view.getContext(), "ssdk_website");
                    String string = stringRes2 > 0 ? view.getResources().getString(stringRes2) : null;
                    if (TextUtils.isEmpty(string)) {
                        return;
                    }
                    view.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
                } catch (Throwable th2) {
                    SSDKLog.b().a(th2);
                }
            }
        });
        this.f8802a.addView(imageView);
        this.f8803b = new RelativeLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        this.f8803b.setLayoutParams(layoutParams);
        addView(this.f8803b);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f8803b.addView(linearLayout);
        TextView textView = new TextView(context);
        this.f8805d = textView;
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, 5));
        this.f8805d.setBackgroundColor(-12929302);
        linearLayout.addView(this.f8805d);
        this.f8805d.setVisibility(8);
        WebView webView = new WebView(context);
        this.f8804c = webView;
        webView.getSettings().setAllowFileAccess(false);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 16) {
            this.f8804c.getSettings().setAllowFileAccessFromFileURLs(false);
            this.f8804c.getSettings().setAllowUniversalAccessFromFileURLs(false);
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams2.weight = 1.0f;
        this.f8804c.setLayoutParams(layoutParams2);
        WebChromeClient webChromeClient = new WebChromeClient() { // from class: cn.sharesdk.framework.authorize.RegisterView.2
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView2, int i4) {
                super.onProgressChanged(webView2, i4);
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) RegisterView.this.f8805d.getLayoutParams();
                layoutParams3.width = (b4 * i4) / 100;
                RegisterView.this.f8805d.setLayoutParams(layoutParams3);
                if (i4 <= 0 || i4 >= 100) {
                    RegisterView.this.f8805d.setVisibility(8);
                } else {
                    RegisterView.this.f8805d.setVisibility(0);
                }
            }
        };
        if (i2 > 10 && i2 < 17) {
            try {
                Method method = this.f8804c.getClass().getMethod("removeJavascriptInterface", String.class);
                method.setAccessible(true);
                method.invoke(this.f8804c, "searchBoxJavaBridge_");
            } catch (Throwable th2) {
                SSDKLog.b().a(th2);
            }
        }
        this.f8804c.setWebChromeClient(webChromeClient);
        linearLayout.addView(this.f8804c);
        this.f8804c.requestFocus();
    }

    public RegisterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public WebView b() {
        return this.f8804c;
    }

    public View a() {
        return this.f8802a.getBtnBack();
    }

    public void a(boolean z3) {
        this.f8802a.setVisibility(z3 ? 8 : 0);
    }
}
