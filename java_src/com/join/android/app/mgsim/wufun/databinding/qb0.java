package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SimpleSheetItemBinding.java */
/* loaded from: classes3.dex */
public final class qb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f23932a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23933b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f23934c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f23935d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23936e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f23937f;

    private qb0(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull Button button, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull View view) {
        this.f23932a = constraintLayout;
        this.f23933b = textView;
        this.f23934c = button;
        this.f23935d = imageView;
        this.f23936e = textView2;
        this.f23937f = view;
    }

    @NonNull
    public static qb0 a(@NonNull View view) {
        int i2 = R.id.desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
        if (textView != null) {
            i2 = R.id.download;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.download);
            if (button != null) {
                i2 = R.id.imageView;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView);
                if (imageView != null) {
                    i2 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView2 != null) {
                        i2 = R.id.view;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.view);
                        if (findChildViewById != null) {
                            return new qb0((ConstraintLayout) view, textView, button, imageView, textView2, findChildViewById);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.simple_sheet_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f23932a;
    }
}
