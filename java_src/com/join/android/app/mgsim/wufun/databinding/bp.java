package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: InsteadPhoneActivityBinding.java */
/* loaded from: classes3.dex */
public final class bp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18612a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final EditText f18613b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f18614c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18615d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ScrollView f18616e;

    private bp(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull Button button, @NonNull TextView textView, @NonNull ScrollView scrollView) {
        this.f18612a = linearLayout;
        this.f18613b = editText;
        this.f18614c = button;
        this.f18615d = textView;
        this.f18616e = scrollView;
    }

    @NonNull
    public static bp a(@NonNull View view) {
        int i2 = R.id.inputPhone;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.inputPhone);
        if (editText != null) {
            i2 = R.id.insteadButn;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.insteadButn);
            if (button != null) {
                i2 = R.id.myAccountTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.myAccountTv);
                if (textView != null) {
                    i2 = R.id.scrollView;
                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
                    if (scrollView != null) {
                        return new bp((LinearLayout) view, editText, button, textView, scrollView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static bp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.instead_phone_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18612a;
    }
}
