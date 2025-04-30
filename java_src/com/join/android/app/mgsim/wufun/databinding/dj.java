package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.VipView;
/* compiled from: GameInformationCommentItemBinding.java */
/* loaded from: classes3.dex */
public final class dj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19396a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19397b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final VipView f19398c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f19399d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19400e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19401f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f19402g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f19403h;

    private dj(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull VipView vipView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView4) {
        this.f19396a = relativeLayout;
        this.f19397b = textView;
        this.f19398c = vipView;
        this.f19399d = imageView;
        this.f19400e = textView2;
        this.f19401f = textView3;
        this.f19402g = simpleDraweeView;
        this.f19403h = textView4;
    }

    @NonNull
    public static dj a(@NonNull View view) {
        int i2 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i2 = R.id.levelTv;
            VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.levelTv);
            if (vipView != null) {
                i2 = R.id.parise;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.parise);
                if (imageView != null) {
                    i2 = R.id.pariseNumber;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.pariseNumber);
                    if (textView2 != null) {
                        i2 = R.id.time;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                        if (textView3 != null) {
                            i2 = R.id.usericon;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.usericon);
                            if (simpleDraweeView != null) {
                                i2 = R.id.username;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.username);
                                if (textView4 != null) {
                                    return new dj((RelativeLayout) view, textView, vipView, imageView, textView2, textView3, simpleDraweeView, textView4);
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
    public static dj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_information_comment_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19396a;
    }
}
