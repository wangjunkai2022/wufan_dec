package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemArchiveBinding.java */
/* loaded from: classes3.dex */
public final class jp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21520a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f21521b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f21522c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f21523d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f21524e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f21525f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f21526g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f21527h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f21528i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RecyclerView f21529j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f21530k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f21531l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f21532m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f21533n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f21534o;

    private jp(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull RecyclerView recyclerView, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f21520a = linearLayout;
        this.f21521b = button;
        this.f21522c = button2;
        this.f21523d = imageView;
        this.f21524e = imageView2;
        this.f21525f = linearLayout2;
        this.f21526g = linearLayout3;
        this.f21527h = linearLayout4;
        this.f21528i = linearLayout5;
        this.f21529j = recyclerView;
        this.f21530k = relativeLayout;
        this.f21531l = relativeLayout2;
        this.f21532m = textView;
        this.f21533n = textView2;
        this.f21534o = textView3;
    }

    @NonNull
    public static jp a(@NonNull View view) {
        int i2 = R.id.btn_archive_down;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_archive_down);
        if (button != null) {
            i2 = R.id.btn_cancel;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_cancel);
            if (button2 != null) {
                i2 = R.id.iv_all_select;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_all_select);
                if (imageView != null) {
                    i2 = R.id.iv_redbroadcast;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_redbroadcast);
                    if (imageView2 != null) {
                        i2 = R.id.ll_all_select;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_all_select);
                        if (linearLayout != null) {
                            i2 = R.id.ll_lookdetail;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_lookdetail);
                            if (linearLayout2 != null) {
                                i2 = R.id.ll_nodata;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_nodata);
                                if (linearLayout3 != null) {
                                    i2 = R.id.ll_right;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_right);
                                    if (linearLayout4 != null) {
                                        i2 = R.id.rcy;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rcy);
                                        if (recyclerView != null) {
                                            i2 = R.id.rl_showtitle_bc;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_showtitle_bc);
                                            if (relativeLayout != null) {
                                                i2 = R.id.rl_titlebar;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_titlebar);
                                                if (relativeLayout2 != null) {
                                                    i2 = R.id.tv_selectarchive_size;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_selectarchive_size);
                                                    if (textView != null) {
                                                        i2 = R.id.tv_show_nodata;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_show_nodata);
                                                        if (textView2 != null) {
                                                            i2 = R.id.tv_showtitle_bc;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_showtitle_bc);
                                                            if (textView3 != null) {
                                                                return new jp((LinearLayout) view, button, button2, imageView, imageView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, recyclerView, relativeLayout, relativeLayout2, textView, textView2, textView3);
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
    public static jp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_archive, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21520a;
    }
}
