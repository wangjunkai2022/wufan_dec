package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
/* compiled from: PapamainInterstingMidleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class i70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21077a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HListView f21078b;

    private i70(@NonNull RelativeLayout relativeLayout, @NonNull HListView hListView) {
        this.f21077a = relativeLayout;
        this.f21078b = hListView;
    }

    @NonNull
    public static i70 a(@NonNull View view) {
        HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.interstinglist);
        if (hListView != null) {
            return new i70((RelativeLayout) view, hListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.interstinglist)));
    }

    @NonNull
    public static i70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_intersting_midle_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21077a;
    }
}
