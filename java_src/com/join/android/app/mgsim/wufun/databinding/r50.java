package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: NewarenaGameroomSelecterActivity2Binding.java */
/* loaded from: classes3.dex */
public final class r50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24234a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24235b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f24236c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f24237d;

    private r50(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout2, @NonNull RecyclerView recyclerView) {
        this.f24234a = constraintLayout;
        this.f24235b = imageView;
        this.f24236c = constraintLayout2;
        this.f24237d = recyclerView;
    }

    @NonNull
    public static r50 a(@NonNull View view) {
        int i2 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerViewGamelist);
            if (recyclerView != null) {
                return new r50(constraintLayout, imageView, constraintLayout, recyclerView);
            }
            i2 = R.id.recyclerViewGamelist;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static r50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.newarena_gameroom_selecter_activity2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24234a;
    }
}
