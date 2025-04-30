package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: HavenWishAcitivityBinding.java */
/* loaded from: classes3.dex */
public final class yn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26999a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f27000b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f27001c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27002d;

    private yn(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull TextView textView) {
        this.f26999a = linearLayout;
        this.f27000b = imageView;
        this.f27001c = editText;
        this.f27002d = textView;
    }

    @NonNull
    public static yn a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.edittext;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.edittext);
            if (editText != null) {
                i2 = R.id.sennd;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.sennd);
                if (textView != null) {
                    return new yn((LinearLayout) view, imageView, editText, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.haven_wish_acitivity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26999a;
    }
}
