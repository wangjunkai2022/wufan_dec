package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityPspKeyMapBinding.java */
/* loaded from: classes3.dex */
public final class t1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25032a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f25033b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25034c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f25035d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25036e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f25037f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25038g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Button f25039h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25040i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TableLayout f25041j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final Button f25042k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f25043l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final Button f25044m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f25045n;

    private t1(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull TextView textView, @NonNull Button button2, @NonNull TextView textView2, @NonNull Button button3, @NonNull TextView textView3, @NonNull Button button4, @NonNull TextView textView4, @NonNull TableLayout tableLayout, @NonNull Button button5, @NonNull TextView textView5, @NonNull Button button6, @NonNull TextView textView6) {
        this.f25032a = linearLayout;
        this.f25033b = button;
        this.f25034c = textView;
        this.f25035d = button2;
        this.f25036e = textView2;
        this.f25037f = button3;
        this.f25038g = textView3;
        this.f25039h = button4;
        this.f25040i = textView4;
        this.f25041j = tableLayout;
        this.f25042k = button5;
        this.f25043l = textView5;
        this.f25044m = button6;
        this.f25045n = textView6;
    }

    @NonNull
    public static t1 a(@NonNull View view) {
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
                        i2 = R.id.f17864l;
                        Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.f17864l);
                        if (button3 != null) {
                            i2 = R.id.l1_tv;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.l1_tv);
                            if (textView3 != null) {
                                i2 = R.id.f17870r;
                                Button button4 = (Button) ViewBindings.findChildViewById(view, R.id.f17870r);
                                if (button4 != null) {
                                    i2 = R.id.r1_tv;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.r1_tv);
                                    if (textView4 != null) {
                                        i2 = R.id.table_main;
                                        TableLayout tableLayout = (TableLayout) ViewBindings.findChildViewById(view, R.id.table_main);
                                        if (tableLayout != null) {
                                            i2 = R.id.f17877x;
                                            Button button5 = (Button) ViewBindings.findChildViewById(view, R.id.f17877x);
                                            if (button5 != null) {
                                                i2 = R.id.x_tv;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.x_tv);
                                                if (textView5 != null) {
                                                    i2 = R.id.f17878y;
                                                    Button button6 = (Button) ViewBindings.findChildViewById(view, R.id.f17878y);
                                                    if (button6 != null) {
                                                        i2 = R.id.y_tv;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.y_tv);
                                                        if (textView6 != null) {
                                                            return new t1((LinearLayout) view, button, textView, button2, textView2, button3, textView3, button4, textView4, tableLayout, button5, textView5, button6, textView6);
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
    public static t1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_psp_key_map, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25032a;
    }
}
