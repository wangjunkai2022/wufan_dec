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
/* compiled from: CommentAllListActivityBinding.java */
/* loaded from: classes3.dex */
public final class s7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24728a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24729b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f24730c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24731d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24732e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final PtrClassicFrameLayout f24733f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f24734g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24735h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24736i;

    private s7(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull XListView2 xListView2, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f24728a = linearLayout;
        this.f24729b = imageView;
        this.f24730c = xListView2;
        this.f24731d = textView;
        this.f24732e = imageView2;
        this.f24733f = ptrClassicFrameLayout;
        this.f24734g = linearLayout2;
        this.f24735h = textView2;
        this.f24736i = textView3;
    }

    @NonNull
    public static s7 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.comment_all_list;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.comment_all_list);
            if (xListView2 != null) {
                i2 = R.id.editText5;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.editText5);
                if (textView != null) {
                    i2 = R.id.imageView44;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView44);
                    if (imageView2 != null) {
                        i2 = R.id.mPtrFrame;
                        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                        if (ptrClassicFrameLayout != null) {
                            i2 = R.id.noCommentLl;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.noCommentLl);
                            if (linearLayout != null) {
                                i2 = R.id.textTopRight;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textTopRight);
                                if (textView2 != null) {
                                    i2 = R.id.title_textview;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                                    if (textView3 != null) {
                                        return new s7((LinearLayout) view, imageView, xListView2, textView, imageView2, ptrClassicFrameLayout, linearLayout, textView2, textView3);
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
    public static s7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_all_list_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24728a;
    }
}
