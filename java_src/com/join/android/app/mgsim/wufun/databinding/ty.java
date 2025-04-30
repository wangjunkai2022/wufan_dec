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
/* compiled from: MgForumPostActivityItemPostFooterBinding.java */
/* loaded from: classes3.dex */
public final class ty implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25330a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25331b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25332c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25333d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25334e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f25335f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f25336g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25337h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f25338i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f25339j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final View f25340k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f25341l;

    private ty(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView4, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull View view, @NonNull TextView textView5) {
        this.f25330a = linearLayout;
        this.f25331b = textView;
        this.f25332c = linearLayout2;
        this.f25333d = textView2;
        this.f25334e = textView3;
        this.f25335f = imageView;
        this.f25336g = linearLayout3;
        this.f25337h = textView4;
        this.f25338i = imageView2;
        this.f25339j = imageView3;
        this.f25340k = view;
        this.f25341l = textView5;
    }

    @NonNull
    public static ty a(@NonNull View view) {
        int i2 = R.id.forum_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_name);
        if (textView != null) {
            i2 = R.id.forum_name_parent;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_name_parent);
            if (linearLayout != null) {
                i2 = R.id.forum_post_commit;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_commit);
                if (textView2 != null) {
                    i2 = R.id.forum_post_praise;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_praise);
                    if (textView3 != null) {
                        i2 = R.id.forum_post_praise_icon;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.forum_post_praise_icon);
                        if (imageView != null) {
                            i2 = R.id.forum_post_praise_parent;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_post_praise_parent);
                            if (linearLayout2 != null) {
                                i2 = R.id.forum_post_view;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_view);
                                if (textView4 != null) {
                                    i2 = R.id.imageView10;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView10);
                                    if (imageView2 != null) {
                                        i2 = R.id.imageView9;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView9);
                                        if (imageView3 != null) {
                                            i2 = R.id.post_footer_divider;
                                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.post_footer_divider);
                                            if (findChildViewById != null) {
                                                i2 = R.id.textView19;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.textView19);
                                                if (textView5 != null) {
                                                    return new ty((LinearLayout) view, textView, linearLayout, textView2, textView3, imageView, linearLayout2, textView4, imageView2, imageView3, findChildViewById, textView5);
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
    public static ty c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ty d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_post_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25330a;
    }
}
