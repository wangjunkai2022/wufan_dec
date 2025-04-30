package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogSetChallengeGoldBinding.java */
/* loaded from: classes3.dex */
public final class cd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18856a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f18857b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f18858c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f18859d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f18860e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18861f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18862g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f18863h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18864i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18865j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f18866k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f18867l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f18868m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f18869n;

    private cd(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull Button button4, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f18856a = relativeLayout;
        this.f18857b = button;
        this.f18858c = button2;
        this.f18859d = button3;
        this.f18860e = button4;
        this.f18861f = linearLayout;
        this.f18862g = linearLayout2;
        this.f18863h = linearLayout3;
        this.f18864i = textView;
        this.f18865j = textView2;
        this.f18866k = textView3;
        this.f18867l = textView4;
        this.f18868m = textView5;
        this.f18869n = textView6;
    }

    @NonNull
    public static cd a(@NonNull View view) {
        int i2 = R.id.btn_1;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_1);
        if (button != null) {
            i2 = R.id.btn_2;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_2);
            if (button2 != null) {
                i2 = R.id.btn_3;
                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.btn_3);
                if (button3 != null) {
                    i2 = R.id.btn_4;
                    Button button4 = (Button) ViewBindings.findChildViewById(view, R.id.btn_4);
                    if (button4 != null) {
                        i2 = R.id.iv_close;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
                        if (linearLayout != null) {
                            i2 = R.id.ll_info;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_info);
                            if (linearLayout2 != null) {
                                i2 = R.id.ll_set_challenge_gold;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_set_challenge_gold);
                                if (linearLayout3 != null) {
                                    i2 = R.id.tv_current_copper;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_current_copper);
                                    if (textView != null) {
                                        i2 = R.id.tv_info_detail;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_info_detail);
                                        if (textView2 != null) {
                                            i2 = R.id.tv_info_title_1;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_info_title_1);
                                            if (textView3 != null) {
                                                i2 = R.id.tv_info_title_2;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_info_title_2);
                                                if (textView4 != null) {
                                                    i2 = R.id.tv_title;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                    if (textView5 != null) {
                                                        i2 = R.id.tv_top;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_top);
                                                        if (textView6 != null) {
                                                            return new cd((RelativeLayout) view, button, button2, button3, button4, linearLayout, linearLayout2, linearLayout3, textView, textView2, textView3, textView4, textView5, textView6);
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
    public static cd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_set_challenge_gold, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18856a;
    }
}
