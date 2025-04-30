package com.join.mgps.customview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.HandShankNoActivity;
import com.join.mgps.activity.HandShankYesActivity;
import com.join.mgps.customview.LoadingLayout;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.HandShankAdBean;
/* loaded from: classes3.dex */
public class HandShankAdView extends LinearLayout implements LoadingLayout.b {

    /* renamed from: a  reason: collision with root package name */
    protected LoadingLayout f45605a;

    /* renamed from: b  reason: collision with root package name */
    private LinearLayout f45606b;

    /* renamed from: c  reason: collision with root package name */
    private final View.OnClickListener f45607c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HandShankAdBean f45608a;

        a(HandShankAdBean handShankAdBean) {
            this.f45608a = handShankAdBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context = HandShankAdView.this.getContext();
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) HandShankAdView.this.findViewById(R.id.iv_banner);
            int a4 = com.join.mgps.Util.b0.a(context, 8.0f);
            int i2 = 1;
            if (this.f45608a.getTop_banner_ad() != null && this.f45608a.getTop_banner_ad().size() > 0) {
                BannerBean bannerBean = this.f45608a.getTop_banner_ad().get(0);
                if (bannerBean.getAd_switch() == 1) {
                    simpleDraweeView.setVisibility(0);
                    MyImageLoader.d(simpleDraweeView, R.drawable.banner_normal_icon, bannerBean.getPic_remote());
                    simpleDraweeView.setTag(bannerBean);
                    simpleDraweeView.setOnClickListener(HandShankAdView.this.f45607c);
                } else {
                    simpleDraweeView.setVisibility(8);
                }
            } else {
                simpleDraweeView.setVisibility(8);
            }
            if (this.f45608a.getFast_entrance_ad() == null || this.f45608a.getFast_entrance_ad().size() <= 0) {
                HandShankAdView.this.f45606b.setVisibility(8);
            } else {
                int size = this.f45608a.getFast_entrance_ad().size();
                int a5 = com.join.mgps.Util.b0.a(context, 48.0f);
                int a6 = com.join.mgps.Util.b0.a(context, 7.0f);
                int i4 = 0;
                while (i4 < size && i4 < 5) {
                    BannerBean bannerBean2 = this.f45608a.getFast_entrance_ad().get(i4);
                    if (bannerBean2.getAd_switch() != 0) {
                        LinearLayout linearLayout = new LinearLayout(context);
                        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 1.0f));
                        linearLayout.setGravity(17);
                        linearLayout.setOrientation(i2);
                        SimpleDraweeView simpleDraweeView2 = new SimpleDraweeView(context);
                        simpleDraweeView2.setLayoutParams(new LinearLayout.LayoutParams(a5, a5));
                        simpleDraweeView2.setTag(bannerBean2);
                        simpleDraweeView2.setOnClickListener(HandShankAdView.this.f45607c);
                        MyImageLoader.d(simpleDraweeView2, R.drawable.main_normal_icon, bannerBean2.getPic_remote());
                        TextView textView = new TextView(context);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams.topMargin = a4;
                        textView.setLayoutParams(layoutParams);
                        textView.setTextSize(a6);
                        textView.setTextColor(Color.parseColor("#585858"));
                        textView.setText(bannerBean2.getSub_title());
                        linearLayout.addView(simpleDraweeView2);
                        linearLayout.addView(textView);
                        HandShankAdView.this.f45606b.addView(linearLayout);
                    }
                    i4++;
                    i2 = 1;
                }
            }
            HandShankAdView.this.f();
            int childCount = HandShankAdView.this.f45606b.getChildCount();
            if (simpleDraweeView.getVisibility() != 8) {
                if (childCount <= 0) {
                    HandShankAdView.this.setPadding(0, 0, 0, a4);
                    int a7 = com.join.mgps.Util.b0.a(context, 130.0f);
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) HandShankAdView.this.getLayoutParams();
                    layoutParams2.height = a7;
                    HandShankAdView.this.setLayoutParams(layoutParams2);
                    HandShankAdView.this.f45606b.setVisibility(8);
                }
            } else if (childCount <= 0) {
                HandShankAdView.this.g();
            } else {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) HandShankAdView.this.f45606b.getLayoutParams();
                layoutParams3.topMargin = a4;
                HandShankAdView.this.f45606b.setLayoutParams(layoutParams3);
                int a8 = com.join.mgps.Util.b0.a(context, 130.0f);
                LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) HandShankAdView.this.getLayoutParams();
                layoutParams4.height = a8;
                HandShankAdView.this.setLayoutParams(layoutParams4);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BannerBean bannerBean = (BannerBean) view.getTag();
            if (bannerBean == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(HandShankAdView.this.getContext(), HandShankAdView.this.e(bannerBean));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = HandShankAdView.this.f45605a;
            if (loadingLayout != null) {
                loadingLayout.setVisibility(0);
                HandShankAdView.this.f45605a.h();
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = HandShankAdView.this.f45605a;
            if (loadingLayout != null) {
                loadingLayout.setVisibility(0);
                HandShankAdView.this.f45605a.g();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = HandShankAdView.this.f45605a;
            if (loadingLayout != null) {
                loadingLayout.d();
                HandShankAdView.this.f45605a.setVisibility(8);
                HandShankAdView.this.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = HandShankAdView.this.f45605a;
            if (loadingLayout != null) {
                loadingLayout.d();
                HandShankAdView.this.f45605a.setVisibility(8);
            }
        }
    }

    public HandShankAdView(Context context) {
        super(context);
        this.f45607c = new b();
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IntentDateBean e(BannerBean bannerBean) {
        return bannerBean.getIntentDataBean();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        new Handler(Looper.getMainLooper()).post(new e());
    }

    private void h() {
        LoadingLayout loadingLayout = (LoadingLayout) LayoutInflater.from(getContext()).inflate(R.layout.banner_handshank_top, this).findViewById(R.id.loadingLayout);
        this.f45605a = loadingLayout;
        loadingLayout.setRefreshCallBackListener(this);
        this.f45606b = (LinearLayout) findViewById(R.id.ll_fast_entrance);
    }

    @Override // com.join.mgps.customview.LoadingLayout.b
    public void callBack() {
        k();
        Activity activity = (Activity) getContext();
        if (activity instanceof HandShankYesActivity) {
            ((HandShankYesActivity) activity).a1();
        } else if (activity instanceof HandShankNoActivity) {
            ((HandShankNoActivity) activity).Z0();
        }
    }

    protected void f() {
        new Handler(Looper.getMainLooper()).post(new f());
    }

    public void i() {
        g();
    }

    protected void j() {
        new Handler(Looper.getMainLooper()).post(new d());
    }

    protected void k() {
        new Handler(Looper.getMainLooper()).post(new c());
    }

    public void l() {
        g();
    }

    public void m(HandShankAdBean handShankAdBean) {
        new Handler(Looper.getMainLooper()).post(new a(handShankAdBean));
    }

    public HandShankAdView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45607c = new b();
        h();
    }

    public HandShankAdView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45607c = new b();
        h();
    }
}
