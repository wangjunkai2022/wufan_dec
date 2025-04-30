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
/* compiled from: ForumGroupTagItemBinding.java */
/* loaded from: classes3.dex */
public final class mf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final TextView f22520a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22521b;

    private mf(@NonNull TextView textView, @NonNull TextView textView2) {
        this.f22520a = textView;
        this.f22521b = textView2;
    }

    @NonNull
    public static mf a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        TextView textView = (TextView) view;
        return new mf(textView, textView);
    }

    @NonNull
    public static mf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.forum_group_tag_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public TextView getRoot() {
        return this.f22520a;
    }
}
