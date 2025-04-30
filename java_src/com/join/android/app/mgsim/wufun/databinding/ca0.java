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
/* compiled from: SaveCodeDialogBinding.java */
/* loaded from: classes3.dex */
public final class ca0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18823a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f18824b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f18825c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18826d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18827e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18828f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18829g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f18830h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18831i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18832j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f18833k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f18834l;

    private ca0(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.f18823a = linearLayout;
        this.f18824b = button;
        this.f18825c = button2;
        this.f18826d = textView;
        this.f18827e = textView2;
        this.f18828f = textView3;
        this.f18829g = linearLayout2;
        this.f18830h = linearLayout3;
        this.f18831i = textView4;
        this.f18832j = textView5;
        this.f18833k = textView6;
        this.f18834l = textView7;
    }

    @NonNull
    public static ca0 a(@NonNull View view) {
        int i2 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_cancle);
        if (button != null) {
            i2 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
            if (button2 != null) {
                i2 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
                if (textView != null) {
                    i2 = R.id.dialog_desci;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_desci);
                    if (textView2 != null) {
                        i2 = R.id.dialog_time;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_time);
                        if (textView3 != null) {
                            i2 = R.id.layoutBottom;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutBottom);
                            if (linearLayout != null) {
                                i2 = R.id.layoutTop;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutTop);
                                if (linearLayout2 != null) {
                                    i2 = R.id.moneyText;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                    if (textView4 != null) {
                                        i2 = R.id.saveCodeContent;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.saveCodeContent);
                                        if (textView5 != null) {
                                            i2 = R.id.saveCodeTv;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.saveCodeTv);
                                            if (textView6 != null) {
                                                i2 = R.id.tip_title;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                                                if (textView7 != null) {
                                                    return new ca0((LinearLayout) view, button, button2, textView, textView2, textView3, linearLayout, linearLayout2, textView4, textView5, textView6, textView7);
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
    public static ca0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ca0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.save_code_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18823a;
    }
}
