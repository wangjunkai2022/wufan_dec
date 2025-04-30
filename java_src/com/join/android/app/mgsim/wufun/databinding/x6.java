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
import com.join.mgps.customview.CloudDownButn;
/* compiled from: CloudListItem2Binding.java */
/* loaded from: classes3.dex */
public final class x6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26443a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26444b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26445c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CloudDownButn f26446d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26447e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f26448f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f26449g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f26450h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f26451i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f26452j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final SimpleDraweeView f26453k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f26454l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f26455m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f26456n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f26457o;

    private x6(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull CloudDownButn cloudDownButn, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8) {
        this.f26443a = linearLayout;
        this.f26444b = textView;
        this.f26445c = textView2;
        this.f26446d = cloudDownButn;
        this.f26447e = textView3;
        this.f26448f = linearLayout2;
        this.f26449g = imageView;
        this.f26450h = linearLayout3;
        this.f26451i = linearLayout4;
        this.f26452j = textView4;
        this.f26453k = simpleDraweeView;
        this.f26454l = textView5;
        this.f26455m = textView6;
        this.f26456n = textView7;
        this.f26457o = textView8;
    }

    @NonNull
    public static x6 a(@NonNull View view) {
        int i2 = R.id.authorname;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.authorname);
        if (textView != null) {
            i2 = R.id.backUp;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.backUp);
            if (textView2 != null) {
                i2 = R.id.downButton;
                CloudDownButn cloudDownButn = (CloudDownButn) ViewBindings.findChildViewById(view, R.id.downButton);
                if (cloudDownButn != null) {
                    i2 = R.id.goodauthor;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.goodauthor);
                    if (textView3 != null) {
                        i2 = R.id.iv_more;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_more);
                        if (linearLayout != null) {
                            i2 = R.id.ivgoodauthor;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivgoodauthor);
                            if (imageView != null) {
                                i2 = R.id.ll_info;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_info);
                                if (linearLayout2 != null) {
                                    i2 = R.id.ll_vip;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_vip);
                                    if (linearLayout3 != null) {
                                        i2 = R.id.shape;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.shape);
                                        if (textView4 != null) {
                                            i2 = R.id.simv;
                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.simv);
                                            if (simpleDraweeView != null) {
                                                i2 = R.id.tv_evalute;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_evalute);
                                                if (textView5 != null) {
                                                    i2 = R.id.tv_name;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                                    if (textView6 != null) {
                                                        i2 = R.id.tvcouldnum;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tvcouldnum);
                                                        if (textView7 != null) {
                                                            i2 = R.id.tvgoodpraisenum;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tvgoodpraisenum);
                                                            if (textView8 != null) {
                                                                return new x6((LinearLayout) view, textView, textView2, cloudDownButn, textView3, linearLayout, imageView, linearLayout2, linearLayout3, textView4, simpleDraweeView, textView5, textView6, textView7, textView8);
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
    public static x6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cloud_list_item2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26443a;
    }
}
