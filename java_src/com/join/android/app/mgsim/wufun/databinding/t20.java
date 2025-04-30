package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgpapaLocalfightIncludeV2Binding.java */
/* loaded from: classes3.dex */
public final class t20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25056a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25057b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f25058c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f25059d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f25060e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f25061f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f25062g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f25063h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f25064i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f25065j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f25066k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f25067l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f25068m;

    private t20(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f25056a = constraintLayout;
        this.f25057b = textView;
        this.f25058c = simpleDraweeView;
        this.f25059d = view;
        this.f25060e = simpleDraweeView2;
        this.f25061f = linearLayout;
        this.f25062g = relativeLayout;
        this.f25063h = relativeLayout2;
        this.f25064i = relativeLayout3;
        this.f25065j = textView2;
        this.f25066k = textView3;
        this.f25067l = textView4;
        this.f25068m = textView5;
    }

    @NonNull
    public static t20 a(@NonNull View view) {
        int i2 = R.id.fight_appname;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.fight_appname);
        if (textView != null) {
            i2 = R.id.fightapp_image;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.fightapp_image);
            if (simpleDraweeView != null) {
                i2 = R.id.gradientView;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.gradientView);
                if (findChildViewById != null) {
                    i2 = R.id.ivDzg;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivDzg);
                    if (simpleDraweeView2 != null) {
                        i2 = R.id.llDailyNewIcon;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llDailyNewIcon);
                        if (linearLayout != null) {
                            i2 = R.id.rlDailyDiscovery;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlDailyDiscovery);
                            if (relativeLayout != null) {
                                i2 = R.id.rlDailyNew;
                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlDailyNew);
                                if (relativeLayout2 != null) {
                                    i2 = R.id.rlDzg;
                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlDzg);
                                    if (relativeLayout3 != null) {
                                        i2 = R.id.tvDailyNewCount;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvDailyNewCount);
                                        if (textView2 != null) {
                                            i2 = R.id.tvDialyNew;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvDialyNew);
                                            if (textView3 != null) {
                                                i2 = R.id.tvDzg;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvDzg);
                                                if (textView4 != null) {
                                                    i2 = R.id.tvDzgSub;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvDzgSub);
                                                    if (textView5 != null) {
                                                        return new t20((ConstraintLayout) view, textView, simpleDraweeView, findChildViewById, simpleDraweeView2, linearLayout, relativeLayout, relativeLayout2, relativeLayout3, textView2, textView3, textView4, textView5);
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
    public static t20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mgpapa_localfight_include_v2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25056a;
    }
}
