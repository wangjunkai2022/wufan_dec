package com.papa91.arc.widget.htmltext;

import android.content.Context;
import android.text.Html;
import android.text.Spannable;
import android.text.Spanned;
import android.text.style.QuoteSpan;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.papa91.arc.widget.htmltext.HtmlFormatter;
import java.io.InputStream;
import java.util.Scanner;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class HtmlTextView extends JellyBeanSpanFixTextView {
    public static final boolean DEBUG = false;
    public static final String TAG = "HtmlTextView";
    public int blockQuoteBackgroundColor;
    public float blockQuoteGap;
    public int blockQuoteStripColor;
    public float blockQuoteStripWidth;
    @Nullable
    private ClickableTableSpan clickableTableSpan;
    @Nullable
    private DrawTableLinkSpan drawTableLinkSpan;
    private float indent;
    @Nullable
    private OnClickATagListener onClickATagListener;
    private boolean removeTrailingWhiteSpace;

    public HtmlTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.blockQuoteBackgroundColor = getResources().getColor(R.color.white);
        this.blockQuoteStripColor = getResources().getColor(R.color.black);
        this.blockQuoteStripWidth = 10.0f;
        this.blockQuoteGap = 20.0f;
        this.indent = 24.0f;
        this.removeTrailingWhiteSpace = true;
    }

    @NonNull
    private static String convertStreamToString(@NonNull InputStream inputStream) {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }

    private void replaceQuoteSpans(Spanned spanned) {
        QuoteSpan[] quoteSpanArr;
        Spannable spannable = (Spannable) spanned;
        for (QuoteSpan quoteSpan : (QuoteSpan[]) spannable.getSpans(0, spannable.length() - 1, QuoteSpan.class)) {
            int spanStart = spannable.getSpanStart(quoteSpan);
            int spanEnd = spannable.getSpanEnd(quoteSpan);
            int spanFlags = spannable.getSpanFlags(quoteSpan);
            spannable.removeSpan(quoteSpan);
            spannable.setSpan(new DesignQuoteSpan(this.blockQuoteBackgroundColor, this.blockQuoteStripColor, this.blockQuoteStripWidth, this.blockQuoteGap), spanStart, spanEnd, spanFlags);
        }
    }

    public void setClickableTableSpan(@Nullable ClickableTableSpan clickableTableSpan) {
        this.clickableTableSpan = clickableTableSpan;
    }

    public void setDrawTableLinkSpan(@Nullable DrawTableLinkSpan drawTableLinkSpan) {
        this.drawTableLinkSpan = drawTableLinkSpan;
    }

    public void setHtml(@RawRes int i2) {
        setHtml(i2, (Html.ImageGetter) null);
    }

    public void setListIndentPx(float f4) {
        this.indent = f4;
    }

    public void setOnClickATagListener(@Nullable OnClickATagListener onClickATagListener) {
        this.onClickATagListener = onClickATagListener;
    }

    public void setRemoveTrailingWhiteSpace(boolean z3) {
        this.removeTrailingWhiteSpace = z3;
    }

    public void setHtml(@NonNull String str) {
        setHtml(str, (Html.ImageGetter) null);
    }

    public void setHtml(@RawRes int i2, @Nullable Html.ImageGetter imageGetter) {
        setHtml(convertStreamToString(getContext().getResources().openRawResource(i2)), imageGetter);
    }

    public void setHtml(@NonNull String str, @Nullable Html.ImageGetter imageGetter) {
        Spanned formatHtml = HtmlFormatter.formatHtml(str, imageGetter, this.clickableTableSpan, this.drawTableLinkSpan, new HtmlFormatter.TagClickListenerProvider() { // from class: com.papa91.arc.widget.htmltext.HtmlTextView.1
            @Override // com.papa91.arc.widget.htmltext.HtmlFormatter.TagClickListenerProvider
            public OnClickATagListener provideTagClickListener() {
                return HtmlTextView.this.onClickATagListener;
            }
        }, this.indent, this.removeTrailingWhiteSpace);
        replaceQuoteSpans(formatHtml);
        setText(formatHtml);
        if (this.clickableTableSpan == null && this.onClickATagListener == null) {
            return;
        }
        setMovementMethod(LocalLinkMovementMethod.getInstance());
    }

    public HtmlTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.blockQuoteBackgroundColor = getResources().getColor(R.color.white);
        this.blockQuoteStripColor = getResources().getColor(R.color.black);
        this.blockQuoteStripWidth = 10.0f;
        this.blockQuoteGap = 20.0f;
        this.indent = 24.0f;
        this.removeTrailingWhiteSpace = true;
    }

    public HtmlTextView(Context context) {
        super(context);
        this.blockQuoteBackgroundColor = getResources().getColor(R.color.white);
        this.blockQuoteStripColor = getResources().getColor(R.color.black);
        this.blockQuoteStripWidth = 10.0f;
        this.blockQuoteGap = 20.0f;
        this.indent = 24.0f;
        this.removeTrailingWhiteSpace = true;
    }
}
