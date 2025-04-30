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
/* compiled from: NewarenaRoomselecterItemBinding.java */
/* loaded from: classes3.dex */
public final class t50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25095a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25096b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25097c;

    private t50(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f25095a = linearLayout;
        this.f25096b = linearLayout2;
        this.f25097c = textView;
    }

    @NonNull
    public static t50 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
        if (textView != null) {
            return new t50(linearLayout, linearLayout, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.name)));
    }

    @NonNull
    public static t50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.newarena_roomselecter_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25095a;
    }
}
