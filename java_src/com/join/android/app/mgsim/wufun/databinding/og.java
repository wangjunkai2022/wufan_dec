package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentFriendMsgBinding.java */
/* loaded from: classes3.dex */
public final class og implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f23259a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f23260b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23261c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f23262d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23263e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23264f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23265g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ViewPager f23266h;

    private og(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull View view2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ViewPager viewPager) {
        this.f23259a = constraintLayout;
        this.f23260b = view;
        this.f23261c = imageView;
        this.f23262d = view2;
        this.f23263e = textView;
        this.f23264f = textView2;
        this.f23265g = textView3;
        this.f23266h = viewPager;
    }

    @NonNull
    public static og a(@NonNull View view) {
        int i2 = R.id.close;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.close);
        if (findChildViewById != null) {
            i2 = R.id.iv1;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv1);
            if (imageView != null) {
                i2 = R.id.likeDot;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.likeDot);
                if (findChildViewById2 != null) {
                    i2 = R.id.tabLike;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tabLike);
                    if (textView != null) {
                        i2 = R.id.tabReq;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tabReq);
                        if (textView2 != null) {
                            i2 = R.id.textView48;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView48);
                            if (textView3 != null) {
                                i2 = R.id.viewPager;
                                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                                if (viewPager != null) {
                                    return new og((ConstraintLayout) view, findChildViewById, imageView, findChildViewById2, textView, textView2, textView3, viewPager);
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
    public static og c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static og d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_friend_msg, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f23259a;
    }
}
