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
/* compiled from: ChioceItemGameClassifyBinding.java */
/* loaded from: classes3.dex */
public final class i5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21044a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final x5 f21045b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final x5 f21046c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final x5 f21047d;

    private i5(@NonNull LinearLayout linearLayout, @NonNull x5 x5Var, @NonNull x5 x5Var2, @NonNull x5 x5Var3) {
        this.f21044a = linearLayout;
        this.f21045b = x5Var;
        this.f21046c = x5Var2;
        this.f21047d = x5Var3;
    }

    @NonNull
    public static i5 a(@NonNull View view) {
        int i2 = R.id.item1;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.item1);
        if (findChildViewById != null) {
            x5 a4 = x5.a(findChildViewById);
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.item2);
            if (findChildViewById2 != null) {
                x5 a5 = x5.a(findChildViewById2);
                View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.item3);
                if (findChildViewById3 != null) {
                    return new i5((LinearLayout) view, a4, a5, x5.a(findChildViewById3));
                }
                i2 = R.id.item3;
            } else {
                i2 = R.id.item2;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static i5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.chioce_item_game_classify, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21044a;
    }
}
