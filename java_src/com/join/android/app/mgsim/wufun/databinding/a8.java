package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CommentListItemFooterBinding.java */
/* loaded from: classes3.dex */
public final class a8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18050a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18051b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f18052c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18053d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f18054e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18055f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18056g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18057h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f18058i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18059j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ImageView f18060k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f18061l;

    private a8(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull View view, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull TextView textView3, @NonNull ImageView imageView3, @NonNull TextView textView4) {
        this.f18050a = linearLayout;
        this.f18051b = linearLayout2;
        this.f18052c = imageView;
        this.f18053d = textView;
        this.f18054e = view;
        this.f18055f = linearLayout3;
        this.f18056g = linearLayout4;
        this.f18057h = textView2;
        this.f18058i = imageView2;
        this.f18059j = textView3;
        this.f18060k = imageView3;
        this.f18061l = textView4;
    }

    @NonNull
    public static a8 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.like;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.like);
        if (imageView != null) {
            i2 = R.id.likeCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.likeCount);
            if (textView != null) {
                i2 = R.id.line;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                if (findChildViewById != null) {
                    i2 = R.id.llLike;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llLike);
                    if (linearLayout2 != null) {
                        i2 = R.id.llUnlike;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llUnlike);
                        if (linearLayout3 != null) {
                            i2 = R.id.phoneModle;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.phoneModle);
                            if (textView2 != null) {
                                i2 = R.id.unlike;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.unlike);
                                if (imageView2 != null) {
                                    i2 = R.id.unlikeCount;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.unlikeCount);
                                    if (textView3 != null) {
                                        i2 = R.id.view;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.view);
                                        if (imageView3 != null) {
                                            i2 = R.id.viewCount;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.viewCount);
                                            if (textView4 != null) {
                                                return new a8(linearLayout, linearLayout, imageView, textView, findChildViewById, linearLayout2, linearLayout3, textView2, imageView2, textView3, imageView3, textView4);
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
    public static a8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_list_item_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18050a;
    }
}
