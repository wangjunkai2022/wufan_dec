package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.VipView;
/* compiled from: LiveContributionOtherItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class mv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22620a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22621b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22622c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final VipView f22623d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f22624e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22625f;

    private mv(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull VipView vipView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3) {
        this.f22620a = relativeLayout;
        this.f22621b = textView;
        this.f22622c = textView2;
        this.f22623d = vipView;
        this.f22624e = simpleDraweeView;
        this.f22625f = textView3;
    }

    @NonNull
    public static mv a(@NonNull View view) {
        int i2 = R.id.contribution;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.contribution);
        if (textView != null) {
            i2 = R.id.numberText;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.numberText);
            if (textView2 != null) {
                i2 = R.id.svip;
                VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.svip);
                if (vipView != null) {
                    i2 = R.id.userIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.userIcon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.userName;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                        if (textView3 != null) {
                            return new mv((RelativeLayout) view, textView, textView2, vipView, simpleDraweeView, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static mv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.live_contribution_other_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22620a;
    }
}
