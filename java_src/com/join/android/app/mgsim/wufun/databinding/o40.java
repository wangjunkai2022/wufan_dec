package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MyAccountReginActivityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class o40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23113a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23114b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CheckBox f23115c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23116d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f23117e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f23118f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f23119g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f23120h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final EditText f23121i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f23122j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ScrollView f23123k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final EditText f23124l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f23125m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final EditText f23126n;

    private o40(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull CheckBox checkBox, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull EditText editText, @NonNull Button button, @NonNull ScrollView scrollView, @NonNull EditText editText2, @NonNull TextView textView3, @NonNull EditText editText3) {
        this.f23113a = linearLayout;
        this.f23114b = textView;
        this.f23115c = checkBox;
        this.f23116d = textView2;
        this.f23117e = linearLayout2;
        this.f23118f = linearLayout3;
        this.f23119g = linearLayout4;
        this.f23120h = linearLayout5;
        this.f23121i = editText;
        this.f23122j = button;
        this.f23123k = scrollView;
        this.f23124l = editText2;
        this.f23125m = textView3;
        this.f23126n = editText3;
    }

    @NonNull
    public static o40 a(@NonNull View view) {
        int i2 = R.id.accoutTitle;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.accoutTitle);
        if (textView != null) {
            i2 = R.id.agreeCheckBox;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.agreeCheckBox);
            if (checkBox != null) {
                i2 = R.id.forget;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forget);
                if (textView2 != null) {
                    i2 = R.id.lLayout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lLayout);
                    if (linearLayout != null) {
                        i2 = R.id.linearLayout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
                        if (linearLayout2 != null) {
                            i2 = R.id.linearLayout2;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                            if (linearLayout3 != null) {
                                i2 = R.id.linearLayout4;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout4);
                                if (linearLayout4 != null) {
                                    i2 = R.id.password;
                                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.password);
                                    if (editText != null) {
                                        i2 = R.id.reginButton;
                                        Button button = (Button) ViewBindings.findChildViewById(view, R.id.reginButton);
                                        if (button != null) {
                                            i2 = R.id.scrollView;
                                            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
                                            if (scrollView != null) {
                                                i2 = R.id.telPhone;
                                                EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.telPhone);
                                                if (editText2 != null) {
                                                    i2 = R.id.textView3;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView3);
                                                    if (textView3 != null) {
                                                        i2 = R.id.userName;
                                                        EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.userName);
                                                        if (editText3 != null) {
                                                            return new o40((LinearLayout) view, textView, checkBox, textView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, editText, button, scrollView, editText2, textView3, editText3);
                                                        }
                                                    }
                                                }
                                            }
                                        }
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
    public static o40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_account_regin_activity_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23113a;
    }
}
