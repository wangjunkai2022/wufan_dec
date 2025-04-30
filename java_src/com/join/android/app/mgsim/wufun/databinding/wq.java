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
import com.join.mgps.customview.textview.MovementTextView;
/* compiled from: ItemIntroductionCommontListReplayBinding.java */
/* loaded from: classes3.dex */
public final class wq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26240a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26241b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MovementTextView f26242c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f26243d;

    private wq(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull MovementTextView movementTextView, @NonNull View view) {
        this.f26240a = linearLayout;
        this.f26241b = linearLayout2;
        this.f26242c = movementTextView;
        this.f26243d = view;
    }

    @NonNull
    public static wq a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.content;
        MovementTextView movementTextView = (MovementTextView) ViewBindings.findChildViewById(view, R.id.content);
        if (movementTextView != null) {
            i2 = R.id.layoutTop;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.layoutTop);
            if (findChildViewById != null) {
                return new wq(linearLayout, linearLayout, movementTextView, findChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_introduction_commont_list_replay, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26240a;
    }
}
