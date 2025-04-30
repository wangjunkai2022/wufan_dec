package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.VipView;
/* compiled from: FavorioseTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ue implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25508a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25509b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25510c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25511d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final VipView f25512e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25513f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f25514g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f25515h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f25516i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f25517j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f25518k;

    private ue(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull VipView vipView, @NonNull TextView textView, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull ImageView imageView3) {
        this.f25508a = relativeLayout;
        this.f25509b = linearLayout;
        this.f25510c = linearLayout2;
        this.f25511d = imageView;
        this.f25512e = vipView;
        this.f25513f = textView;
        this.f25514g = linearLayout3;
        this.f25515h = imageView2;
        this.f25516i = simpleDraweeView;
        this.f25517j = textView2;
        this.f25518k = imageView3;
    }

    @NonNull
    public static ue a(@NonNull View view) {
        int i2 = R.id.f17850b;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.f17850b);
        if (linearLayout != null) {
            i2 = R.id.nameLayout;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.nameLayout);
            if (linearLayout2 != null) {
                i2 = R.id.sexImg;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.sexImg);
                if (imageView != null) {
                    i2 = R.id.svip;
                    VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.svip);
                    if (vipView != null) {
                        i2 = R.id.tipName;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tipName);
                        if (textView != null) {
                            i2 = R.id.tipsLayout;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                            if (linearLayout3 != null) {
                                i2 = R.id.titleImg;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.titleImg);
                                if (imageView2 != null) {
                                    i2 = R.id.userIcon;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.userIcon);
                                    if (simpleDraweeView != null) {
                                        i2 = R.id.userName;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                                        if (textView2 != null) {
                                            i2 = R.id.vip;
                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.vip);
                                            if (imageView3 != null) {
                                                return new ue((RelativeLayout) view, linearLayout, linearLayout2, imageView, vipView, textView, linearLayout3, imageView2, simpleDraweeView, textView2, imageView3);
                                            }
                                        }
                                    }
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
    public static ue c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ue d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.favoriose_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25508a;
    }
}
