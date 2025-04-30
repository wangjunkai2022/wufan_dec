package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameDetailCustomLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ji implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21478a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ProgressBar f21479b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f21480c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f21481d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f21482e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f21483f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21484g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RecyclerView f21485h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final fa f21486i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f21487j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f21488k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f21489l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f21490m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f21491n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final qc0 f21492o;

    private ji(@NonNull RelativeLayout relativeLayout, @NonNull ProgressBar progressBar, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull TextView textView, @NonNull RecyclerView recyclerView, @NonNull fa faVar, @NonNull Button button, @NonNull RelativeLayout relativeLayout5, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout6, @NonNull qc0 qc0Var) {
        this.f21478a = relativeLayout;
        this.f21479b = progressBar;
        this.f21480c = imageView;
        this.f21481d = relativeLayout2;
        this.f21482e = relativeLayout3;
        this.f21483f = relativeLayout4;
        this.f21484g = textView;
        this.f21485h = recyclerView;
        this.f21486i = faVar;
        this.f21487j = button;
        this.f21488k = relativeLayout5;
        this.f21489l = textView2;
        this.f21490m = linearLayout;
        this.f21491n = relativeLayout6;
        this.f21492o = qc0Var;
    }

    @NonNull
    public static ji a(@NonNull View view) {
        int i2 = R.id.butnProgressBar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.butnProgressBar);
        if (progressBar != null) {
            i2 = R.id.butn_showdownload;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.butn_showdownload);
            if (imageView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i2 = R.id.detialDownBottom;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.detialDownBottom);
                if (relativeLayout2 != null) {
                    i2 = R.id.downloadRLayout;
                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.downloadRLayout);
                    if (relativeLayout3 != null) {
                        i2 = R.id.gameDescribeInit;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameDescribeInit);
                        if (textView != null) {
                            i2 = R.id.gameListView;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.gameListView);
                            if (recyclerView != null) {
                                i2 = R.id.include2;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.include2);
                                if (findChildViewById != null) {
                                    fa a4 = fa.a(findChildViewById);
                                    i2 = R.id.instalButtomButn;
                                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.instalButtomButn);
                                    if (button != null) {
                                        i2 = R.id.instalbutnLayout;
                                        RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.instalbutnLayout);
                                        if (relativeLayout4 != null) {
                                            i2 = R.id.percent;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.percent);
                                            if (textView2 != null) {
                                                i2 = R.id.progress_layout;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.progress_layout);
                                                if (linearLayout != null) {
                                                    i2 = R.id.progressbarLayout;
                                                    RelativeLayout relativeLayout5 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.progressbarLayout);
                                                    if (relativeLayout5 != null) {
                                                        i2 = R.id.top_banner;
                                                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.top_banner);
                                                        if (findChildViewById2 != null) {
                                                            return new ji(relativeLayout, progressBar, imageView, relativeLayout, relativeLayout2, relativeLayout3, textView, recyclerView, a4, button, relativeLayout4, textView2, linearLayout, relativeLayout5, qc0.a(findChildViewById2));
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
    public static ji c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ji d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_detail_custom_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21478a;
    }
}
