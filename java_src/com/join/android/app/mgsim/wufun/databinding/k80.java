package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PopBattleAreaBinding.java */
/* loaded from: classes3.dex */
public final class k80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21733a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21734b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21735c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f21736d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f21737e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f21738f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f21739g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f21740h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f21741i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ListView f21742j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f21743k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f21744l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f21745m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f21746n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final RelativeLayout f21747o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f21748p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f21749q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f21750r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f21751s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final View f21752t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final View f21753u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final View f21754v;

    private k80(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull View view, @NonNull View view2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ListView listView, @NonNull LinearLayout linearLayout3, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull RelativeLayout relativeLayout5, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull View view3, @NonNull View view4, @NonNull View view5) {
        this.f21733a = linearLayout;
        this.f21734b = linearLayout2;
        this.f21735c = textView;
        this.f21736d = view;
        this.f21737e = view2;
        this.f21738f = imageView;
        this.f21739g = imageView2;
        this.f21740h = imageView3;
        this.f21741i = imageView4;
        this.f21742j = listView;
        this.f21743k = linearLayout3;
        this.f21744l = relativeLayout;
        this.f21745m = relativeLayout2;
        this.f21746n = relativeLayout3;
        this.f21747o = relativeLayout4;
        this.f21748p = relativeLayout5;
        this.f21749q = textView2;
        this.f21750r = textView3;
        this.f21751s = textView4;
        this.f21752t = view3;
        this.f21753u = view4;
        this.f21754v = view5;
    }

    @NonNull
    public static k80 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.area_title;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.area_title);
        if (textView != null) {
            i2 = R.id.dot;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.dot);
            if (findChildViewById != null) {
                i2 = R.id.emptyView;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.emptyView);
                if (findChildViewById2 != null) {
                    i2 = R.id.iv_arrow;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_arrow);
                    if (imageView != null) {
                        i2 = R.id.iv_bj_battle_area_rec;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bj_battle_area_rec);
                        if (imageView2 != null) {
                            i2 = R.id.iv_gz_battle_area_rec;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_gz_battle_area_rec);
                            if (imageView3 != null) {
                                i2 = R.id.iv_sh_battle_area_rec;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_sh_battle_area_rec);
                                if (imageView4 != null) {
                                    i2 = R.id.listview;
                                    ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.listview);
                                    if (listView != null) {
                                        i2 = R.id.rl_areas;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rl_areas);
                                        if (linearLayout2 != null) {
                                            i2 = R.id.rl_bj;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_bj);
                                            if (relativeLayout != null) {
                                                i2 = R.id.rl_games;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_games);
                                                if (relativeLayout2 != null) {
                                                    i2 = R.id.rl_gz;
                                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_gz);
                                                    if (relativeLayout3 != null) {
                                                        i2 = R.id.rl_sel;
                                                        RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_sel);
                                                        if (relativeLayout4 != null) {
                                                            i2 = R.id.rl_sh;
                                                            RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_sh);
                                                            if (relativeLayout5 != null) {
                                                                i2 = R.id.tv_bj;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bj);
                                                                if (textView2 != null) {
                                                                    i2 = R.id.tv_gz;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_gz);
                                                                    if (textView3 != null) {
                                                                        i2 = R.id.tv_sh;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sh);
                                                                        if (textView4 != null) {
                                                                            i2 = R.id.view_bj;
                                                                            View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.view_bj);
                                                                            if (findChildViewById3 != null) {
                                                                                i2 = R.id.view_gz;
                                                                                View findChildViewById4 = ViewBindings.findChildViewById(view, R.id.view_gz);
                                                                                if (findChildViewById4 != null) {
                                                                                    i2 = R.id.view_sh;
                                                                                    View findChildViewById5 = ViewBindings.findChildViewById(view, R.id.view_sh);
                                                                                    if (findChildViewById5 != null) {
                                                                                        return new k80(linearLayout, linearLayout, textView, findChildViewById, findChildViewById2, imageView, imageView2, imageView3, imageView4, listView, linearLayout2, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, textView2, textView3, textView4, findChildViewById3, findChildViewById4, findChildViewById5);
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
    public static k80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_battle_area, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21733a;
    }
}
