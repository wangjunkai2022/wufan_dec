package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MStarBar;
/* compiled from: CommentCreatActivityBinding.java */
/* loaded from: classes3.dex */
public final class u7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25422a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25423b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f25424c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final MStarBar f25425d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25426e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final CheckBox f25427f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f25428g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25429h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25430i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f25431j;

    private u7(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull MStarBar mStarBar, @NonNull TextView textView, @NonNull CheckBox checkBox, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f25422a = linearLayout;
        this.f25423b = imageView;
        this.f25424c = editText;
        this.f25425d = mStarBar;
        this.f25426e = textView;
        this.f25427f = checkBox;
        this.f25428g = linearLayout2;
        this.f25429h = textView2;
        this.f25430i = textView3;
        this.f25431j = textView4;
    }

    @NonNull
    public static u7 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.commentcreat_et;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.commentcreat_et);
            if (editText != null) {
                i2 = R.id.mstarBar;
                MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(view, R.id.mstarBar);
                if (mStarBar != null) {
                    i2 = R.id.mstarBarTx;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.mstarBarTx);
                    if (textView != null) {
                        i2 = R.id.phoneModleCB;
                        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.phoneModleCB);
                        if (checkBox != null) {
                            i2 = R.id.starLl;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.starLl);
                            if (linearLayout != null) {
                                i2 = R.id.textTopRight;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textTopRight);
                                if (textView2 != null) {
                                    i2 = R.id.title_textview;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                                    if (textView3 != null) {
                                        i2 = R.id.tvTips;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTips);
                                        if (textView4 != null) {
                                            return new u7((LinearLayout) view, imageView, editText, mStarBar, textView, checkBox, linearLayout, textView2, textView3, textView4);
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
    public static u7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_creat_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25422a;
    }
}
