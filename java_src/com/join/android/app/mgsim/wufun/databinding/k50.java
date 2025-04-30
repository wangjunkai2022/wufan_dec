package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: NetworkFightChildLayBinding.java */
/* loaded from: classes3.dex */
public final class k50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f21688a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21689b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21690c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21691d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21692e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21693f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f21694g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ProgressBar f21695h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final Button f21696i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f21697j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f21698k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f21699l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final Button f21700m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f21701n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f21702o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ImageView f21703p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ImageView f21704q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final ImageView f21705r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f21706s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final ImageView f21707t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final ImageView f21708u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final ImageView f21709v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final LinearLayout f21710w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final LinearLayout f21711x;

    private k50(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull Button button, @NonNull LinearLayout linearLayout2, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull Button button2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView8, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView9, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5) {
        this.f21688a = frameLayout;
        this.f21689b = textView;
        this.f21690c = textView2;
        this.f21691d = textView3;
        this.f21692e = textView4;
        this.f21693f = textView5;
        this.f21694g = linearLayout;
        this.f21695h = progressBar;
        this.f21696i = button;
        this.f21697j = linearLayout2;
        this.f21698k = textView6;
        this.f21699l = textView7;
        this.f21700m = button2;
        this.f21701n = linearLayout3;
        this.f21702o = textView8;
        this.f21703p = imageView;
        this.f21704q = imageView2;
        this.f21705r = imageView3;
        this.f21706s = textView9;
        this.f21707t = imageView4;
        this.f21708u = imageView5;
        this.f21709v = imageView6;
        this.f21710w = linearLayout4;
        this.f21711x = linearLayout5;
    }

    @NonNull
    public static k50 a(@NonNull View view) {
        int i2 = R.id.cardArena_lay;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cardArena_lay);
        if (textView != null) {
            i2 = R.id.cardImageInvite_lay;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.cardImageInvite_lay);
            if (textView2 != null) {
                i2 = R.id.cardImageLocal_lay;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.cardImageLocal_lay);
                if (textView3 != null) {
                    i2 = R.id.cardImageMatch_lay;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.cardImageMatch_lay);
                    if (textView4 != null) {
                        i2 = R.id.cardImageSolo_lay;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.cardImageSolo_lay);
                        if (textView5 != null) {
                            i2 = R.id.game_lay;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.game_lay);
                            if (linearLayout != null) {
                                i2 = R.id.mg_loading;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.mg_loading);
                                if (progressBar != null) {
                                    i2 = R.id.net_match2_game_fali_icon;
                                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.net_match2_game_fali_icon);
                                    if (button != null) {
                                        i2 = R.id.net_match2_game_fali_lay;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.net_match2_game_fali_lay);
                                        if (linearLayout2 != null) {
                                            i2 = R.id.net_match2_game_fali_txt;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.net_match2_game_fali_txt);
                                            if (textView6 != null) {
                                                i2 = R.id.psp_lay;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.psp_lay);
                                                if (textView7 != null) {
                                                    i2 = R.id.region;
                                                    Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.region);
                                                    if (button2 != null) {
                                                        i2 = R.id.region_lay;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.region_lay);
                                                        if (linearLayout3 != null) {
                                                            i2 = R.id.title_1;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.title_1);
                                                            if (textView8 != null) {
                                                                i2 = R.id.title1_icon_1;
                                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.title1_icon_1);
                                                                if (imageView != null) {
                                                                    i2 = R.id.title1_icon_2;
                                                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.title1_icon_2);
                                                                    if (imageView2 != null) {
                                                                        i2 = R.id.title1_icon_3;
                                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.title1_icon_3);
                                                                        if (imageView3 != null) {
                                                                            i2 = R.id.title_2;
                                                                            TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.title_2);
                                                                            if (textView9 != null) {
                                                                                i2 = R.id.title2_icon_1;
                                                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.title2_icon_1);
                                                                                if (imageView4 != null) {
                                                                                    i2 = R.id.title2_icon_2;
                                                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.title2_icon_2);
                                                                                    if (imageView5 != null) {
                                                                                        i2 = R.id.title2_icon_3;
                                                                                        ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.title2_icon_3);
                                                                                        if (imageView6 != null) {
                                                                                            i2 = R.id.titlelay_1;
                                                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.titlelay_1);
                                                                                            if (linearLayout4 != null) {
                                                                                                i2 = R.id.titlelay_2;
                                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.titlelay_2);
                                                                                                if (linearLayout5 != null) {
                                                                                                    return new k50((FrameLayout) view, textView, textView2, textView3, textView4, textView5, linearLayout, progressBar, button, linearLayout2, textView6, textView7, button2, linearLayout3, textView8, imageView, imageView2, imageView3, textView9, imageView4, imageView5, imageView6, linearLayout4, linearLayout5);
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
    public static k50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.network_fight_child_lay, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f21688a;
    }
}
