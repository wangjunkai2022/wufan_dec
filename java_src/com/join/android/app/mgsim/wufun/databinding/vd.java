package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayoutDownloadCenter;
/* compiled from: DownloadCenterLayoutBinding.java */
/* loaded from: classes3.dex */
public final class vd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25814a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25815b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25816c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f25817d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ViewPager f25818e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25819f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f25820g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SlidingTabLayoutDownloadCenter f25821h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25822i;

    private vd(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull ViewPager viewPager, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3, @NonNull SlidingTabLayoutDownloadCenter slidingTabLayoutDownloadCenter, @NonNull TextView textView4) {
        this.f25814a = linearLayout;
        this.f25815b = textView;
        this.f25816c = textView2;
        this.f25817d = linearLayout2;
        this.f25818e = viewPager;
        this.f25819f = textView3;
        this.f25820g = linearLayout3;
        this.f25821h = slidingTabLayoutDownloadCenter;
        this.f25822i = textView4;
    }

    @NonNull
    public static vd a(@NonNull View view) {
        int i2 = R.id.downMessage;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.downMessage);
        if (textView != null) {
            i2 = R.id.goVip;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.goVip);
            if (textView2 != null) {
                i2 = R.id.isVip;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.isVip);
                if (linearLayout != null) {
                    i2 = R.id.mViewpagerV4;
                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.mViewpagerV4);
                    if (viewPager != null) {
                        i2 = R.id.notMessage;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.notMessage);
                        if (textView3 != null) {
                            i2 = R.id.notVip;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.notVip);
                            if (linearLayout2 != null) {
                                i2 = R.id.pageIndicator;
                                SlidingTabLayoutDownloadCenter slidingTabLayoutDownloadCenter = (SlidingTabLayoutDownloadCenter) ViewBindings.findChildViewById(view, R.id.pageIndicator);
                                if (slidingTabLayoutDownloadCenter != null) {
                                    i2 = R.id.speedText;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.speedText);
                                    if (textView4 != null) {
                                        return new vd((LinearLayout) view, textView, textView2, linearLayout, viewPager, textView3, linearLayout2, slidingTabLayoutDownloadCenter, textView4);
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
    public static vd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.download_center_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25814a;
    }
}
