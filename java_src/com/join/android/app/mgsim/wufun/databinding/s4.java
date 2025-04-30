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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CategoryCollectionRecomBinding.java */
/* loaded from: classes3.dex */
public final class s4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24698a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f24699b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24700c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ViewPager f24701d;

    private s4(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ViewPager viewPager) {
        this.f24698a = linearLayout;
        this.f24699b = relativeLayout;
        this.f24700c = textView;
        this.f24701d = viewPager;
    }

    @NonNull
    public static s4 a(@NonNull View view) {
        int i2 = R.id.relateLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relateLayout);
        if (relativeLayout != null) {
            i2 = R.id.textViewPosition;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textViewPosition);
            if (textView != null) {
                i2 = R.id.viewpager;
                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewpager);
                if (viewPager != null) {
                    return new s4((LinearLayout) view, relativeLayout, textView, viewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static s4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.category_collection_recom, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24698a;
    }
}
