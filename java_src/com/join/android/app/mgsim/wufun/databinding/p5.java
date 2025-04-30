package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ChioceItemRecommand2FooterBinding.java */
/* loaded from: classes3.dex */
public final class p5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23476a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23477b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23478c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23479d;

    private p5(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f23476a = relativeLayout;
        this.f23477b = textView;
        this.f23478c = textView2;
        this.f23479d = textView3;
    }

    @NonNull
    public static p5 a(@NonNull View view) {
        int i2 = R.id.desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
        if (textView != null) {
            i2 = R.id.name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView2 != null) {
                i2 = R.id.rank;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.rank);
                if (textView3 != null) {
                    return new p5((RelativeLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static p5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.chioce_item_recommand_2_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23476a;
    }
}
