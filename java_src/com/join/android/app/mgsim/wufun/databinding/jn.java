package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GenderCheckDialogLayoutBinding.java */
/* loaded from: classes3.dex */
public final class jn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21506a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CheckBox f21507b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f21508c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f21509d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f21510e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final CheckBox f21511f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f21512g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f21513h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f21514i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f21515j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f21516k;

    private jn(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull CheckBox checkBox2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f21506a = linearLayout;
        this.f21507b = checkBox;
        this.f21508c = linearLayout2;
        this.f21509d = imageView;
        this.f21510e = imageView2;
        this.f21511f = checkBox2;
        this.f21512g = linearLayout3;
        this.f21513h = textView;
        this.f21514i = textView2;
        this.f21515j = textView3;
        this.f21516k = textView4;
    }

    @NonNull
    public static jn a(@NonNull View view) {
        int i2 = R.id.girlCheckbox;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.girlCheckbox);
        if (checkBox != null) {
            i2 = R.id.girlLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.girlLayout);
            if (linearLayout != null) {
                i2 = R.id.imageView;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView);
                if (imageView != null) {
                    i2 = R.id.imageView2;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView2);
                    if (imageView2 != null) {
                        i2 = R.id.manCheckbox;
                        CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(view, R.id.manCheckbox);
                        if (checkBox2 != null) {
                            i2 = R.id.manLayout;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.manLayout);
                            if (linearLayout2 != null) {
                                i2 = R.id.textView;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                                if (textView != null) {
                                    i2 = R.id.textView2;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
                                    if (textView2 != null) {
                                        i2 = R.id.textView3;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView3);
                                        if (textView3 != null) {
                                            i2 = R.id.textView4;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView4);
                                            if (textView4 != null) {
                                                return new jn((LinearLayout) view, checkBox, linearLayout, imageView, imageView2, checkBox2, linearLayout2, textView, textView2, textView3, textView4);
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
    public static jn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gender_check_dialog_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21506a;
    }
}
