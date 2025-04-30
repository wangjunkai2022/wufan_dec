package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetialFavortiesItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class wl implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26203a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26204b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f26205c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f26206d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26207e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26208f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26209g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f26210h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f26211i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f26212j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f26213k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f26214l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f26215m;

    private wl(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f26203a = linearLayout;
        this.f26204b = simpleDraweeView;
        this.f26205c = simpleDraweeView2;
        this.f26206d = simpleDraweeView3;
        this.f26207e = textView;
        this.f26208f = textView2;
        this.f26209g = textView3;
        this.f26210h = linearLayout2;
        this.f26211i = linearLayout3;
        this.f26212j = linearLayout4;
        this.f26213k = linearLayout5;
        this.f26214l = textView4;
        this.f26215m = textView5;
    }

    @NonNull
    public static wl a(@NonNull View view) {
        int i2 = R.id.appIcon1;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon1);
        if (simpleDraweeView != null) {
            i2 = R.id.appIcon2;
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon2);
            if (simpleDraweeView2 != null) {
                i2 = R.id.appIcon3;
                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon3);
                if (simpleDraweeView3 != null) {
                    i2 = R.id.appname1;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appname1);
                    if (textView != null) {
                        i2 = R.id.appname2;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appname2);
                        if (textView2 != null) {
                            i2 = R.id.appname3;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.appname3);
                            if (textView3 != null) {
                                i2 = R.id.layout1;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout1);
                                if (linearLayout != null) {
                                    i2 = R.id.layout2;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout2);
                                    if (linearLayout2 != null) {
                                        i2 = R.id.layout3;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout3);
                                        if (linearLayout3 != null) {
                                            LinearLayout linearLayout4 = (LinearLayout) view;
                                            i2 = R.id.name;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                            if (textView4 != null) {
                                                i2 = R.id.number;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.number);
                                                if (textView5 != null) {
                                                    return new wl(linearLayout4, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, textView, textView2, textView3, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView4, textView5);
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
    public static wl c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wl d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetial_favorties_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26203a;
    }
}
