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
/* compiled from: ChioceItemRecommand1CoverBinding.java */
/* loaded from: classes3.dex */
public final class n5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22747a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f22748b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22749c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f22750d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f22751e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f22752f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22753g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22754h;

    private n5(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f22747a = relativeLayout;
        this.f22748b = simpleDraweeView;
        this.f22749c = textView;
        this.f22750d = simpleDraweeView2;
        this.f22751e = linearLayout;
        this.f22752f = relativeLayout2;
        this.f22753g = textView2;
        this.f22754h = textView3;
    }

    @NonNull
    public static n5 a(@NonNull View view) {
        int i2 = R.id.cover;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.cover);
        if (simpleDraweeView != null) {
            i2 = R.id.desc;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
            if (textView != null) {
                i2 = R.id.icon;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                if (simpleDraweeView2 != null) {
                    i2 = R.id.ll;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll);
                    if (linearLayout != null) {
                        i2 = R.id.main;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.main);
                        if (relativeLayout != null) {
                            i2 = R.id.name;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                            if (textView2 != null) {
                                i2 = R.id.rank;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.rank);
                                if (textView3 != null) {
                                    return new n5((RelativeLayout) view, simpleDraweeView, textView, simpleDraweeView2, linearLayout, relativeLayout, textView2, textView3);
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
    public static n5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.chioce_item_recommand_1_cover, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22747a;
    }
}
