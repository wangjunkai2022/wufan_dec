package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ObservableListView;
/* compiled from: FragmentListviewBinding.java */
/* loaded from: classes3.dex */
public final class yg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26931a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26932b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ObservableListView f26933c;

    private yg(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ObservableListView observableListView) {
        this.f26931a = linearLayout;
        this.f26932b = linearLayout2;
        this.f26933c = observableListView;
    }

    @NonNull
    public static yg a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        ObservableListView observableListView = (ObservableListView) ViewBindings.findChildViewById(view, R.id.listview);
        if (observableListView != null) {
            return new yg(linearLayout, linearLayout, observableListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.listview)));
    }

    @NonNull
    public static yg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_listview, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26931a;
    }
}
