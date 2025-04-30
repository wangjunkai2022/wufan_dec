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
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
/* compiled from: ActivityGameDetailBinding.java */
/* loaded from: classes3.dex */
public final class f0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19930a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19931b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f19932c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f19933d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f19934e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f19935f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final XListView2 f19936g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f19937h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f19938i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f19939j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f19940k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final SimpleDraweeView f19941l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f19942m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f19943n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final SimpleDraweeView f19944o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f19945p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f19946q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f19947r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f19948s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f19949t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final XRecyclerView f19950u;

    private f0(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull XListView2 xListView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull RelativeLayout relativeLayout4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout5, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull XRecyclerView xRecyclerView) {
        this.f19930a = relativeLayout;
        this.f19931b = textView;
        this.f19932c = relativeLayout2;
        this.f19933d = relativeLayout3;
        this.f19934e = linearLayout;
        this.f19935f = imageView;
        this.f19936g = xListView2;
        this.f19937h = linearLayout2;
        this.f19938i = linearLayout3;
        this.f19939j = linearLayout4;
        this.f19940k = relativeLayout4;
        this.f19941l = simpleDraweeView;
        this.f19942m = relativeLayout5;
        this.f19943n = textView2;
        this.f19944o = simpleDraweeView2;
        this.f19945p = textView3;
        this.f19946q = textView4;
        this.f19947r = textView5;
        this.f19948s = textView6;
        this.f19949t = textView7;
        this.f19950u = xRecyclerView;
    }

    @NonNull
    public static f0 a(@NonNull View view) {
        int i2 = R.id.changeModle;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.changeModle);
        if (textView != null) {
            i2 = R.id.image_cover;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.image_cover);
            if (relativeLayout != null) {
                i2 = R.id.iv_back;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.iv_back);
                if (relativeLayout2 != null) {
                    i2 = R.id.iv_nome;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_nome);
                    if (linearLayout != null) {
                        i2 = R.id.iv_share;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_share);
                        if (imageView != null) {
                            i2 = R.id.listview;
                            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listview);
                            if (xListView2 != null) {
                                i2 = R.id.ll_gameform_title2;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_gameform_title2);
                                if (linearLayout2 != null) {
                                    i2 = R.id.main;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                                    if (linearLayout3 != null) {
                                        i2 = R.id.myswip;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.myswip);
                                        if (linearLayout4 != null) {
                                            i2 = R.id.rl_back_title;
                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_back_title);
                                            if (relativeLayout3 != null) {
                                                i2 = R.id.smv_icon;
                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.smv_icon);
                                                if (simpleDraweeView != null) {
                                                    i2 = R.id.smv_icon2;
                                                    RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.smv_icon2);
                                                    if (relativeLayout4 != null) {
                                                        i2 = R.id.title;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                        if (textView2 != null) {
                                                            i2 = R.id.topBack;
                                                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.topBack);
                                                            if (simpleDraweeView2 != null) {
                                                                i2 = R.id.tv_btn;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_btn);
                                                                if (textView3 != null) {
                                                                    i2 = R.id.tv_game_title2;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_game_title2);
                                                                    if (textView4 != null) {
                                                                        i2 = R.id.tv_modify2;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_modify2);
                                                                        if (textView5 != null) {
                                                                            i2 = R.id.tv_name;
                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                                                            if (textView6 != null) {
                                                                                i2 = R.id.tv_time;
                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                                                                                if (textView7 != null) {
                                                                                    i2 = R.id.xrecycleview;
                                                                                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.xrecycleview);
                                                                                    if (xRecyclerView != null) {
                                                                                        return new f0((RelativeLayout) view, textView, relativeLayout, relativeLayout2, linearLayout, imageView, xListView2, linearLayout2, linearLayout3, linearLayout4, relativeLayout3, simpleDraweeView, relativeLayout4, textView2, simpleDraweeView2, textView3, textView4, textView5, textView6, textView7, xRecyclerView);
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
    public static f0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_game_detail, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19930a;
    }
}
