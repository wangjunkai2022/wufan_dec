package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PopModGameDeleteGameBinding.java */
/* loaded from: classes3.dex */
public final class o80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f23171a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23172b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23173c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f23174d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f23175e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f23176f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f23177g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23178h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23179i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f23180j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f23181k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f23182l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final View f23183m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final View f23184n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final View f23185o;

    private o80(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView5, @NonNull View view, @NonNull View view2, @NonNull View view3) {
        this.f23171a = constraintLayout;
        this.f23172b = textView;
        this.f23173c = textView2;
        this.f23174d = simpleDraweeView;
        this.f23175e = simpleDraweeView2;
        this.f23176f = imageView;
        this.f23177g = imageView2;
        this.f23178h = textView3;
        this.f23179i = textView4;
        this.f23180j = relativeLayout;
        this.f23181k = relativeLayout2;
        this.f23182l = textView5;
        this.f23183m = view;
        this.f23184n = view2;
        this.f23185o = view3;
    }

    @NonNull
    public static o80 a(@NonNull View view) {
        int i2 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i2 = R.id.delete;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.delete);
            if (textView2 != null) {
                i2 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                if (simpleDraweeView != null) {
                    i2 = R.id.icon_mod;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon_mod);
                    if (simpleDraweeView2 != null) {
                        i2 = R.id.iv_mod_check;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_mod_check);
                        if (imageView != null) {
                            i2 = R.id.iv_stand_check;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_stand_check);
                            if (imageView2 != null) {
                                i2 = R.id.name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                if (textView3 != null) {
                                    i2 = R.id.name_mod;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.name_mod);
                                    if (textView4 != null) {
                                        i2 = R.id.rl_mod;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_mod);
                                        if (relativeLayout != null) {
                                            i2 = R.id.rl_stand;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_stand);
                                            if (relativeLayout2 != null) {
                                                i2 = R.id.tv_title;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                if (textView5 != null) {
                                                    i2 = R.id.v_line;
                                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.v_line);
                                                    if (findChildViewById != null) {
                                                        i2 = R.id.view5;
                                                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.view5);
                                                        if (findChildViewById2 != null) {
                                                            i2 = R.id.view8;
                                                            View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.view8);
                                                            if (findChildViewById3 != null) {
                                                                return new o80((ConstraintLayout) view, textView, textView2, simpleDraweeView, simpleDraweeView2, imageView, imageView2, textView3, textView4, relativeLayout, relativeLayout2, textView5, findChildViewById, findChildViewById2, findChildViewById3);
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
    public static o80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_mod_game_delete_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f23171a;
    }
}
