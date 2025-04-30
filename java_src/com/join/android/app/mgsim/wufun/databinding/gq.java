package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
/* compiled from: ItemGameDetailSimilarViewBinding.java */
/* loaded from: classes3.dex */
public final class gq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20541a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20542b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f20543c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f20544d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f20545e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20546f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20547g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f20548h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f20549i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f20550j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f20551k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f20552l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f20553m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f20554n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f20555o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f20556p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f20557q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f20558r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final HListView f20559s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final LinearLayout f20560t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final LinearLayout f20561u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f20562v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f20563w;

    private gq(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout5, @NonNull HListView hListView, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull TextView textView9, @NonNull TextView textView10) {
        this.f20541a = linearLayout;
        this.f20542b = textView;
        this.f20543c = linearLayout2;
        this.f20544d = linearLayout3;
        this.f20545e = linearLayout4;
        this.f20546f = textView2;
        this.f20547g = textView3;
        this.f20548h = textView4;
        this.f20549i = simpleDraweeView;
        this.f20550j = textView5;
        this.f20551k = textView6;
        this.f20552l = textView7;
        this.f20553m = textView8;
        this.f20554n = progressBar;
        this.f20555o = progressBar2;
        this.f20556p = relativeLayout;
        this.f20557q = relativeLayout2;
        this.f20558r = linearLayout5;
        this.f20559s = hListView;
        this.f20560t = linearLayout6;
        this.f20561u = linearLayout7;
        this.f20562v = textView9;
        this.f20563w = textView10;
    }

    @NonNull
    public static gq a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.backLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.backLayout);
            if (linearLayout != null) {
                i2 = R.id.linearLayout;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
                if (linearLayout2 != null) {
                    i2 = R.id.linearLayout2;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                    if (linearLayout3 != null) {
                        i2 = R.id.loding_info;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.loding_info);
                        if (textView2 != null) {
                            i2 = R.id.mgListviewItemAppname;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemAppname);
                            if (textView3 != null) {
                                i2 = R.id.mgListviewItemDescribe;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemDescribe);
                                if (textView4 != null) {
                                    i2 = R.id.mgListviewItemIcon;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.mgListviewItemIcon);
                                    if (simpleDraweeView != null) {
                                        i2 = R.id.mgListviewItemInstall;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemInstall);
                                        if (textView5 != null) {
                                            i2 = R.id.moneyText;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                            if (textView6 != null) {
                                                i2 = R.id.moneyText2;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText2);
                                                if (textView7 != null) {
                                                    i2 = R.id.privilege;
                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.privilege);
                                                    if (textView8 != null) {
                                                        i2 = R.id.progressBar;
                                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                                        if (progressBar != null) {
                                                            i2 = R.id.progressBarZip;
                                                            ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                                            if (progressBar2 != null) {
                                                                i2 = R.id.rLayoutRight;
                                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight);
                                                                if (relativeLayout != null) {
                                                                    i2 = R.id.rLayoutRight2;
                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight2);
                                                                    if (relativeLayout2 != null) {
                                                                        i2 = R.id.rl_item;
                                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rl_item);
                                                                        if (linearLayout4 != null) {
                                                                            i2 = R.id.screenListView;
                                                                            HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.screenListView);
                                                                            if (hListView != null) {
                                                                                i2 = R.id.tipsLayout;
                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                                                if (linearLayout5 != null) {
                                                                                    i2 = R.id.tipsLayout1;
                                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout1);
                                                                                    if (linearLayout6 != null) {
                                                                                        i2 = R.id.tv_content;
                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_content);
                                                                                        if (textView9 != null) {
                                                                                            i2 = R.id.tv_delect_game;
                                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_delect_game);
                                                                                            if (textView10 != null) {
                                                                                                return new gq((LinearLayout) view, textView, linearLayout, linearLayout2, linearLayout3, textView2, textView3, textView4, simpleDraweeView, textView5, textView6, textView7, textView8, progressBar, progressBar2, relativeLayout, relativeLayout2, linearLayout4, hListView, linearLayout5, linearLayout6, textView9, textView10);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_detail_similar_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20541a;
    }
}
