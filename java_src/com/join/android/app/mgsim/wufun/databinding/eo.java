package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomCircleProgressBar;
import me.relex.circleindicator.CircleIndicator;
/* compiled from: HomePopupAdqwActivityBinding.java */
/* loaded from: classes3.dex */
public final class eo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19852a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19853b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19854c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f19855d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f19856e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final CircleIndicator f19857f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19858g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f19859h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f19860i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final CustomCircleProgressBar f19861j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final MultiTouchViewPager f19862k;

    private eo(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull CircleIndicator circleIndicator, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull CustomCircleProgressBar customCircleProgressBar, @NonNull MultiTouchViewPager multiTouchViewPager) {
        this.f19852a = linearLayout;
        this.f19853b = imageView;
        this.f19854c = textView;
        this.f19855d = relativeLayout;
        this.f19856e = view;
        this.f19857f = circleIndicator;
        this.f19858g = textView2;
        this.f19859h = simpleDraweeView;
        this.f19860i = linearLayout2;
        this.f19861j = customCircleProgressBar;
        this.f19862k = multiTouchViewPager;
    }

    @NonNull
    public static eo a(@NonNull View view) {
        int i2 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i2 = R.id.downFileName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.downFileName);
            if (textView != null) {
                i2 = R.id.downLoadlayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.downLoadlayout);
                if (relativeLayout != null) {
                    i2 = R.id.holder;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.holder);
                    if (findChildViewById != null) {
                        i2 = R.id.indicator;
                        CircleIndicator circleIndicator = (CircleIndicator) ViewBindings.findChildViewById(view, R.id.indicator);
                        if (circleIndicator != null) {
                            i2 = R.id.install;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.install);
                            if (textView2 != null) {
                                i2 = R.id.more;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.more);
                                if (simpleDraweeView != null) {
                                    LinearLayout linearLayout = (LinearLayout) view;
                                    i2 = R.id.progressBar;
                                    CustomCircleProgressBar customCircleProgressBar = (CustomCircleProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                    if (customCircleProgressBar != null) {
                                        i2 = R.id.viewPager;
                                        MultiTouchViewPager multiTouchViewPager = (MultiTouchViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                                        if (multiTouchViewPager != null) {
                                            return new eo(linearLayout, imageView, textView, relativeLayout, findChildViewById, circleIndicator, textView2, simpleDraweeView, linearLayout, customCircleProgressBar, multiTouchViewPager);
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
    public static eo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static eo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.home_popup_adqw_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19852a;
    }
}
