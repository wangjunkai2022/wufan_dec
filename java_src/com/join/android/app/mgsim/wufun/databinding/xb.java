package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogHandshankBinding.java */
/* loaded from: classes3.dex */
public final class xb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26523a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26524b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f26525c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26526d;

    private xb(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull Button button, @NonNull TextView textView2) {
        this.f26523a = linearLayout;
        this.f26524b = textView;
        this.f26525c = button;
        this.f26526d = textView2;
    }

    @NonNull
    public static xb a(@NonNull View view) {
        int i2 = R.id.cancel_tv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel_tv);
        if (textView != null) {
            i2 = R.id.check_btn;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.check_btn);
            if (button != null) {
                i2 = R.id.name_tv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name_tv);
                if (textView2 != null) {
                    return new xb((LinearLayout) view, textView, button, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_handshank, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26523a;
    }
}
