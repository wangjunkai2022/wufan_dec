package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LocalFightLayoutBinding.java */
/* loaded from: classes3.dex */
public final class wv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26268a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ListView f26269b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final qc0 f26270c;

    private wv(@NonNull LinearLayout linearLayout, @NonNull ListView listView, @NonNull qc0 qc0Var) {
        this.f26268a = linearLayout;
        this.f26269b = listView;
        this.f26270c = qc0Var;
    }

    @NonNull
    public static wv a(@NonNull View view) {
        int i2 = R.id.localFightListView;
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.localFightListView);
        if (listView != null) {
            i2 = R.id.title_bar_layout;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
            if (findChildViewById != null) {
                return new wv((LinearLayout) view, listView, qc0.a(findChildViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.local_fight_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26268a;
    }
}
