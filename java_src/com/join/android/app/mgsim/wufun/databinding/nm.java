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
/* compiled from: GameinformationCommitItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class nm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22922a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22923b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f22924c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22925d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final VipView f22926e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f22927f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f22928g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22929h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f22930i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22931j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f22932k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final SimpleDraweeView f22933l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f22934m;

    private nm(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull VipView vipView, @NonNull View view, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView6) {
        this.f22922a = linearLayout;
        this.f22923b = textView;
        this.f22924c = linearLayout2;
        this.f22925d = textView2;
        this.f22926e = vipView;
        this.f22927f = view;
        this.f22928g = relativeLayout;
        this.f22929h = textView3;
        this.f22930i = imageView;
        this.f22931j = textView4;
        this.f22932k = textView5;
        this.f22933l = simpleDraweeView;
        this.f22934m = textView6;
    }

    @NonNull
    public static nm a(@NonNull View view) {
        int i2 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i2 = R.id.lLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lLayout);
            if (linearLayout != null) {
                i2 = R.id.levelTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.levelTv);
                if (textView2 != null) {
                    i2 = R.id.levelVip;
                    VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.levelVip);
                    if (vipView != null) {
                        i2 = R.id.line;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                        if (findChildViewById != null) {
                            i2 = R.id.main;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.main);
                            if (relativeLayout != null) {
                                i2 = R.id.more;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.more);
                                if (textView3 != null) {
                                    i2 = R.id.parise;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.parise);
                                    if (imageView != null) {
                                        i2 = R.id.pariseNumber;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.pariseNumber);
                                        if (textView4 != null) {
                                            i2 = R.id.time;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                                            if (textView5 != null) {
                                                i2 = R.id.usericon;
                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.usericon);
                                                if (simpleDraweeView != null) {
                                                    i2 = R.id.username;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.username);
                                                    if (textView6 != null) {
                                                        return new nm((LinearLayout) view, textView, linearLayout, textView2, vipView, findChildViewById, relativeLayout, textView3, imageView, textView4, textView5, simpleDraweeView, textView6);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static nm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gameinformation_commit_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22922a;
    }
}
