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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PopMyGamePlugBinding.java */
/* loaded from: classes3.dex */
public final class v80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25779a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25780b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25781c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f25782d;

    private v80(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view) {
        this.f25779a = linearLayout;
        this.f25780b = textView;
        this.f25781c = textView2;
        this.f25782d = view;
    }

    @NonNull
    public static v80 a(@NonNull View view) {
        int i2 = R.id.delete;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.delete);
        if (textView != null) {
            i2 = R.id.detail;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.detail);
            if (textView2 != null) {
                i2 = R.id.line;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                if (findChildViewById != null) {
                    return new v80((LinearLayout) view, textView, textView2, findChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static v80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_my_game_plug, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25779a;
    }
}
