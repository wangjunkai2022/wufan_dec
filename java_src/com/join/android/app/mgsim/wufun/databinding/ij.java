package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameMainForunpostItemBinding.java */
/* loaded from: classes3.dex */
public final class ij implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21183a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21184b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f21185c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21186d;

    private ij(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView) {
        this.f21183a = linearLayout;
        this.f21184b = linearLayout2;
        this.f21185c = linearLayout3;
        this.f21186d = textView;
    }

    @NonNull
    public static ij a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.ll_discuss_first;
        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_discuss_first);
        if (linearLayout2 != null) {
            i2 = R.id.tv_discuss_first;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_discuss_first);
            if (textView != null) {
                return new ij(linearLayout, linearLayout, linearLayout2, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ij c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ij d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_main_forunpost_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21183a;
    }
}
