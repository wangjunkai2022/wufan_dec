package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ListviewDialogFightServerChoseBinding.java */
/* loaded from: classes3.dex */
public final class dv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19500a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f19501b;

    private dv(@NonNull LinearLayout linearLayout, @NonNull Button button) {
        this.f19500a = linearLayout;
        this.f19501b = button;
    }

    @NonNull
    public static dv a(@NonNull View view) {
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.room);
        if (button != null) {
            return new dv((LinearLayout) view, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.room)));
    }

    @NonNull
    public static dv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.listview_dialog_fight_server_chose, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19500a;
    }
}
