package com.papa91.arc.widget.htmltext;

import android.text.Html;
import android.text.Spanned;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class HtmlFormatter {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface TagClickListenerProvider {
        OnClickATagListener provideTagClickListener();
    }

    private HtmlFormatter() {
    }

    public static Spanned formatHtml(@NonNull final HtmlFormatterBuilder htmlFormatterBuilder) {
        return formatHtml(htmlFormatterBuilder.getHtml(), htmlFormatterBuilder.getImageGetter(), htmlFormatterBuilder.getClickableTableSpan(), htmlFormatterBuilder.getDrawTableLinkSpan(), new TagClickListenerProvider() { // from class: com.papa91.arc.widget.htmltext.HtmlFormatter.1
            @Override // com.papa91.arc.widget.htmltext.HtmlFormatter.TagClickListenerProvider
            public OnClickATagListener provideTagClickListener() {
                return HtmlFormatterBuilder.this.getOnClickATagListener();
            }
        }, htmlFormatterBuilder.getIndent(), htmlFormatterBuilder.isRemoveTrailingWhiteSpace());
    }

    @Nullable
    private static Spanned removeHtmlBottomPadding(@Nullable Spanned spanned) {
        if (spanned == null) {
            return null;
        }
        while (spanned.length() > 0 && spanned.charAt(spanned.length() - 1) == '\n') {
            spanned = (Spanned) spanned.subSequence(0, spanned.length() - 1);
        }
        return spanned;
    }

    public static Spanned formatHtml(@Nullable String str, Html.ImageGetter imageGetter, ClickableTableSpan clickableTableSpan, DrawTableLinkSpan drawTableLinkSpan, TagClickListenerProvider tagClickListenerProvider, float f4, boolean z3) {
        HtmlTagHandler htmlTagHandler = new HtmlTagHandler();
        htmlTagHandler.setClickableTableSpan(clickableTableSpan);
        htmlTagHandler.setDrawTableLinkSpan(drawTableLinkSpan);
        htmlTagHandler.setOnClickATagListenerProvider(tagClickListenerProvider);
        htmlTagHandler.setListIndentPx(f4);
        String overrideTags = htmlTagHandler.overrideTags(str);
        if (z3) {
            return removeHtmlBottomPadding(Html.fromHtml(overrideTags, imageGetter, new WrapperContentHandler(htmlTagHandler)));
        }
        return Html.fromHtml(overrideTags, imageGetter, new WrapperContentHandler(htmlTagHandler));
    }
}
