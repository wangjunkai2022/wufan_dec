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
/* compiled from: ActivityGbcKeyMapBinding.java */
/* loaded from: classes3.dex */
public final class q0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23767a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f23768b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23769c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f23770d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f23771e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23772f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23773g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Button f23774h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23775i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f23776j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f23777k;

    private q0(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull TextView textView, @NonNull Button button2, @NonNull Button button3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull Button button4, @NonNull TextView textView4, @NonNull Button button5, @NonNull TextView textView5) {
        this.f23767a = linearLayout;
        this.f23768b = button;
        this.f23769c = textView;
        this.f23770d = button2;
        this.f23771e = button3;
        this.f23772f = textView2;
        this.f23773g = textView3;
        this.f23774h = button4;
        this.f23775i = textView4;
        this.f23776j = button5;
        this.f23777k = textView5;
    }

    @NonNull
    public static q0 a(@NonNull View view) {
        int i2 = R.id.f17848a;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.f17848a);
        if (button != null) {
            i2 = R.id.a_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.a_tv);
            if (textView != null) {
                i2 = R.id.ab;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.ab);
                if (button2 != null) {
                    i2 = R.id.f17850b;
                    Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.f17850b);
                    if (button3 != null) {
                        i2 = R.id.b_tv;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.b_tv);
                        if (textView2 != null) {
                            i2 = R.id.r1_tv;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.r1_tv);
                            if (textView3 != null) {
                                i2 = R.id.f17877x;
                                Button button4 = (Button) ViewBindings.findChildViewById(view, R.id.f17877x);
                                if (button4 != null) {
                                    i2 = R.id.x_tv;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.x_tv);
                                    if (textView4 != null) {
                                        i2 = R.id.f17878y;
                                        Button button5 = (Button) ViewBindings.findChildViewById(view, R.id.f17878y);
                                        if (button5 != null) {
                                            i2 = R.id.y_tv;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.y_tv);
                                            if (textView5 != null) {
                                                return new q0((LinearLayout) view, button, textView, button2, button3, textView2, textView3, button4, textView4, button5, textView5);
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
    public static q0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_gbc_key_map, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23767a;
    }
}
