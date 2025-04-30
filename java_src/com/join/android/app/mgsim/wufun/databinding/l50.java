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
/* compiled from: NetworkPspDialogBinding.java */
/* loaded from: classes3.dex */
public final class l50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22027a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ListView f22028b;

    private l50(@NonNull LinearLayout linearLayout, @NonNull ListView listView) {
        this.f22027a = linearLayout;
        this.f22028b = listView;
    }

    @NonNull
    public static l50 a(@NonNull View view) {
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.listview);
        if (listView != null) {
            return new l50((LinearLayout) view, listView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.listview)));
    }

    @NonNull
    public static l50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.network_psp_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22027a;
    }
}
