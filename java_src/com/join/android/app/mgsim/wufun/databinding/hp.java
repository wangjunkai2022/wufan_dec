package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CornersLinearLayout;
/* compiled from: IntroductionProgressFragmentBinding.java */
/* loaded from: classes3.dex */
public final class hp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CornersLinearLayout f20871a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20872b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20873c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f20874d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f20875e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RecyclerView f20876f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20877g;

    private hp(@NonNull CornersLinearLayout cornersLinearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull TextView textView2) {
        this.f20871a = cornersLinearLayout;
        this.f20872b = textView;
        this.f20873c = imageView;
        this.f20874d = imageView2;
        this.f20875e = linearLayout;
        this.f20876f = recyclerView;
        this.f20877g = textView2;
    }

    @NonNull
    public static hp a(@NonNull View view) {
        int i2 = R.id.editText5;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.editText5);
        if (textView != null) {
            i2 = R.id.imageView44;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView44);
            if (imageView != null) {
                i2 = R.id.iv_close;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
                if (imageView2 != null) {
                    i2 = R.id.ll_empty;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_empty);
                    if (linearLayout != null) {
                        i2 = R.id.rv_list_data;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list_data);
                        if (recyclerView != null) {
                            i2 = R.id.tv_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView2 != null) {
                                return new hp((CornersLinearLayout) view, textView, imageView, imageView2, linearLayout, recyclerView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static hp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.introduction_progress_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CornersLinearLayout getRoot() {
        return this.f20871a;
    }
}
