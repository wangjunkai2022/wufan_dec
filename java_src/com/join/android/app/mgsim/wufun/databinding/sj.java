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
/* compiled from: GamedetailItemCommentItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class sj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24868a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24869b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f24870c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final VipView f24871d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f24872e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f24873f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f24874g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24875h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24876i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f24877j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24878k;

    private sj(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull VipView vipView, @NonNull View view, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView4) {
        this.f24868a = linearLayout;
        this.f24869b = textView;
        this.f24870c = linearLayout2;
        this.f24871d = vipView;
        this.f24872e = view;
        this.f24873f = relativeLayout;
        this.f24874g = imageView;
        this.f24875h = textView2;
        this.f24876i = textView3;
        this.f24877j = simpleDraweeView;
        this.f24878k = textView4;
    }

    @NonNull
    public static sj a(@NonNull View view) {
        int i2 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i2 = R.id.lLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lLayout);
            if (linearLayout != null) {
                i2 = R.id.levelTv;
                VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.levelTv);
                if (vipView != null) {
                    i2 = R.id.line;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                    if (findChildViewById != null) {
                        i2 = R.id.main;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.main);
                        if (relativeLayout != null) {
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
                                                return new sj((LinearLayout) view, textView, linearLayout, vipView, findChildViewById, relativeLayout, imageView, textView2, textView3, simpleDraweeView, textView4);
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
    public static sj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_comment_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24868a;
    }
}
