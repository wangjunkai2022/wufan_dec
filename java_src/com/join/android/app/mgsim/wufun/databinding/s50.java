package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: NewarenaGameroomSelecterActivityBinding.java */
/* loaded from: classes3.dex */
public final class s50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24712a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24713b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f24714c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f24715d;

    private s50(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2) {
        this.f24712a = linearLayout;
        this.f24713b = imageView;
        this.f24714c = recyclerView;
        this.f24715d = recyclerView2;
    }

    @NonNull
    public static s50 a(@NonNull View view) {
        int i2 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i2 = R.id.recyclerView;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
            if (recyclerView != null) {
                i2 = R.id.recyclerViewGamelist;
                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerViewGamelist);
                if (recyclerView2 != null) {
                    return new s50((LinearLayout) view, imageView, recyclerView, recyclerView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static s50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.newarena_gameroom_selecter_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24712a;
    }
}
