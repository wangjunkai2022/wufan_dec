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
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CornersLinearLayout;
/* compiled from: FragmentCommentListIntroductionBinding.java */
/* loaded from: classes3.dex */
public final class fg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CornersLinearLayout f20127a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20128b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20129c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f20130d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f20131e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f20132f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f20133g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f20134h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final XRecyclerView f20135i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RecyclerView f20136j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f20137k;

    private fg(@NonNull CornersLinearLayout cornersLinearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull XRecyclerView xRecyclerView, @NonNull RecyclerView recyclerView, @NonNull TextView textView2) {
        this.f20127a = cornersLinearLayout;
        this.f20128b = textView;
        this.f20129c = imageView;
        this.f20130d = imageView2;
        this.f20131e = imageView3;
        this.f20132f = linearLayout;
        this.f20133g = relativeLayout;
        this.f20134h = relativeLayout2;
        this.f20135i = xRecyclerView;
        this.f20136j = recyclerView;
        this.f20137k = textView2;
    }

    @NonNull
    public static fg a(@NonNull View view) {
        int i2 = R.id.editText5;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.editText5);
        if (textView != null) {
            i2 = R.id.imageView44;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView44);
            if (imageView != null) {
                i2 = R.id.iv_back;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_back);
                if (imageView2 != null) {
                    i2 = R.id.iv_close;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
                    if (imageView3 != null) {
                        i2 = R.id.ll_empty;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_empty);
                        if (linearLayout != null) {
                            i2 = R.id.rl_comment_detail;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_comment_detail);
                            if (relativeLayout != null) {
                                i2 = R.id.rl_comment_list;
                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_comment_list);
                                if (relativeLayout2 != null) {
                                    i2 = R.id.rv_comment_detail_list;
                                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.rv_comment_detail_list);
                                    if (xRecyclerView != null) {
                                        i2 = R.id.rv_list_data;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list_data);
                                        if (recyclerView != null) {
                                            i2 = R.id.tv_title;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                            if (textView2 != null) {
                                                return new fg((CornersLinearLayout) view, textView, imageView, imageView2, imageView3, linearLayout, relativeLayout, relativeLayout2, xRecyclerView, recyclerView, textView2);
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
    public static fg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_comment_list_introduction, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CornersLinearLayout getRoot() {
        return this.f20127a;
    }
}
