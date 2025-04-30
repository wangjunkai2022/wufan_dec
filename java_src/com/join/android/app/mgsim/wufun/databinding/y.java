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
/* compiled from: ActivityFcKeyMapBinding.java */
/* loaded from: classes3.dex */
public final class y implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26714a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f26715b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26716c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f26717d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f26718e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26719f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26720g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Button f26721h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f26722i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f26723j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f26724k;

    private y(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull TextView textView, @NonNull Button button2, @NonNull Button button3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull Button button4, @NonNull TextView textView4, @NonNull Button button5, @NonNull TextView textView5) {
        this.f26714a = linearLayout;
        this.f26715b = button;
        this.f26716c = textView;
        this.f26717d = button2;
        this.f26718e = button3;
        this.f26719f = textView2;
        this.f26720g = textView3;
        this.f26721h = button4;
        this.f26722i = textView4;
        this.f26723j = button5;
        this.f26724k = textView5;
    }

    @NonNull
    public static y a(@NonNull View view) {
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
                                                return new y((LinearLayout) view, button, textView, button2, button3, textView2, textView3, button4, textView4, button5, textView5);
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
    public static y c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_fc_key_map, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26714a;
    }
}
