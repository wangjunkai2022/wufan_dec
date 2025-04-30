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
/* compiled from: ChioceItemDayGameFooterBinding.java */
/* loaded from: classes3.dex */
public final class g5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20321a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20322b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20323c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20324d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f20325e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f20326f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20327g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f20328h;

    private g5(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f20321a = relativeLayout;
        this.f20322b = textView;
        this.f20323c = textView2;
        this.f20324d = textView3;
        this.f20325e = simpleDraweeView;
        this.f20326f = linearLayout;
        this.f20327g = textView4;
        this.f20328h = textView5;
    }

    @NonNull
    public static g5 a(@NonNull View view) {
        int i2 = R.id.desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
        if (textView != null) {
            i2 = R.id.from;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.from);
            if (textView2 != null) {
                i2 = R.id.fromFlag;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.fromFlag);
                if (textView3 != null) {
                    i2 = R.id.icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.ll;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll);
                        if (linearLayout != null) {
                            i2 = R.id.name;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                            if (textView4 != null) {
                                i2 = R.id.rank;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.rank);
                                if (textView5 != null) {
                                    return new g5((RelativeLayout) view, textView, textView2, textView3, simpleDraweeView, linearLayout, textView4, textView5);
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
    public static g5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.chioce_item_day_game_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20321a;
    }
}
