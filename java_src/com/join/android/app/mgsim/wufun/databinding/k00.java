package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TableLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumWelcomeItemAdBinding.java */
/* loaded from: classes3.dex */
public final class k00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21606a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TableLayout f21607b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f21608c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f21609d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f21610e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f21611f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f21612g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f21613h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f21614i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f21615j;

    private k00(@NonNull LinearLayout linearLayout, @NonNull TableLayout tableLayout, @NonNull View view, @NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21606a = linearLayout;
        this.f21607b = tableLayout;
        this.f21608c = view;
        this.f21609d = relativeLayout;
        this.f21610e = simpleDraweeView;
        this.f21611f = simpleDraweeView2;
        this.f21612g = simpleDraweeView3;
        this.f21613h = imageView;
        this.f21614i = textView;
        this.f21615j = textView2;
    }

    @NonNull
    public static k00 a(@NonNull View view) {
        int i2 = R.id.content;
        TableLayout tableLayout = (TableLayout) ViewBindings.findChildViewById(view, R.id.content);
        if (tableLayout != null) {
            i2 = R.id.dividerTop;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.dividerTop);
            if (findChildViewById != null) {
                i2 = R.id.forumExtFunc;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.forumExtFunc);
                if (relativeLayout != null) {
                    i2 = R.id.img_1;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_1);
                    if (simpleDraweeView != null) {
                        i2 = R.id.img_2;
                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_2);
                        if (simpleDraweeView2 != null) {
                            i2 = R.id.img_3;
                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img_3);
                            if (simpleDraweeView3 != null) {
                                i2 = R.id.moreFunc;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.moreFunc);
                                if (imageView != null) {
                                    i2 = R.id.sectionSubTitle;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.sectionSubTitle);
                                    if (textView != null) {
                                        i2 = R.id.sectionTitle;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.sectionTitle);
                                        if (textView2 != null) {
                                            return new k00((LinearLayout) view, tableLayout, findChildViewById, relativeLayout, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, imageView, textView, textView2);
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
    public static k00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_welcome_item_ad, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21606a;
    }
}
