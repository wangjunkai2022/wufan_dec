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
/* compiled from: ActivityMdKeyMapBinding.java */
/* loaded from: classes3.dex */
public final class y0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26725a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f26726b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26727c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f26728d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26729e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f26730f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26731g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26732h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final Button f26733i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f26734j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final Button f26735k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f26736l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final Button f26737m;

    private y0(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull TextView textView, @NonNull Button button2, @NonNull TextView textView2, @NonNull Button button3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull Button button4, @NonNull TextView textView5, @NonNull Button button5, @NonNull TextView textView6, @NonNull Button button6) {
        this.f26725a = linearLayout;
        this.f26726b = button;
        this.f26727c = textView;
        this.f26728d = button2;
        this.f26729e = textView2;
        this.f26730f = button3;
        this.f26731g = textView3;
        this.f26732h = textView4;
        this.f26733i = button4;
        this.f26734j = textView5;
        this.f26735k = button5;
        this.f26736l = textView6;
        this.f26737m = button6;
    }

    @NonNull
    public static y0 a(@NonNull View view) {
        int i2 = R.id.f17848a;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.f17848a);
        if (button != null) {
            i2 = R.id.a_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.a_tv);
            if (textView != null) {
                i2 = R.id.f17850b;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.f17850b);
                if (button2 != null) {
                    i2 = R.id.b_tv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.b_tv);
                    if (textView2 != null) {
                        i2 = R.id.f17854c;
                        Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.f17854c);
                        if (button3 != null) {
                            i2 = R.id.l1_tv;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.l1_tv);
                            if (textView3 != null) {
                                i2 = R.id.r1_tv;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.r1_tv);
                                if (textView4 != null) {
                                    i2 = R.id.f17877x;
                                    Button button4 = (Button) ViewBindings.findChildViewById(view, R.id.f17877x);
                                    if (button4 != null) {
                                        i2 = R.id.x_tv;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.x_tv);
                                        if (textView5 != null) {
                                            i2 = R.id.f17878y;
                                            Button button5 = (Button) ViewBindings.findChildViewById(view, R.id.f17878y);
                                            if (button5 != null) {
                                                i2 = R.id.y_tv;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.y_tv);
                                                if (textView6 != null) {
                                                    i2 = R.id.f17879z;
                                                    Button button6 = (Button) ViewBindings.findChildViewById(view, R.id.f17879z);
                                                    if (button6 != null) {
                                                        return new y0((LinearLayout) view, button, textView, button2, textView2, button3, textView3, textView4, button4, textView5, button5, textView6, button6);
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
    public static y0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_md_key_map, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26725a;
    }
}
