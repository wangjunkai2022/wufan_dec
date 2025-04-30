package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
/* compiled from: VipSpecialzoneActivityBinding.java */
/* loaded from: classes3.dex */
public final class he0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20762a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f20763b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20764c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CustomerDownloadView f20765d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f20766e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20767f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final XRecyclerView f20768g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f20769h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f20770i;

    private he0(@NonNull LinearLayout linearLayout, @NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull CustomerDownloadView customerDownloadView, @NonNull View view, @NonNull TextView textView, @NonNull XRecyclerView xRecyclerView, @NonNull ImageView imageView2, @NonNull TextView textView2) {
        this.f20762a = linearLayout;
        this.f20763b = constraintLayout;
        this.f20764c = imageView;
        this.f20765d = customerDownloadView;
        this.f20766e = view;
        this.f20767f = textView;
        this.f20768g = xRecyclerView;
        this.f20769h = imageView2;
        this.f20770i = textView2;
    }

    @NonNull
    public static he0 a(@NonNull View view) {
        int i2 = R.id.appbar;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.appbar);
        if (constraintLayout != null) {
            i2 = R.id.back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
            if (imageView != null) {
                i2 = R.id.downloadView;
                CustomerDownloadView customerDownloadView = (CustomerDownloadView) ViewBindings.findChildViewById(view, R.id.downloadView);
                if (customerDownloadView != null) {
                    i2 = R.id.filter;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.filter);
                    if (findChildViewById != null) {
                        i2 = R.id.filterArr;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.filterArr);
                        if (textView != null) {
                            i2 = R.id.recyclerView;
                            XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                            if (xRecyclerView != null) {
                                i2 = R.id.search;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.search);
                                if (imageView2 != null) {
                                    i2 = R.id.title;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                    if (textView2 != null) {
                                        return new he0((LinearLayout) view, constraintLayout, imageView, customerDownloadView, findChildViewById, textView, xRecyclerView, imageView2, textView2);
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
    public static he0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static he0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.vip_specialzone_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20762a;
    }
}
