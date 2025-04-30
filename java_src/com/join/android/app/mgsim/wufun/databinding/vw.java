package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgDialogLoginBinding.java */
/* loaded from: classes3.dex */
public final class vw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25933a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f25934b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25935c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25936d;

    private vw(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f25933a = relativeLayout;
        this.f25934b = relativeLayout2;
        this.f25935c = textView;
        this.f25936d = textView2;
    }

    @NonNull
    public static vw a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i2 = R.id.vCancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.vCancel);
        if (textView != null) {
            i2 = R.id.vOK;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.vOK);
            if (textView2 != null) {
                return new vw(relativeLayout, relativeLayout, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static vw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static vw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_dialog_login, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25933a;
    }
}
