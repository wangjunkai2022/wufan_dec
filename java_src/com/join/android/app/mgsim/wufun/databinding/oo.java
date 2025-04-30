package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
/* compiled from: IncludeChatBottomBarBinding.java */
/* loaded from: classes3.dex */
public final class oo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23321a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f23322b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f23323c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f23324d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f23325e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final no f23326f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f23327g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f23328h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23329i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ClearEditText f23330j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final HListView f23331k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ViewPager f23332l;

    private oo(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull LinearLayout linearLayout2, @NonNull no noVar, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView, @NonNull ClearEditText clearEditText, @NonNull HListView hListView, @NonNull ViewPager viewPager) {
        this.f23321a = linearLayout;
        this.f23322b = button;
        this.f23323c = button2;
        this.f23324d = button3;
        this.f23325e = linearLayout2;
        this.f23326f = noVar;
        this.f23327g = linearLayout3;
        this.f23328h = linearLayout4;
        this.f23329i = textView;
        this.f23330j = clearEditText;
        this.f23331k = hListView;
        this.f23332l = viewPager;
    }

    @NonNull
    public static oo a(@NonNull View view) {
        int i2 = R.id.btn_chat_extension;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_chat_extension);
        if (button != null) {
            i2 = R.id.btn_chat_praise;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_chat_praise);
            if (button2 != null) {
                i2 = R.id.btn_chat_send;
                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.btn_chat_send);
                if (button3 != null) {
                    i2 = R.id.chat_layout_emo;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.chat_layout_emo);
                    if (linearLayout != null) {
                        i2 = R.id.chat_layout_extension;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.chat_layout_extension);
                        if (findChildViewById != null) {
                            no a4 = no.a(findChildViewById);
                            i2 = R.id.chat_layout_extension_container;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.chat_layout_extension_container);
                            if (linearLayout2 != null) {
                                i2 = R.id.chat_layout_more;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.chat_layout_more);
                                if (linearLayout3 != null) {
                                    i2 = R.id.edit_comment_count;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.edit_comment_count);
                                    if (textView != null) {
                                        i2 = R.id.edit_user_comment;
                                        ClearEditText clearEditText = (ClearEditText) ViewBindings.findChildViewById(view, R.id.edit_user_comment);
                                        if (clearEditText != null) {
                                            i2 = R.id.matchListView;
                                            HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.matchListView);
                                            if (hListView != null) {
                                                i2 = R.id.pager_emo;
                                                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.pager_emo);
                                                if (viewPager != null) {
                                                    return new oo((LinearLayout) view, button, button2, button3, linearLayout, a4, linearLayout2, linearLayout3, textView, clearEditText, hListView, viewPager);
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
    public static oo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static oo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.include_chat_bottom_bar, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23321a;
    }
}
