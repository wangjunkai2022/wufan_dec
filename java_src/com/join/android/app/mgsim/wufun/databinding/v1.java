package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivitySearchLabelBinding.java */
/* loaded from: classes3.dex */
public final class v1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25666a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25667b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f25668c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25669d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ListView f25670e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25671f;

    private v1(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull ImageView imageView2, @NonNull ListView listView, @NonNull TextView textView) {
        this.f25666a = linearLayout;
        this.f25667b = imageView;
        this.f25668c = editText;
        this.f25669d = imageView2;
        this.f25670e = listView;
        this.f25671f = textView;
    }

    @NonNull
    public static v1 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.et_search;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_search);
            if (editText != null) {
                i2 = R.id.ic_clear;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ic_clear);
                if (imageView2 != null) {
                    i2 = R.id.mListView;
                    ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.mListView);
                    if (listView != null) {
                        i2 = R.id.tv_nodata;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nodata);
                        if (textView != null) {
                            return new v1((LinearLayout) view, imageView, editText, imageView2, listView, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static v1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_search_label, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25666a;
    }
}
