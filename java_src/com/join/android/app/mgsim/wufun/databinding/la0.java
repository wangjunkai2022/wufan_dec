package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SearchBarLayoutBinding.java */
/* loaded from: classes3.dex */
public final class la0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22078a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f22079b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22080c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f22081d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f22082e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f22083f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f22084g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final EditText f22085h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f22086i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ViewFlipper f22087j;

    private la0(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout2, @NonNull View view2, @NonNull ImageView imageView3, @NonNull EditText editText, @NonNull TextView textView, @NonNull ViewFlipper viewFlipper) {
        this.f22078a = relativeLayout;
        this.f22079b = view;
        this.f22080c = imageView;
        this.f22081d = imageView2;
        this.f22082e = relativeLayout2;
        this.f22083f = view2;
        this.f22084g = imageView3;
        this.f22085h = editText;
        this.f22086i = textView;
        this.f22087j = viewFlipper;
    }

    @NonNull
    public static la0 a(@NonNull View view) {
        int i2 = R.id.divider;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
        if (findChildViewById != null) {
            i2 = R.id.img_iconback;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_iconback);
            if (imageView != null) {
                i2 = R.id.img_search;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.img_search);
                if (imageView2 != null) {
                    i2 = R.id.lLayout_search;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.lLayout_search);
                    if (relativeLayout != null) {
                        i2 = R.id.requestLayout;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.requestLayout);
                        if (findChildViewById2 != null) {
                            i2 = R.id.searchClear;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.searchClear);
                            if (imageView3 != null) {
                                i2 = R.id.searchEditText;
                                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.searchEditText);
                                if (editText != null) {
                                    i2 = R.id.tv_search;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_search);
                                    if (textView != null) {
                                        i2 = R.id.vf;
                                        ViewFlipper viewFlipper = (ViewFlipper) ViewBindings.findChildViewById(view, R.id.vf);
                                        if (viewFlipper != null) {
                                            return new la0((RelativeLayout) view, findChildViewById, imageView, imageView2, relativeLayout, findChildViewById2, imageView3, editText, textView, viewFlipper);
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
    public static la0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static la0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_bar_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22078a;
    }
}
