package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyUserIconTitleLayout;
import com.join.mgps.customview.VipView;
/* compiled from: TopUserIconTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class mc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final MyUserIconTitleLayout f22468a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f22469b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22470c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22471d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final VipView f22472e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final MyUserIconTitleLayout f22473f;

    private mc0(@NonNull MyUserIconTitleLayout myUserIconTitleLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull VipView vipView, @NonNull MyUserIconTitleLayout myUserIconTitleLayout2) {
        this.f22468a = myUserIconTitleLayout;
        this.f22469b = simpleDraweeView;
        this.f22470c = textView;
        this.f22471d = textView2;
        this.f22472e = vipView;
        this.f22473f = myUserIconTitleLayout2;
    }

    @NonNull
    public static mc0 a(@NonNull View view) {
        int i2 = R.id.papa_user_icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.papa_user_icon);
        if (simpleDraweeView != null) {
            i2 = R.id.papa_user_is_in;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.papa_user_is_in);
            if (textView != null) {
                i2 = R.id.papa_user_round;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.papa_user_round);
                if (textView2 != null) {
                    i2 = R.id.papa_vip;
                    VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.papa_vip);
                    if (vipView != null) {
                        MyUserIconTitleLayout myUserIconTitleLayout = (MyUserIconTitleLayout) view;
                        return new mc0(myUserIconTitleLayout, simpleDraweeView, textView, textView2, vipView, myUserIconTitleLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static mc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.top_user_icon_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public MyUserIconTitleLayout getRoot() {
        return this.f22468a;
    }
}
