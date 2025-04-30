package com.join.kotlin.bindingadapter;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.databinding.BindingAdapter;
import com.join.mgps.Util.i0;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextView.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a(\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0007¨\u0006\b"}, d2 = {"Landroid/widget/TextView;", "textView", "", "tagName", "tagName2", "message", "", "setTagText", "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class TextViewKt {
    @BindingAdapter(requireAll = false, value = {"tagName", "tagName2", "message"})
    public static final void setTagText(@NotNull TextView textView, @NotNull String tagName, @NotNull String tagName2, @NotNull String message) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        Intrinsics.checkNotNullParameter(tagName, "tagName");
        Intrinsics.checkNotNullParameter(tagName2, "tagName2");
        Intrinsics.checkNotNullParameter(message, "message");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayList arrayList = new ArrayList();
        if (!(tagName.length() == 0)) {
            ForumBean.ForumPostsBean.TagInfo tagInfo = new ForumBean.ForumPostsBean.TagInfo();
            tagInfo.setName(tagName);
            tagInfo.setColor("#FF372F");
            tagInfo.setFont_color("#ffffff");
            arrayList.add(tagInfo);
        }
        if (!(tagName2.length() == 0)) {
            ForumBean.ForumPostsBean.TagInfo tagInfo2 = new ForumBean.ForumPostsBean.TagInfo();
            tagInfo2.setName(tagName2);
            tagInfo2.setColor("#0570FF");
            tagInfo2.setFont_color("#ffffff");
            arrayList.add(tagInfo2);
        }
        i0.e(textView.getContext(), spannableStringBuilder, arrayList);
        if (TextUtils.isEmpty(message)) {
            message = "";
        }
        spannableStringBuilder.append((CharSequence) message);
        textView.setText(spannableStringBuilder);
    }
}
