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
/* compiled from: ChangePhoneActivityBinding.java */
/* loaded from: classes3.dex */
public final class y4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26779a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26780b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26781c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f26782d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26783e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final EditText f26784f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26785g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ScrollView f26786h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final Button f26787i;

    private y4(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull EditText editText, @NonNull TextView textView3, @NonNull EditText editText2, @NonNull TextView textView4, @NonNull ScrollView scrollView, @NonNull Button button) {
        this.f26779a = linearLayout;
        this.f26780b = textView;
        this.f26781c = textView2;
        this.f26782d = editText;
        this.f26783e = textView3;
        this.f26784f = editText2;
        this.f26785g = textView4;
        this.f26786h = scrollView;
        this.f26787i = button;
    }

    @NonNull
    public static y4 a(@NonNull View view) {
        int i2 = R.id.getCodeTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.getCodeTv);
        if (textView != null) {
            i2 = R.id.myAccountTv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.myAccountTv);
            if (textView2 != null) {
                i2 = R.id.newInputCode;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.newInputCode);
                if (editText != null) {
                    i2 = R.id.newMessageTv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.newMessageTv);
                    if (textView3 != null) {
                        i2 = R.id.oldInputCode;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.oldInputCode);
                        if (editText2 != null) {
                            i2 = R.id.oldMessageTv;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.oldMessageTv);
                            if (textView4 != null) {
                                i2 = R.id.scrollView;
                                ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
                                if (scrollView != null) {
                                    i2 = R.id.settingButn;
                                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.settingButn);
                                    if (button != null) {
                                        return new y4((LinearLayout) view, textView, textView2, editText, textView3, editText2, textView4, scrollView, button);
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
    public static y4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.change_phone_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26779a;
    }
}
