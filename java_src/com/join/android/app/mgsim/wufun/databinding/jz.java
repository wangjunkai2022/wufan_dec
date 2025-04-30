package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumPostGagDialogBinding.java */
/* loaded from: classes3.dex */
public final class jz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21567a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f21568b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f21569c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21570d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Spinner f21571e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21572f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final EditText f21573g;

    private jz(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull Spinner spinner, @NonNull TextView textView2, @NonNull EditText editText) {
        this.f21567a = linearLayout;
        this.f21568b = button;
        this.f21569c = button2;
        this.f21570d = textView;
        this.f21571e = spinner;
        this.f21572f = textView2;
        this.f21573g = editText;
    }

    @NonNull
    public static jz a(@NonNull View view) {
        int i2 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_cancle);
        if (button != null) {
            i2 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
            if (button2 != null) {
                i2 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
                if (textView != null) {
                    i2 = R.id.spinner;
                    Spinner spinner = (Spinner) ViewBindings.findChildViewById(view, R.id.spinner);
                    if (spinner != null) {
                        i2 = R.id.tip_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                        if (textView2 != null) {
                            i2 = R.id.txt;
                            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.txt);
                            if (editText != null) {
                                return new jz((LinearLayout) view, button, button2, textView, spinner, textView2, editText);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static jz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_gag_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21567a;
    }
}
