package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapamainItemTitleLayoutV2Binding.java */
/* loaded from: classes3.dex */
public final class n70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f22782a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22783b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22784c;

    private n70(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f22782a = constraintLayout;
        this.f22783b = textView;
        this.f22784c = textView2;
    }

    @NonNull
    public static n70 a(@NonNull View view) {
        int i2 = R.id.tvSubTitle;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvSubTitle);
        if (textView != null) {
            i2 = R.id.tvTitle;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTitle);
            if (textView2 != null) {
                return new n70((ConstraintLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static n70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_item_title_layout_v2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f22782a;
    }
}
