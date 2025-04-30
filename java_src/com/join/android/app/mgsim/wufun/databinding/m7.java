package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CollectionRecomLayoutBinding.java */
/* loaded from: classes3.dex */
public final class m7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22384a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f22385b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ViewPager f22386c;

    private m7(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull ViewPager viewPager) {
        this.f22384a = linearLayout;
        this.f22385b = relativeLayout;
        this.f22386c = viewPager;
    }

    @NonNull
    public static m7 a(@NonNull View view) {
        int i2 = R.id.relateLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relateLayout);
        if (relativeLayout != null) {
            i2 = R.id.viewpager;
            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewpager);
            if (viewPager != null) {
                return new m7((LinearLayout) view, relativeLayout, viewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static m7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.collection_recom_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22384a;
    }
}
