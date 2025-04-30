package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import java.util.Objects;
/* compiled from: ItemSearchHintViewflipperBinding.java */
/* loaded from: classes3.dex */
public final class vr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final TextView f25913a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25914b;

    private vr(@NonNull TextView textView, @NonNull TextView textView2) {
        this.f25913a = textView;
        this.f25914b = textView2;
    }

    @NonNull
    public static vr a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        TextView textView = (TextView) view;
        return new vr(textView, textView);
    }

    @NonNull
    public static vr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_search_hint_viewflipper, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public TextView getRoot() {
        return this.f25913a;
    }
}
