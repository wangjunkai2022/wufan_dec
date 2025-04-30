package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetailVideoMainActivityBinding.java */
/* loaded from: classes3.dex */
public final class pl implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23688a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f23689b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23690c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f23691d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f23692e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f23693f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f23694g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ViewPager f23695h;

    private pl(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull View view2, @NonNull RelativeLayout relativeLayout2, @NonNull ViewPager viewPager) {
        this.f23688a = relativeLayout;
        this.f23689b = frameLayout;
        this.f23690c = imageView;
        this.f23691d = linearLayout;
        this.f23692e = view;
        this.f23693f = view2;
        this.f23694g = relativeLayout2;
        this.f23695h = viewPager;
    }

    @NonNull
    public static pl a(@NonNull View view) {
        int i2 = R.id.fragment;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment);
        if (frameLayout != null) {
            i2 = R.id.iv_back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_back);
            if (imageView != null) {
                i2 = R.id.main_content;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main_content);
                if (linearLayout != null) {
                    i2 = R.id.mainCover;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.mainCover);
                    if (findChildViewById != null) {
                        i2 = R.id.statuHVIew;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.statuHVIew);
                        if (findChildViewById2 != null) {
                            i2 = R.id.titleTransfer;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.titleTransfer);
                            if (relativeLayout != null) {
                                i2 = R.id.viewPager;
                                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                                if (viewPager != null) {
                                    return new pl((RelativeLayout) view, frameLayout, imageView, linearLayout, findChildViewById, findChildViewById2, relativeLayout, viewPager);
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
    public static pl c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pl d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_video_main_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23688a;
    }
}
