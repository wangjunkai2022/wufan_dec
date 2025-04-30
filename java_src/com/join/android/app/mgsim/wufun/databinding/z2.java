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
/* compiled from: AnchorInfoLayoutBinding.java */
/* loaded from: classes3.dex */
public final class z2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27100a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final EditText f27101b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27102c;

    private z2(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull TextView textView) {
        this.f27100a = linearLayout;
        this.f27101b = editText;
        this.f27102c = textView;
    }

    @NonNull
    public static z2 a(@NonNull View view) {
        int i2 = R.id.info;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.info);
        if (editText != null) {
            i2 = R.id.save;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.save);
            if (textView != null) {
                return new z2((LinearLayout) view, editText, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static z2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.anchor_info_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27100a;
    }
}
