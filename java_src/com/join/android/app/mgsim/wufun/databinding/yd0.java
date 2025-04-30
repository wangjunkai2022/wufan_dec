package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ViewIntroductionCommontInputBinding.java */
/* loaded from: classes3.dex */
public final class yd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26896a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26897b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f26898c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26899d;

    private yd0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull EditText editText, @NonNull TextView textView) {
        this.f26896a = linearLayout;
        this.f26897b = linearLayout2;
        this.f26898c = editText;
        this.f26899d = textView;
    }

    @NonNull
    public static yd0 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.et_content;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_content);
        if (editText != null) {
            i2 = R.id.tv_commit;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_commit);
            if (textView != null) {
                return new yd0(linearLayout, linearLayout, editText, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.view_introduction_commont_input, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26896a;
    }
}
