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
/* compiled from: BindPhoneActivityBinding.java */
/* loaded from: classes3.dex */
public final class u3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25385a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25386b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f25387c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f25388d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25389e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ScrollView f25390f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25391g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25392h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final Button f25393i;

    private u3(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull EditText editText2, @NonNull TextView textView2, @NonNull ScrollView scrollView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull Button button) {
        this.f25385a = linearLayout;
        this.f25386b = textView;
        this.f25387c = editText;
        this.f25388d = editText2;
        this.f25389e = textView2;
        this.f25390f = scrollView;
        this.f25391g = textView3;
        this.f25392h = textView4;
        this.f25393i = button;
    }

    @NonNull
    public static u3 a(@NonNull View view) {
        int i2 = R.id.getCodeTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.getCodeTv);
        if (textView != null) {
            i2 = R.id.inputCode;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.inputCode);
            if (editText != null) {
                i2 = R.id.inputPhone;
                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.inputPhone);
                if (editText2 != null) {
                    i2 = R.id.myAccountTv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.myAccountTv);
                    if (textView2 != null) {
                        i2 = R.id.scrollView;
                        ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
                        if (scrollView != null) {
                            i2 = R.id.securityLevel;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.securityLevel);
                            if (textView3 != null) {
                                i2 = R.id.securitySuggest;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.securitySuggest);
                                if (textView4 != null) {
                                    i2 = R.id.settingButn;
                                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.settingButn);
                                    if (button != null) {
                                        return new u3((LinearLayout) view, textView, editText, editText2, textView2, scrollView, textView3, textView4, button);
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
    public static u3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.bind_phone_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25385a;
    }
}
