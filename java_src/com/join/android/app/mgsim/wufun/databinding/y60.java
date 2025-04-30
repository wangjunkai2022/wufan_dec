package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapamainBroadcaseBottom1LayoutBinding.java */
/* loaded from: classes3.dex */
public final class y60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26816a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26817b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26818c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26819d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f26820e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f26821f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f26822g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f26823h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f26824i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f26825j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f26826k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f26827l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f26828m;

    private y60(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull RelativeLayout relativeLayout2) {
        this.f26816a = linearLayout;
        this.f26817b = textView;
        this.f26818c = textView2;
        this.f26819d = textView3;
        this.f26820e = simpleDraweeView;
        this.f26821f = relativeLayout;
        this.f26822g = linearLayout2;
        this.f26823h = simpleDraweeView2;
        this.f26824i = textView4;
        this.f26825j = textView5;
        this.f26826k = textView6;
        this.f26827l = textView7;
        this.f26828m = relativeLayout2;
    }

    @NonNull
    public static y60 a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.appname;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appname);
            if (textView2 != null) {
                i2 = R.id.emptyView;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.emptyView);
                if (textView3 != null) {
                    i2 = R.id.gameIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gameIcon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.gameLayout;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.gameLayout);
                        if (relativeLayout != null) {
                            i2 = R.id.gamebroadcastbottom1;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gamebroadcastbottom1);
                            if (linearLayout != null) {
                                i2 = R.id.gamebroadcastbottom1Image;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gamebroadcastbottom1Image);
                                if (simpleDraweeView2 != null) {
                                    i2 = R.id.gamebroadcastbottom1Text1;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.gamebroadcastbottom1Text1);
                                    if (textView4 != null) {
                                        i2 = R.id.gamebroadcastbottom1Text2;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.gamebroadcastbottom1Text2);
                                        if (textView5 != null) {
                                            i2 = R.id.itemInstall;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.itemInstall);
                                            if (textView6 != null) {
                                                i2 = R.id.moneyText;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                                if (textView7 != null) {
                                                    i2 = R.id.rLayoutRight;
                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight);
                                                    if (relativeLayout2 != null) {
                                                        return new y60((LinearLayout) view, textView, textView2, textView3, simpleDraweeView, relativeLayout, linearLayout, simpleDraweeView2, textView4, textView5, textView6, textView7, relativeLayout2);
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
    public static y60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_broadcase_bottom1_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26816a;
    }
}
