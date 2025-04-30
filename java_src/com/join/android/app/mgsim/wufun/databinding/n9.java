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
import com.join.mgps.customview.CopyTextView;
import com.join.mgps.customview.CopyTextViewNew;
import com.join.mgps.customview.VipView;
/* compiled from: DetailCommitItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class n9 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22793a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CopyTextView f22794b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CopyTextViewNew f22795c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22796d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f22797e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final VipView f22798f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f22799g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f22800h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f22801i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22802j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f22803k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final SimpleDraweeView f22804l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f22805m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f22806n;

    private n9(@NonNull RelativeLayout relativeLayout, @NonNull CopyTextView copyTextView, @NonNull CopyTextViewNew copyTextViewNew, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull VipView vipView, @NonNull View view, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView4, @NonNull RelativeLayout relativeLayout3) {
        this.f22793a = relativeLayout;
        this.f22794b = copyTextView;
        this.f22795c = copyTextViewNew;
        this.f22796d = textView;
        this.f22797e = linearLayout;
        this.f22798f = vipView;
        this.f22799g = view;
        this.f22800h = relativeLayout2;
        this.f22801i = imageView;
        this.f22802j = textView2;
        this.f22803k = textView3;
        this.f22804l = simpleDraweeView;
        this.f22805m = textView4;
        this.f22806n = relativeLayout3;
    }

    @NonNull
    public static n9 a(@NonNull View view) {
        int i2 = R.id.content;
        CopyTextView copyTextView = (CopyTextView) ViewBindings.findChildViewById(view, R.id.content);
        if (copyTextView != null) {
            i2 = R.id.contentWeb;
            CopyTextViewNew copyTextViewNew = (CopyTextViewNew) ViewBindings.findChildViewById(view, R.id.contentWeb);
            if (copyTextViewNew != null) {
                i2 = R.id.isConnoisseurs;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.isConnoisseurs);
                if (textView != null) {
                    i2 = R.id.lLayout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lLayout);
                    if (linearLayout != null) {
                        i2 = R.id.levelTv;
                        VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.levelTv);
                        if (vipView != null) {
                            i2 = R.id.line0;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.line0);
                            if (findChildViewById != null) {
                                RelativeLayout relativeLayout = (RelativeLayout) view;
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
                                                    i2 = R.id.usernameRl;
                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.usernameRl);
                                                    if (relativeLayout2 != null) {
                                                        return new n9(relativeLayout, copyTextView, copyTextViewNew, textView, linearLayout, vipView, findChildViewById, relativeLayout, imageView, textView2, textView3, simpleDraweeView, textView4, relativeLayout2);
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
    public static n9 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n9 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detail_commit_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22793a;
    }
}
