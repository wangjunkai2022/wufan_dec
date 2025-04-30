package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentGamelistBinding.java */
/* loaded from: classes3.dex */
public final class vg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25842a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f25843b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XRecyclerView f25844c;

    private vg(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull XRecyclerView xRecyclerView) {
        this.f25842a = relativeLayout;
        this.f25843b = relativeLayout2;
        this.f25844c = xRecyclerView;
    }

    @NonNull
    public static vg a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.listView2);
        if (xRecyclerView != null) {
            return new vg(relativeLayout, relativeLayout, xRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.listView2)));
    }

    @NonNull
    public static vg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_gamelist, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25842a;
    }
}
