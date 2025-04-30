package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameSingleCompanyItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class lj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22151a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22152b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22153c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22154d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22155e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f22156f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f22157g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f22158h;

    private lj(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull RelativeLayout relativeLayout) {
        this.f22151a = linearLayout;
        this.f22152b = textView;
        this.f22153c = textView2;
        this.f22154d = textView3;
        this.f22155e = textView4;
        this.f22156f = simpleDraweeView;
        this.f22157g = simpleDraweeView2;
        this.f22158h = relativeLayout;
    }

    @NonNull
    public static lj a(@NonNull View view) {
        int i2 = R.id.appNumberLeft;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appNumberLeft);
        if (textView != null) {
            i2 = R.id.appNumberRight;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appNumberRight);
            if (textView2 != null) {
                i2 = R.id.companyLeft;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.companyLeft);
                if (textView3 != null) {
                    i2 = R.id.companyRight;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.companyRight);
                    if (textView4 != null) {
                        i2 = R.id.imageLeft;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imageLeft);
                        if (simpleDraweeView != null) {
                            i2 = R.id.imageRight;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imageRight);
                            if (simpleDraweeView2 != null) {
                                i2 = R.id.rightLayout;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rightLayout);
                                if (relativeLayout != null) {
                                    return new lj((LinearLayout) view, textView, textView2, textView3, textView4, simpleDraweeView, simpleDraweeView2, relativeLayout);
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
    public static lj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_single_company_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22151a;
    }
}
