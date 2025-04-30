package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CirclePageIndicator;
/* compiled from: MgMiniDetialLayoutBinding.java */
/* loaded from: classes3.dex */
public final class c20 implements ViewBinding {
    @NonNull
    public final TextView A;
    @NonNull
    public final LinearLayout B;
    @NonNull
    public final WebView C;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18735a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18736b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18737c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f18738d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ProgressBar f18739e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f18740f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18741g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f18742h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f18743i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ViewPager f18744j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f18745k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f18746l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final Button f18747m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f18748n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final CirclePageIndicator f18749o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final Button f18750p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f18751q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final Button f18752r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final ImageView f18753s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f18754t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final LinearLayout f18755u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final RelativeLayout f18756v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final ScrollView f18757w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final ImageView f18758x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final LinearLayout f18759y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final RelativeLayout f18760z;

    private c20(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull ProgressBar progressBar, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout3, @NonNull ViewPager viewPager, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout4, @NonNull Button button, @NonNull TextView textView3, @NonNull CirclePageIndicator circlePageIndicator, @NonNull Button button2, @NonNull RelativeLayout relativeLayout5, @NonNull Button button3, @NonNull ImageView imageView2, @NonNull TextView textView4, @NonNull LinearLayout linearLayout3, @NonNull RelativeLayout relativeLayout6, @NonNull ScrollView scrollView, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout4, @NonNull RelativeLayout relativeLayout7, @NonNull TextView textView5, @NonNull LinearLayout linearLayout5, @NonNull WebView webView) {
        this.f18735a = relativeLayout;
        this.f18736b = textView;
        this.f18737c = linearLayout;
        this.f18738d = relativeLayout2;
        this.f18739e = progressBar;
        this.f18740f = imageView;
        this.f18741g = linearLayout2;
        this.f18742h = simpleDraweeView;
        this.f18743i = relativeLayout3;
        this.f18744j = viewPager;
        this.f18745k = textView2;
        this.f18746l = relativeLayout4;
        this.f18747m = button;
        this.f18748n = textView3;
        this.f18749o = circlePageIndicator;
        this.f18750p = button2;
        this.f18751q = relativeLayout5;
        this.f18752r = button3;
        this.f18753s = imageView2;
        this.f18754t = textView4;
        this.f18755u = linearLayout3;
        this.f18756v = relativeLayout6;
        this.f18757w = scrollView;
        this.f18758x = imageView3;
        this.f18759y = linearLayout4;
        this.f18760z = relativeLayout7;
        this.A = textView5;
        this.B = linearLayout5;
        this.C = webView;
    }

    @NonNull
    public static c20 a(@NonNull View view) {
        int i2 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
        if (textView != null) {
            i2 = R.id.appinfo;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.appinfo);
            if (linearLayout != null) {
                i2 = R.id.bottomLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.bottomLayout);
                if (relativeLayout != null) {
                    i2 = R.id.butnProgressBar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.butnProgressBar);
                    if (progressBar != null) {
                        i2 = R.id.butn_showdownload;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.butn_showdownload);
                        if (imageView != null) {
                            i2 = R.id.detialDownBottom;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.detialDownBottom);
                            if (linearLayout2 != null) {
                                i2 = R.id.detialIconImage;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.detialIconImage);
                                if (simpleDraweeView != null) {
                                    i2 = R.id.detial_main_layout;
                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.detial_main_layout);
                                    if (relativeLayout2 != null) {
                                        i2 = R.id.detial_mini_viewpager;
                                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.detial_mini_viewpager);
                                        if (viewPager != null) {
                                            i2 = R.id.downCountAndSize;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.downCountAndSize);
                                            if (textView2 != null) {
                                                i2 = R.id.downloadRLayout;
                                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.downloadRLayout);
                                                if (relativeLayout3 != null) {
                                                    i2 = R.id.fourmButn;
                                                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.fourmButn);
                                                    if (button != null) {
                                                        i2 = R.id.iWillUp;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.iWillUp);
                                                        if (textView3 != null) {
                                                            i2 = R.id.indecater;
                                                            CirclePageIndicator circlePageIndicator = (CirclePageIndicator) ViewBindings.findChildViewById(view, R.id.indecater);
                                                            if (circlePageIndicator != null) {
                                                                i2 = R.id.instalButtomButn;
                                                                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.instalButtomButn);
                                                                if (button2 != null) {
                                                                    i2 = R.id.instalbutnLayout;
                                                                    RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.instalbutnLayout);
                                                                    if (relativeLayout4 != null) {
                                                                        i2 = R.id.installButn;
                                                                        Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.installButn);
                                                                        if (button3 != null) {
                                                                            i2 = R.id.loding_back;
                                                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.loding_back);
                                                                            if (imageView2 != null) {
                                                                                i2 = R.id.percent;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.percent);
                                                                                if (textView4 != null) {
                                                                                    i2 = R.id.progress_layout;
                                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.progress_layout);
                                                                                    if (linearLayout3 != null) {
                                                                                        i2 = R.id.progressbarLayout;
                                                                                        RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.progressbarLayout);
                                                                                        if (relativeLayout5 != null) {
                                                                                            i2 = R.id.scrollView;
                                                                                            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
                                                                                            if (scrollView != null) {
                                                                                                i2 = R.id.shareBtn;
                                                                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.shareBtn);
                                                                                                if (imageView3 != null) {
                                                                                                    i2 = R.id.shareLayout;
                                                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.shareLayout);
                                                                                                    if (linearLayout4 != null) {
                                                                                                        i2 = R.id.shareRLayout;
                                                                                                        RelativeLayout relativeLayout6 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.shareRLayout);
                                                                                                        if (relativeLayout6 != null) {
                                                                                                            i2 = R.id.shareUser;
                                                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.shareUser);
                                                                                                            if (textView5 != null) {
                                                                                                                i2 = R.id.tipsLayout;
                                                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                                                                                if (linearLayout5 != null) {
                                                                                                                    i2 = R.id.webView;
                                                                                                                    WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.webView);
                                                                                                                    if (webView != null) {
                                                                                                                        return new c20((RelativeLayout) view, textView, linearLayout, relativeLayout, progressBar, imageView, linearLayout2, simpleDraweeView, relativeLayout2, viewPager, textView2, relativeLayout3, button, textView3, circlePageIndicator, button2, relativeLayout4, button3, imageView2, textView4, linearLayout3, relativeLayout5, scrollView, imageView3, linearLayout4, relativeLayout6, textView5, linearLayout5, webView);
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static c20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_mini_detial_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18735a;
    }
}
