package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PopMyGameFilterBinding.java */
/* loaded from: classes3.dex */
public final class s80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24744a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f24745b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ListView f24746c;

    private s80(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull ListView listView) {
        this.f24744a = constraintLayout;
        this.f24745b = view;
        this.f24746c = listView;
    }

    @NonNull
    public static s80 a(@NonNull View view) {
        int i2 = R.id.bg;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg);
        if (findChildViewById != null) {
            i2 = R.id.list;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.list);
            if (listView != null) {
                return new s80((ConstraintLayout) view, findChildViewById, listView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static s80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_my_game_filter, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24744a;
    }
}
