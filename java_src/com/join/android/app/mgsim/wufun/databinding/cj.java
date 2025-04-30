package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameDownloadRecomdActivityBinding.java */
/* loaded from: classes3.dex */
public final class cj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18929a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AppBarLayout f18930b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f18931c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f18932d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f18933e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18934f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ConstraintLayout f18935g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f18936h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f18937i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final CoordinatorLayout f18938j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RecyclerView f18939k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f18940l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f18941m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f18942n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f18943o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f18944p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f18945q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f18946r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final RelativeLayout f18947s;

    private cj(@NonNull LinearLayout linearLayout, @NonNull AppBarLayout appBarLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView4, @NonNull CoordinatorLayout coordinatorLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull LinearLayout linearLayout3, @NonNull RelativeLayout relativeLayout) {
        this.f18929a = linearLayout;
        this.f18930b = appBarLayout;
        this.f18931c = imageView;
        this.f18932d = imageView2;
        this.f18933e = imageView3;
        this.f18934f = textView;
        this.f18935g = constraintLayout;
        this.f18936h = simpleDraweeView;
        this.f18937i = imageView4;
        this.f18938j = coordinatorLayout;
        this.f18939k = recyclerView;
        this.f18940l = textView2;
        this.f18941m = linearLayout2;
        this.f18942n = textView3;
        this.f18943o = textView4;
        this.f18944p = textView5;
        this.f18945q = textView6;
        this.f18946r = linearLayout3;
        this.f18947s = relativeLayout;
    }

    @NonNull
    public static cj a(@NonNull View view) {
        int i2 = R.id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appbar);
        if (appBarLayout != null) {
            i2 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
            if (imageView != null) {
                i2 = R.id.close2;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.close2);
                if (imageView2 != null) {
                    i2 = R.id.close3;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.close3);
                    if (imageView3 != null) {
                        i2 = R.id.downNumber;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.downNumber);
                        if (textView != null) {
                            i2 = R.id.downloadAcc;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.downloadAcc);
                            if (constraintLayout != null) {
                                i2 = R.id.icon;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                                if (simpleDraweeView != null) {
                                    i2 = R.id.imageView56;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView56);
                                    if (imageView4 != null) {
                                        i2 = R.id.main;
                                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.main);
                                        if (coordinatorLayout != null) {
                                            i2 = R.id.recyclerView;
                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                                            if (recyclerView != null) {
                                                i2 = R.id.seetext;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.seetext);
                                                if (textView2 != null) {
                                                    i2 = R.id.speedLayout;
                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.speedLayout);
                                                    if (linearLayout != null) {
                                                        i2 = R.id.table1;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.table1);
                                                        if (textView3 != null) {
                                                            i2 = R.id.table2;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.table2);
                                                            if (textView4 != null) {
                                                                i2 = R.id.tip;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tip);
                                                                if (textView5 != null) {
                                                                    i2 = R.id.title;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                                    if (textView6 != null) {
                                                                        i2 = R.id.f17877x;
                                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.f17877x);
                                                                        if (linearLayout2 != null) {
                                                                            i2 = R.id.xx;
                                                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.xx);
                                                                            if (relativeLayout != null) {
                                                                                return new cj((LinearLayout) view, appBarLayout, imageView, imageView2, imageView3, textView, constraintLayout, simpleDraweeView, imageView4, coordinatorLayout, recyclerView, textView2, linearLayout, textView3, textView4, textView5, textView6, linearLayout2, relativeLayout);
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
    public static cj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_download_recomd_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18929a;
    }
}
