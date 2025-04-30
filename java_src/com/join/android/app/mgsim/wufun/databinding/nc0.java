package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout;
/* compiled from: TopbarFightTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class nc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22851a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SlidingTabLayout f22852b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f22853c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f22854d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f22855e;

    private nc0(@NonNull RelativeLayout relativeLayout, @NonNull SlidingTabLayout slidingTabLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.f22851a = relativeLayout;
        this.f22852b = slidingTabLayout;
        this.f22853c = linearLayout;
        this.f22854d = imageView;
        this.f22855e = imageView2;
    }

    @NonNull
    public static nc0 a(@NonNull View view) {
        int i2 = R.id.mSlidingTabLayout;
        SlidingTabLayout slidingTabLayout = (SlidingTabLayout) ViewBindings.findChildViewById(view, R.id.mSlidingTabLayout);
        if (slidingTabLayout != null) {
            i2 = R.id.searchImage;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.searchImage);
            if (linearLayout != null) {
                i2 = R.id.title_normal_download_img;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.title_normal_download_img);
                if (imageView != null) {
                    i2 = R.id.title_normal_search_img;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.title_normal_search_img);
                    if (imageView2 != null) {
                        return new nc0((RelativeLayout) view, slidingTabLayout, linearLayout, imageView, imageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static nc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.topbar_fight_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22851a;
    }
}
