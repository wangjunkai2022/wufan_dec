package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgGameDetailLayoutBinding.java */
/* loaded from: classes3.dex */
public final class h10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20638a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20639b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ProgressBar f20640c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f20641d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f20642e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f20643f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f20644g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f20645h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ListView f20646i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final fa f20647j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f20648k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f20649l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final View f20650m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f20651n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f20652o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final LinearLayout f20653p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f20654q;

    private h10(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull TextView textView, @NonNull ListView listView, @NonNull fa faVar, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout5, @NonNull View view, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout6) {
        this.f20638a = relativeLayout;
        this.f20639b = imageView;
        this.f20640c = progressBar;
        this.f20641d = imageView2;
        this.f20642e = relativeLayout2;
        this.f20643f = relativeLayout3;
        this.f20644g = relativeLayout4;
        this.f20645h = textView;
        this.f20646i = listView;
        this.f20647j = faVar;
        this.f20648k = textView2;
        this.f20649l = relativeLayout5;
        this.f20650m = view;
        this.f20651n = textView3;
        this.f20652o = textView4;
        this.f20653p = linearLayout;
        this.f20654q = relativeLayout6;
    }

    @NonNull
    public static h10 a(@NonNull View view) {
        int i2 = R.id.backBtn;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backBtn);
        if (imageView != null) {
            i2 = R.id.butnProgressBar;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.butnProgressBar);
            if (progressBar != null) {
                i2 = R.id.butn_showdownload;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.butn_showdownload);
                if (imageView2 != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) view;
                    i2 = R.id.detialDownBottom;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.detialDownBottom);
                    if (relativeLayout2 != null) {
                        i2 = R.id.downloadRLayout2;
                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.downloadRLayout2);
                        if (relativeLayout3 != null) {
                            i2 = R.id.gameDescribeInit;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameDescribeInit);
                            if (textView != null) {
                                i2 = R.id.gameListView;
                                ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.gameListView);
                                if (listView != null) {
                                    i2 = R.id.include2;
                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.include2);
                                    if (findChildViewById != null) {
                                        fa a4 = fa.a(findChildViewById);
                                        i2 = R.id.instalButtomButn;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.instalButtomButn);
                                        if (textView2 != null) {
                                            i2 = R.id.instalbutnLayout;
                                            RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.instalbutnLayout);
                                            if (relativeLayout4 != null) {
                                                i2 = R.id.linebutn;
                                                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.linebutn);
                                                if (findChildViewById2 != null) {
                                                    i2 = R.id.moneyText;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                                    if (textView3 != null) {
                                                        i2 = R.id.percent;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.percent);
                                                        if (textView4 != null) {
                                                            i2 = R.id.progress_layout;
                                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.progress_layout);
                                                            if (linearLayout != null) {
                                                                i2 = R.id.progressbarLayout;
                                                                RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.progressbarLayout);
                                                                if (relativeLayout5 != null) {
                                                                    return new h10(relativeLayout, imageView, progressBar, imageView2, relativeLayout, relativeLayout2, relativeLayout3, textView, listView, a4, textView2, relativeLayout4, findChildViewById2, textView3, textView4, linearLayout, relativeLayout5);
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
    public static h10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_game_detail_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20638a;
    }
}
