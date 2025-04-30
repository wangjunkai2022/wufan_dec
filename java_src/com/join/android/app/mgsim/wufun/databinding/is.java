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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemSimulatorTitleViewBinding.java */
/* loaded from: classes3.dex */
public final class is implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21247a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f21248b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f21249c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21250d;

    private is(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.f21247a = linearLayout;
        this.f21248b = view;
        this.f21249c = relativeLayout;
        this.f21250d = textView;
    }

    @NonNull
    public static is a(@NonNull View view) {
        int i2 = R.id.line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
        if (findChildViewById != null) {
            i2 = R.id.simulator_right_rl;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.simulator_right_rl);
            if (relativeLayout != null) {
                i2 = R.id.simulator_title_tv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.simulator_title_tv);
                if (textView != null) {
                    return new is((LinearLayout) view, findChildViewById, relativeLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static is c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static is d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_simulator_title_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21247a;
    }
}
