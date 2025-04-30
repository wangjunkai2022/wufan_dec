package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogSnifferPromtBinding.java */
/* loaded from: classes3.dex */
public final class gd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f20403a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f20404b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f20405c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f20406d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f20407e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ConstraintLayout f20408f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ConstraintLayout f20409g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ConstraintLayout f20410h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f20411i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final View f20412j;

    private gd(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull LinearLayout linearLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull ConstraintLayout constraintLayout4, @NonNull TextView textView, @NonNull View view) {
        this.f20403a = constraintLayout;
        this.f20404b = button;
        this.f20405c = button2;
        this.f20406d = button3;
        this.f20407e = linearLayout;
        this.f20408f = constraintLayout2;
        this.f20409g = constraintLayout3;
        this.f20410h = constraintLayout4;
        this.f20411i = textView;
        this.f20412j = view;
    }

    @NonNull
    public static gd a(@NonNull View view) {
        int i2 = R.id.btnDownload;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnDownload);
        if (button != null) {
            i2 = R.id.btnSearch;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btnSearch);
            if (button2 != null) {
                i2 = R.id.btnSource;
                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.btnSource);
                if (button3 != null) {
                    i2 = R.id.close;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.close);
                    if (linearLayout != null) {
                        i2 = R.id.constraintLayout;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.constraintLayout);
                        if (constraintLayout != null) {
                            ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
                            i2 = R.id.outside;
                            ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.outside);
                            if (constraintLayout3 != null) {
                                i2 = R.id.textView37;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView37);
                                if (textView != null) {
                                    i2 = R.id.view3;
                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.view3);
                                    if (findChildViewById != null) {
                                        return new gd(constraintLayout2, button, button2, button3, linearLayout, constraintLayout, constraintLayout2, constraintLayout3, textView, findChildViewById);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_sniffer_promt, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f20403a;
    }
}
