package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SendLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ab0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18086a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18087b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18088c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f18089d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final EditText f18090e;

    private ab0(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull Button button, @NonNull EditText editText) {
        this.f18086a = relativeLayout;
        this.f18087b = textView;
        this.f18088c = textView2;
        this.f18089d = button;
        this.f18090e = editText;
    }

    @NonNull
    public static ab0 a(@NonNull View view) {
        int i2 = R.id.connect_state;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.connect_state);
        if (textView != null) {
            i2 = R.id.device_name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.device_name);
            if (textView2 != null) {
                i2 = R.id.send;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.send);
                if (button != null) {
                    i2 = R.id.send_data;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.send_data);
                    if (editText != null) {
                        return new ab0((RelativeLayout) view, textView, textView2, button, editText);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ab0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ab0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.send_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18086a;
    }
}
