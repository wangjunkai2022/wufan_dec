package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.TabPageIndicator;
/* compiled from: ActivityVoucherCodesboxBinding.java */
/* loaded from: classes3.dex */
public final class m2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22316a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f22317b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TabPageIndicator f22318c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPager f22319d;

    private m2(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TabPageIndicator tabPageIndicator, @NonNull ViewPager viewPager) {
        this.f22316a = linearLayout;
        this.f22317b = view;
        this.f22318c = tabPageIndicator;
        this.f22319d = viewPager;
    }

    @NonNull
    public static m2 a(@NonNull View view) {
        int i2 = R.id.line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
        if (findChildViewById != null) {
            i2 = R.id.pageIndicator;
            TabPageIndicator tabPageIndicator = (TabPageIndicator) ViewBindings.findChildViewById(view, R.id.pageIndicator);
            if (tabPageIndicator != null) {
                i2 = R.id.viewPager;
                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                if (viewPager != null) {
                    return new m2((LinearLayout) view, findChildViewById, tabPageIndicator, viewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static m2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_voucher_codesbox, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22316a;
    }
}
