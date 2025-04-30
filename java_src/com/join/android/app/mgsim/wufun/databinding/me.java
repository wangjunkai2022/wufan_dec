package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: EverdayNewFragmentBinding.java */
/* loaded from: classes3.dex */
public final class me implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22507a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final re f22508b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final yv f22509c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XRecyclerView f22510d;

    private me(@NonNull LinearLayout linearLayout, @NonNull re reVar, @NonNull yv yvVar, @NonNull XRecyclerView xRecyclerView) {
        this.f22507a = linearLayout;
        this.f22508b = reVar;
        this.f22509c = yvVar;
        this.f22510d = xRecyclerView;
    }

    @NonNull
    public static me a(@NonNull View view) {
        int i2 = R.id.failedLayoutMain;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.failedLayoutMain);
        if (findChildViewById != null) {
            re a4 = re.a(findChildViewById);
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.loadingLayoutMain);
            if (findChildViewById2 != null) {
                yv a5 = yv.a(findChildViewById2);
                XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.recycleView);
                if (xRecyclerView != null) {
                    return new me((LinearLayout) view, a4, a5, xRecyclerView);
                }
                i2 = R.id.recycleView;
            } else {
                i2 = R.id.loadingLayoutMain;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static me c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static me d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.everday_new_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22507a;
    }
}
