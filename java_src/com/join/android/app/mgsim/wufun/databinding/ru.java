package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutSimulatorTitleBinding.java */
/* loaded from: classes3.dex */
public final class ru implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24517a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f24518b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24519c;

    private ru(@NonNull ConstraintLayout constraintLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f24517a = constraintLayout;
        this.f24518b = linearLayout;
        this.f24519c = textView;
    }

    @NonNull
    public static ru a(@NonNull View view) {
        int i2 = R.id.llMore;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llMore);
        if (linearLayout != null) {
            i2 = R.id.title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
            if (textView != null) {
                return new ru((ConstraintLayout) view, linearLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ru c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ru d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_simulator_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24517a;
    }
}
