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
/* compiled from: PopSelectPostingGroupBinding.java */
/* loaded from: classes3.dex */
public final class x80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26486a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ListView f26487b;

    private x80(@NonNull LinearLayout linearLayout, @NonNull ListView listView) {
        this.f26486a = linearLayout;
        this.f26487b = listView;
    }

    @NonNull
    public static x80 a(@NonNull View view) {
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.mListView);
        if (listView != null) {
            return new x80((LinearLayout) view, listView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.mListView)));
    }

    @NonNull
    public static x80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_select_posting_group, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26486a;
    }
}
