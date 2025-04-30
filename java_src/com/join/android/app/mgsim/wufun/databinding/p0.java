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
/* compiled from: ActivityGbaKeyMapBinding.java */
/* loaded from: classes3.dex */
public final class p0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23389a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f23390b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23391c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f23392d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23393e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f23394f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23395g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Button f23396h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23397i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f23398j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f23399k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TableLayout f23400l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final Button f23401m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final Button f23402n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f23403o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f23404p;

    private p0(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull TextView textView, @NonNull Button button2, @NonNull TextView textView2, @NonNull Button button3, @NonNull TextView textView3, @NonNull Button button4, @NonNull TextView textView4, @NonNull Button button5, @NonNull TextView textView5, @NonNull TableLayout tableLayout, @NonNull Button button6, @NonNull Button button7, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.f23389a = linearLayout;
        this.f23390b = button;
        this.f23391c = textView;
        this.f23392d = button2;
        this.f23393e = textView2;
        this.f23394f = button3;
        this.f23395g = textView3;
        this.f23396h = button4;
        this.f23397i = textView4;
        this.f23398j = button5;
        this.f23399k = textView5;
        this.f23400l = tableLayout;
        this.f23401m = button6;
        this.f23402n = button7;
        this.f23403o = textView6;
        this.f23404p = textView7;
    }

    @NonNull
    public static p0 a(@NonNull View view) {
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
                                i2 = R.id.f17866l2;
                                Button button4 = (Button) ViewBindings.findChildViewById(view, R.id.f17866l2);
                                if (button4 != null) {
                                    i2 = R.id.l2_tv;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.l2_tv);
                                    if (textView4 != null) {
                                        i2 = R.id.f17870r;
                                        Button button5 = (Button) ViewBindings.findChildViewById(view, R.id.f17870r);
                                        if (button5 != null) {
                                            i2 = R.id.r1_tv;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.r1_tv);
                                            if (textView5 != null) {
                                                i2 = R.id.table_main;
                                                TableLayout tableLayout = (TableLayout) ViewBindings.findChildViewById(view, R.id.table_main);
                                                if (tableLayout != null) {
                                                    i2 = R.id.turbo_a;
                                                    Button button6 = (Button) ViewBindings.findChildViewById(view, R.id.turbo_a);
                                                    if (button6 != null) {
                                                        i2 = R.id.turbo_b;
                                                        Button button7 = (Button) ViewBindings.findChildViewById(view, R.id.turbo_b);
                                                        if (button7 != null) {
                                                            i2 = R.id.x_tv;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.x_tv);
                                                            if (textView6 != null) {
                                                                i2 = R.id.y_tv;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.y_tv);
                                                                if (textView7 != null) {
                                                                    return new p0((LinearLayout) view, button, textView, button2, textView2, button3, textView3, button4, textView4, button5, textView5, tableLayout, button6, button7, textView6, textView7);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static p0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_gba_key_map, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23389a;
    }
}
