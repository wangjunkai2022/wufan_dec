package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemSimulatorEncyclopediaViewBinding.java */
/* loaded from: classes3.dex */
public final class ds implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19490a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f19491b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19492c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f19493d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19494e;

    private ds(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2) {
        this.f19490a = linearLayout;
        this.f19491b = simpleDraweeView;
        this.f19492c = textView;
        this.f19493d = linearLayout2;
        this.f19494e = textView2;
    }

    @NonNull
    public static ds a(@NonNull View view) {
        int i2 = R.id.simulator_encyclopedia_iv;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.simulator_encyclopedia_iv);
        if (simpleDraweeView != null) {
            i2 = R.id.simulator_encyclopedia_label_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.simulator_encyclopedia_label_tv);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i2 = R.id.simulator_encyclopedia_title_tv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.simulator_encyclopedia_title_tv);
                if (textView2 != null) {
                    return new ds(linearLayout, simpleDraweeView, textView, linearLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ds c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ds d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_simulator_encyclopedia_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19490a;
    }
}
