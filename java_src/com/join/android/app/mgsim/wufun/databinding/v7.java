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
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: CommentDetailActivityBinding.java */
/* loaded from: classes3.dex */
public final class v7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25761a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25762b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f25763c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25764d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25765e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f25766f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final PtrClassicFrameLayout f25767g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25768h;

    private v7(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull XListView2 xListView2, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull TextView textView2) {
        this.f25761a = linearLayout;
        this.f25762b = imageView;
        this.f25763c = xListView2;
        this.f25764d = textView;
        this.f25765e = imageView2;
        this.f25766f = linearLayout2;
        this.f25767g = ptrClassicFrameLayout;
        this.f25768h = textView2;
    }

    @NonNull
    public static v7 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.comment_detail_list;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.comment_detail_list);
            if (xListView2 != null) {
                i2 = R.id.deletedTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.deletedTv);
                if (textView != null) {
                    i2 = R.id.imTopRight;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imTopRight);
                    if (imageView2 != null) {
                        i2 = R.id.inputLl;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.inputLl);
                        if (linearLayout != null) {
                            i2 = R.id.mPtrFrame;
                            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                            if (ptrClassicFrameLayout != null) {
                                i2 = R.id.title_textview;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                                if (textView2 != null) {
                                    return new v7((LinearLayout) view, imageView, xListView2, textView, imageView2, linearLayout, ptrClassicFrameLayout, textView2);
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
    public static v7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_detail_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25761a;
    }
}
