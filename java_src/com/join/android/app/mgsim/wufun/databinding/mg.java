package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.KeyboardListenLayout;
/* compiled from: FragmentFriendAddBinding.java */
/* loaded from: classes3.dex */
public final class mg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final KeyboardListenLayout f22522a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f22523b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22524c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f22525d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f22526e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f22527f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final KeyboardListenLayout f22528g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RecyclerView f22529h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f22530i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22531j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f22532k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f22533l;

    private mg(@NonNull KeyboardListenLayout keyboardListenLayout, @NonNull View view, @NonNull TextView textView, @NonNull EditText editText, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull KeyboardListenLayout keyboardListenLayout2, @NonNull RecyclerView recyclerView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f22522a = keyboardListenLayout;
        this.f22523b = view;
        this.f22524c = textView;
        this.f22525d = editText;
        this.f22526e = imageView;
        this.f22527f = imageView2;
        this.f22528g = keyboardListenLayout2;
        this.f22529h = recyclerView;
        this.f22530i = textView2;
        this.f22531j = textView3;
        this.f22532k = textView4;
        this.f22533l = textView5;
    }

    @NonNull
    public static mg a(@NonNull View view) {
        int i2 = R.id.close;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.close);
        if (findChildViewById != null) {
            i2 = R.id.hint;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.hint);
            if (textView != null) {
                i2 = R.id.input;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.input);
                if (editText != null) {
                    i2 = R.id.iv1;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv1);
                    if (imageView != null) {
                        i2 = R.id.iv_no_data;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_no_data);
                        if (imageView2 != null) {
                            KeyboardListenLayout keyboardListenLayout = (KeyboardListenLayout) view;
                            i2 = R.id.recyclerView;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                            if (recyclerView != null) {
                                i2 = R.id.search;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.search);
                                if (textView2 != null) {
                                    i2 = R.id.textView40;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView40);
                                    if (textView3 != null) {
                                        i2 = R.id.textView48;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView48);
                                        if (textView4 != null) {
                                            i2 = R.id.tv_no_data;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_no_data);
                                            if (textView5 != null) {
                                                return new mg(keyboardListenLayout, findChildViewById, textView, editText, imageView, imageView2, keyboardListenLayout, recyclerView, textView2, textView3, textView4, textView5);
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
    public static mg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_friend_add, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public KeyboardListenLayout getRoot() {
        return this.f22522a;
    }
}
