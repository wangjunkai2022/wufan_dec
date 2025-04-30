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
/* compiled from: ExitDialogBinding.java */
/* loaded from: classes3.dex */
public final class oe implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23246a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f23247b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23248c;

    private oe(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f23246a = linearLayout;
        this.f23247b = linearLayout2;
        this.f23248c = textView;
    }

    @NonNull
    public static oe a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_dialog_content);
        if (textView != null) {
            return new oe(linearLayout, linearLayout, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_dialog_content)));
    }

    @NonNull
    public static oe c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static oe d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.exit_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23246a;
    }
}
