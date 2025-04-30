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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.VipView;
/* compiled from: MgForumForumTMemberItemModeratorsItemBinding.java */
/* loaded from: classes3.dex */
public final class wx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26272a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26273b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26274c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final VipView f26275d;

    private wx(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull VipView vipView) {
        this.f26272a = linearLayout;
        this.f26273b = simpleDraweeView;
        this.f26274c = textView;
        this.f26275d = vipView;
    }

    @NonNull
    public static wx a(@NonNull View view) {
        int i2 = R.id.itemImg;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.itemImg);
        if (simpleDraweeView != null) {
            i2 = R.id.itemName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.itemName);
            if (textView != null) {
                i2 = R.id.vipView;
                VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.vipView);
                if (vipView != null) {
                    return new wx((LinearLayout) view, simpleDraweeView, textView, vipView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_t_member_item_moderators_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26272a;
    }
}
