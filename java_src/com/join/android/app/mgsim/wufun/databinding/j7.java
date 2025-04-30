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
import com.join.mgps.customview.XListView;
/* compiled from: CollectionFiveBinding.java */
/* loaded from: classes3.dex */
public final class j7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21391a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView f21392b;

    private j7(@NonNull LinearLayout linearLayout, @NonNull XListView xListView) {
        this.f21391a = linearLayout;
        this.f21392b = xListView;
    }

    @NonNull
    public static j7 a(@NonNull View view) {
        XListView xListView = (XListView) ViewBindings.findChildViewById(view, R.id.gridListView);
        if (xListView != null) {
            return new j7((LinearLayout) view, xListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.gridListView)));
    }

    @NonNull
    public static j7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.collection_five, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21391a;
    }
}
