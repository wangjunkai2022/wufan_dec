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
/* compiled from: FragmentGamefromBinding.java */
/* loaded from: classes3.dex */
public final class ug implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25526a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XRecyclerView f25527b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25528c;

    private ug(@NonNull LinearLayout linearLayout, @NonNull XRecyclerView xRecyclerView, @NonNull LinearLayout linearLayout2) {
        this.f25526a = linearLayout;
        this.f25527b = xRecyclerView;
        this.f25528c = linearLayout2;
    }

    @NonNull
    public static ug a(@NonNull View view) {
        int i2 = R.id.comment_all_list;
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.comment_all_list);
        if (xRecyclerView != null) {
            i2 = R.id.iv_nome;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_nome);
            if (linearLayout != null) {
                return new ug((LinearLayout) view, xRecyclerView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ug c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ug d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_gamefrom, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25526a;
    }
}
