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
/* compiled from: ChangeNameDialogLayoutBinding.java */
/* loaded from: classes3.dex */
public final class x4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26417a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26418b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f26419c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26420d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26421e;

    private x4(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f26417a = linearLayout;
        this.f26418b = textView;
        this.f26419c = editText;
        this.f26420d = textView2;
        this.f26421e = textView3;
    }

    @NonNull
    public static x4 a(@NonNull View view) {
        int i2 = R.id.changeNickNameNotice;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.changeNickNameNotice);
        if (textView != null) {
            i2 = R.id.name;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.name);
            if (editText != null) {
                i2 = R.id.savebutn;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.savebutn);
                if (textView2 != null) {
                    i2 = R.id.textView2;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
                    if (textView3 != null) {
                        return new x4((LinearLayout) view, textView, editText, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static x4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.change_name_dialog_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26417a;
    }
}
