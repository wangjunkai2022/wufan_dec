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
/* compiled from: GamedeItemBinding.java */
/* loaded from: classes3.dex */
public final class pj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23662a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23663b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23664c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f23665d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23666e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23667f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23668g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f23669h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23670i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f23671j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f23672k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f23673l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f23674m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f23675n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f23676o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f23677p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f23678q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f23679r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final LinearLayout f23680s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f23681t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f23682u;

    private pj(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull TextView textView9, @NonNull TextView textView10) {
        this.f23662a = linearLayout;
        this.f23663b = textView;
        this.f23664c = linearLayout2;
        this.f23665d = linearLayout3;
        this.f23666e = textView2;
        this.f23667f = textView3;
        this.f23668g = textView4;
        this.f23669h = simpleDraweeView;
        this.f23670i = textView5;
        this.f23671j = textView6;
        this.f23672k = textView7;
        this.f23673l = textView8;
        this.f23674m = progressBar;
        this.f23675n = progressBar2;
        this.f23676o = relativeLayout;
        this.f23677p = relativeLayout2;
        this.f23678q = linearLayout4;
        this.f23679r = linearLayout5;
        this.f23680s = linearLayout6;
        this.f23681t = textView9;
        this.f23682u = textView10;
    }

    @NonNull
    public static pj a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.linearLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
            if (linearLayout != null) {
                i2 = R.id.linearLayout2;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                if (linearLayout2 != null) {
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
                                                                    LinearLayout linearLayout3 = (LinearLayout) view;
                                                                    i2 = R.id.rl_item;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rl_item);
                                                                    if (linearLayout4 != null) {
                                                                        i2 = R.id.tipsLayout;
                                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                                        if (linearLayout5 != null) {
                                                                            i2 = R.id.tv_content;
                                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_content);
                                                                            if (textView9 != null) {
                                                                                i2 = R.id.tv_delect_game;
                                                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_delect_game);
                                                                                if (textView10 != null) {
                                                                                    return new pj(linearLayout3, textView, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, textView5, textView6, textView7, textView8, progressBar, progressBar2, relativeLayout, relativeLayout2, linearLayout3, linearLayout4, linearLayout5, textView9, textView10);
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
    public static pj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamede_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23662a;
    }
}
