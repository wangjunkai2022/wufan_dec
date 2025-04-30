package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MygameGuesslikeActivityBinding.java */
/* loaded from: classes3.dex */
public final class c50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18784a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18785b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f18786c;

    private c50(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView) {
        this.f18784a = linearLayout;
        this.f18785b = linearLayout2;
        this.f18786c = recyclerView;
    }

    @NonNull
    public static c50 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
        if (recyclerView != null) {
            return new c50(linearLayout, linearLayout, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recyclerView)));
    }

    @NonNull
    public static c50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mygame_guesslike_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18784a;
    }
}
