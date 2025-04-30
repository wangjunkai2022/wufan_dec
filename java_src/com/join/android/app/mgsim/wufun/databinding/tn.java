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
/* compiled from: HandshankListFootBinding.java */
/* loaded from: classes3.dex */
public final class tn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25266a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25267b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25268c;

    private tn(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.f25266a = linearLayout;
        this.f25267b = textView;
        this.f25268c = linearLayout2;
    }

    @NonNull
    public static tn a(@NonNull View view) {
        int i2 = R.id.handshank_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.handshank_name);
        if (textView != null) {
            i2 = R.id.lay_2;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_2);
            if (linearLayout != null) {
                return new tn((LinearLayout) view, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static tn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.handshank_list_foot, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25266a;
    }
}
