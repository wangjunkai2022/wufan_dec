package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetailItemOneTouchSkillItemBinding.java */
/* loaded from: classes3.dex */
public final class qk implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24016a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f24017b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24018c;

    private qk(@NonNull ConstraintLayout constraintLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f24016a = constraintLayout;
        this.f24017b = linearLayout;
        this.f24018c = textView;
    }

    @NonNull
    public static qk a(@NonNull View view) {
        int i2 = R.id.list;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.list);
        if (linearLayout != null) {
            i2 = R.id.name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView != null) {
                return new qk((ConstraintLayout) view, linearLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qk c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qk d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_one_touch_skill_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24016a;
    }
}
