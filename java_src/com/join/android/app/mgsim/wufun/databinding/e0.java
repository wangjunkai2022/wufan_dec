package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityGameAndProfileBinding.java */
/* loaded from: classes3.dex */
public final class e0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19541a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f19542b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SlidingTabLayout f19543c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19544d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f19545e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19546f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ViewPager f19547g;

    private e0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull SlidingTabLayout slidingTabLayout, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2, @NonNull ViewPager viewPager) {
        this.f19541a = linearLayout;
        this.f19542b = linearLayout2;
        this.f19543c = slidingTabLayout;
        this.f19544d = textView;
        this.f19545e = relativeLayout;
        this.f19546f = textView2;
        this.f19547g = viewPager;
    }

    @NonNull
    public static e0 a(@NonNull View view) {
        int i2 = R.id.iv_back;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_back);
        if (linearLayout != null) {
            i2 = R.id.tableLayout;
            SlidingTabLayout slidingTabLayout = (SlidingTabLayout) ViewBindings.findChildViewById(view, R.id.tableLayout);
            if (slidingTabLayout != null) {
                i2 = R.id.title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                if (textView != null) {
                    i2 = R.id.tv_back;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.tv_back);
                    if (relativeLayout != null) {
                        i2 = R.id.tv_buildGmae;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_buildGmae);
                        if (textView2 != null) {
                            i2 = R.id.viewPager;
                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                            if (viewPager != null) {
                                return new e0((LinearLayout) view, linearLayout, slidingTabLayout, textView, relativeLayout, textView2, viewPager);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static e0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_game_and_profile, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19541a;
    }
}
