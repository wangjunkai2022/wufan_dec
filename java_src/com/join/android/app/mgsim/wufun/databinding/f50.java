package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: NameCheckBinding.java */
/* loaded from: classes3.dex */
public final class f50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f20032a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20033b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f20034c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f20035d;

    private f50(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull Button button) {
        this.f20032a = frameLayout;
        this.f20033b = textView;
        this.f20034c = editText;
        this.f20035d = button;
    }

    @NonNull
    public static f50 a(@NonNull View view) {
        int i2 = R.id.changeNickNameNotice;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.changeNickNameNotice);
        if (textView != null) {
            i2 = R.id.name;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.name);
            if (editText != null) {
                i2 = R.id.ok;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.ok);
                if (button != null) {
                    return new f50((FrameLayout) view, textView, editText, button);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static f50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.name_check, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f20032a;
    }
}
