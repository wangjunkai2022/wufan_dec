package com.join.kotlin.bindingadapter;

import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.widget.TextView;
import androidx.databinding.BindingAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewBindingTextview.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u001a\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¨\u0006\t"}, d2 = {"Landroid/widget/TextView;", "textView", "", "text", "", "textViewBinding", "", "textcolor", "textViewColorBinding", "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ViewBindingTextviewKt {
    @BindingAdapter(requireAll = false, value = {"setTextForBlood"})
    public static final void textViewBinding(@NotNull TextView textView, @NotNull String text) {
        boolean contains$default;
        String replace$default;
        String replace$default2;
        int indexOf$default;
        Intrinsics.checkNotNullParameter(textView, "textView");
        Intrinsics.checkNotNullParameter(text, "text");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) text, (CharSequence) "《", false, 2, (Object) null);
        if (contains$default) {
            replace$default = StringsKt__StringsJVMKt.replace$default(text, "《", " ", false, 4, (Object) null);
            replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, "》", " ", false, 4, (Object) null);
            SpannableString spannableString = new SpannableString(replace$default2);
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(Color.parseColor("#303030"));
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) text, (char) 12298, 0, false, 6, (Object) null);
            spannableString.setSpan(foregroundColorSpan, indexOf$default, replace$default2.length(), 33);
            textView.setText(spannableString);
            return;
        }
        textView.setText(text);
    }

    @BindingAdapter(requireAll = false, value = {"textColor"})
    public static final void textViewColorBinding(@NotNull TextView textView, int i2) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        textView.setTextColor(i2);
    }
}
