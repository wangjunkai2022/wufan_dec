package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MStarBar;
import it.sephiroth.android.library.widget.HListView;
/* compiled from: GamelistDetialItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class sm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24886a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f24887b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24888c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f24889d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f24890e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24891f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final HListView f24892g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final MStarBar f24893h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24894i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f24895j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24896k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f24897l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f24898m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ImageView f24899n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f24900o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final SimpleDraweeView f24901p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f24902q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final HListView f24903r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final LinearLayout f24904s;

    private sm(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull HListView hListView, @NonNull MStarBar mStarBar, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull LinearLayout linearLayout4, @NonNull TextView textView6, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout5, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout6, @NonNull HListView hListView2, @NonNull LinearLayout linearLayout7) {
        this.f24886a = linearLayout;
        this.f24887b = simpleDraweeView;
        this.f24888c = textView;
        this.f24889d = linearLayout2;
        this.f24890e = linearLayout3;
        this.f24891f = textView2;
        this.f24892g = hListView;
        this.f24893h = mStarBar;
        this.f24894i = textView3;
        this.f24895j = textView4;
        this.f24896k = textView5;
        this.f24897l = linearLayout4;
        this.f24898m = textView6;
        this.f24899n = imageView;
        this.f24900o = linearLayout5;
        this.f24901p = simpleDraweeView2;
        this.f24902q = linearLayout6;
        this.f24903r = hListView2;
        this.f24904s = linearLayout7;
    }

    @NonNull
    public static sm a(@NonNull View view) {
        int i2 = R.id.appIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.appName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
            if (textView != null) {
                i2 = R.id.appRecomLayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.appRecomLayout);
                if (linearLayout != null) {
                    i2 = R.id.backLayout;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.backLayout);
                    if (linearLayout2 != null) {
                        i2 = R.id.bottom;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.bottom);
                        if (textView2 != null) {
                            i2 = R.id.comment;
                            HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.comment);
                            if (hListView != null) {
                                i2 = R.id.comment_head_mstarBar;
                                MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(view, R.id.comment_head_mstarBar);
                                if (mStarBar != null) {
                                    i2 = R.id.comment_head_num_tx;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_head_num_tx);
                                    if (textView3 != null) {
                                        i2 = R.id.comment_head_point_tx;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_head_point_tx);
                                        if (textView4 != null) {
                                            i2 = R.id.describ;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.describ);
                                            if (textView5 != null) {
                                                i2 = R.id.describLayout;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.describLayout);
                                                if (linearLayout3 != null) {
                                                    i2 = R.id.downButnText;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.downButnText);
                                                    if (textView6 != null) {
                                                        i2 = R.id.downIcon;
                                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.downIcon);
                                                        if (imageView != null) {
                                                            i2 = R.id.downloadButn;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.downloadButn);
                                                            if (linearLayout4 != null) {
                                                                i2 = R.id.moveImg;
                                                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.moveImg);
                                                                if (simpleDraweeView2 != null) {
                                                                    i2 = R.id.scoreLayout;
                                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.scoreLayout);
                                                                    if (linearLayout5 != null) {
                                                                        i2 = R.id.screenListView;
                                                                        HListView hListView2 = (HListView) ViewBindings.findChildViewById(view, R.id.screenListView);
                                                                        if (hListView2 != null) {
                                                                            i2 = R.id.tips;
                                                                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tips);
                                                                            if (linearLayout6 != null) {
                                                                                return new sm((LinearLayout) view, simpleDraweeView, textView, linearLayout, linearLayout2, textView2, hListView, mStarBar, textView3, textView4, textView5, linearLayout3, textView6, imageView, linearLayout4, simpleDraweeView2, linearLayout5, hListView2, linearLayout6);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamelist_detial_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24886a;
    }
}
