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
/* compiled from: NewGameExplosionBinding.java */
/* loaded from: classes3.dex */
public final class o50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23129a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f23130b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f23131c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23132d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23133e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23134f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23135g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23136h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23137i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f23138j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f23139k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f23140l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f23141m;

    private o50(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10) {
        this.f23129a = linearLayout;
        this.f23130b = linearLayout2;
        this.f23131c = simpleDraweeView;
        this.f23132d = textView;
        this.f23133e = textView2;
        this.f23134f = textView3;
        this.f23135g = textView4;
        this.f23136h = textView5;
        this.f23137i = textView6;
        this.f23138j = textView7;
        this.f23139k = textView8;
        this.f23140l = textView9;
        this.f23141m = textView10;
    }

    @NonNull
    public static o50 a(@NonNull View view) {
        int i2 = R.id.countdownLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.countdownLayout);
        if (linearLayout != null) {
            i2 = R.id.gameIcon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gameIcon);
            if (simpleDraweeView != null) {
                i2 = R.id.gameName;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
                if (textView != null) {
                    i2 = R.id.installButton;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.installButton);
                    if (textView2 != null) {
                        i2 = R.id.moneyText;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                        if (textView3 != null) {
                            i2 = R.id.openState;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.openState);
                            if (textView4 != null) {
                                i2 = R.id.openTime;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.openTime);
                                if (textView5 != null) {
                                    i2 = R.id.sectionTitle;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.sectionTitle);
                                    if (textView6 != null) {
                                        i2 = R.id.textView10;
                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.textView10);
                                        if (textView7 != null) {
                                            i2 = R.id.textView7;
                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.textView7);
                                            if (textView8 != null) {
                                                i2 = R.id.time_h;
                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.time_h);
                                                if (textView9 != null) {
                                                    i2 = R.id.time_m;
                                                    TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.time_m);
                                                    if (textView10 != null) {
                                                        return new o50((LinearLayout) view, linearLayout, simpleDraweeView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10);
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
    public static o50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.new_game_explosion, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23129a;
    }
}
