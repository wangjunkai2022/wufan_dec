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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CornersLinearLayout;
import com.join.mgps.customview.textview.MovementTextView;
/* compiled from: ItemIntroductionCommontBinding.java */
/* loaded from: classes3.dex */
public final class tq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25278a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CornersLinearLayout f25279b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25280c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final MovementTextView f25281d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25282e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f25283f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f25284g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f25285h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SimpleDraweeView f25286i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f25287j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f25288k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f25289l;

    private tq(@NonNull LinearLayout linearLayout, @NonNull CornersLinearLayout cornersLinearLayout, @NonNull LinearLayout linearLayout2, @NonNull MovementTextView movementTextView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view, @NonNull LinearLayout linearLayout3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f25278a = linearLayout;
        this.f25279b = cornersLinearLayout;
        this.f25280c = linearLayout2;
        this.f25281d = movementTextView;
        this.f25282e = imageView;
        this.f25283f = imageView2;
        this.f25284g = view;
        this.f25285h = linearLayout3;
        this.f25286i = simpleDraweeView;
        this.f25287j = textView;
        this.f25288k = textView2;
        this.f25289l = textView3;
    }

    @NonNull
    public static tq a(@NonNull View view) {
        int i2 = R.id.cll_view;
        CornersLinearLayout cornersLinearLayout = (CornersLinearLayout) ViewBindings.findChildViewById(view, R.id.cll_view);
        if (cornersLinearLayout != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i2 = R.id.content;
            MovementTextView movementTextView = (MovementTextView) ViewBindings.findChildViewById(view, R.id.content);
            if (movementTextView != null) {
                i2 = R.id.iv_more;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_more);
                if (imageView != null) {
                    i2 = R.id.iv_praise;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_praise);
                    if (imageView2 != null) {
                        i2 = R.id.layoutTop;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.layoutTop);
                        if (findChildViewById != null) {
                            i2 = R.id.ll_replay;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_replay);
                            if (linearLayout2 != null) {
                                i2 = R.id.siv_head;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.siv_head);
                                if (simpleDraweeView != null) {
                                    i2 = R.id.tv_replay_num;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_replay_num);
                                    if (textView != null) {
                                        i2 = R.id.tv_star_num;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_star_num);
                                        if (textView2 != null) {
                                            i2 = R.id.userName;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                                            if (textView3 != null) {
                                                return new tq(linearLayout, cornersLinearLayout, linearLayout, movementTextView, imageView, imageView2, findChildViewById, linearLayout2, simpleDraweeView, textView, textView2, textView3);
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
    public static tq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_introduction_commont, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25278a;
    }
}
