package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadMoreRecyclerView;
/* compiled from: CommentAllListFragmentBinding.java */
/* loaded from: classes3.dex */
public final class t7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25105a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25106b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LoadMoreRecyclerView f25107c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25108d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25109e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final NestedScrollView f25110f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25111g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25112h;

    private t7(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LoadMoreRecyclerView loadMoreRecyclerView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull NestedScrollView nestedScrollView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f25105a = linearLayout;
        this.f25106b = imageView;
        this.f25107c = loadMoreRecyclerView;
        this.f25108d = textView;
        this.f25109e = imageView2;
        this.f25110f = nestedScrollView;
        this.f25111g = textView2;
        this.f25112h = textView3;
    }

    @NonNull
    public static t7 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.comment_all_list;
            LoadMoreRecyclerView loadMoreRecyclerView = (LoadMoreRecyclerView) ViewBindings.findChildViewById(view, R.id.comment_all_list);
            if (loadMoreRecyclerView != null) {
                i2 = R.id.editText5;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.editText5);
                if (textView != null) {
                    i2 = R.id.imageView44;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView44);
                    if (imageView2 != null) {
                        i2 = R.id.noCommentLl;
                        NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.noCommentLl);
                        if (nestedScrollView != null) {
                            i2 = R.id.textTopRight;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textTopRight);
                            if (textView2 != null) {
                                i2 = R.id.title_textview;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                                if (textView3 != null) {
                                    return new t7((LinearLayout) view, imageView, loadMoreRecyclerView, textView, imageView2, nestedScrollView, textView2, textView3);
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
    public static t7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_all_list_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25105a;
    }
}
