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
/* compiled from: GameDetailCommentItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ii implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21172a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21173b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f21174c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final VipView f21175d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f21176e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f21177f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f21178g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f21179h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f21180i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f21181j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f21182k;

    private ii(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull VipView vipView, @NonNull View view, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView4) {
        this.f21172a = linearLayout;
        this.f21173b = textView;
        this.f21174c = linearLayout2;
        this.f21175d = vipView;
        this.f21176e = view;
        this.f21177f = relativeLayout;
        this.f21178g = imageView;
        this.f21179h = textView2;
        this.f21180i = textView3;
        this.f21181j = simpleDraweeView;
        this.f21182k = textView4;
    }

    @NonNull
    public static ii a(@NonNull View view) {
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
                                                return new ii((LinearLayout) view, textView, linearLayout, vipView, findChildViewById, relativeLayout, imageView, textView2, textView3, simpleDraweeView, textView4);
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
    public static ii c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ii d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_detail_comment_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21172a;
    }
}
