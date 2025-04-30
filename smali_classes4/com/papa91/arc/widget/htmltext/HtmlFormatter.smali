.class public Lcom/papa91/arc/widget/htmltext/HtmlFormatter;
.super Ljava/lang/Object;
.source "HtmlFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatHtml(Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;)Landroid/text/Spanned;
    .locals 7
    .param p0    # Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->getImageGetter()Landroid/text/Html$ImageGetter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->getClickableTableSpan()Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->getDrawTableLinkSpan()Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;

    move-result-object v3

    new-instance v4, Lcom/papa91/arc/widget/htmltext/HtmlFormatter$1;

    invoke-direct {v4, p0}, Lcom/papa91/arc/widget/htmltext/HtmlFormatter$1;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;)V

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->getIndent()F

    move-result v5

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/widget/htmltext/HtmlFormatterBuilder;->isRemoveTrailingWhiteSpace()Z

    move-result v6

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/papa91/arc/widget/htmltext/HtmlFormatter;->formatHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;FZ)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static formatHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;FZ)Landroid/text/Spanned;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    new-instance v0, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;

    invoke-direct {v0}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;-><init>()V

    .line 7
    invoke-virtual {v0, p2}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->setClickableTableSpan(Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;)V

    .line 8
    invoke-virtual {v0, p3}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->setDrawTableLinkSpan(Lcom/papa91/arc/widget/htmltext/DrawTableLinkSpan;)V

    .line 9
    invoke-virtual {v0, p4}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->setOnClickATagListenerProvider(Lcom/papa91/arc/widget/htmltext/HtmlFormatter$TagClickListenerProvider;)V

    .line 10
    invoke-virtual {v0, p5}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->setListIndentPx(F)V

    .line 11
    invoke-virtual {v0, p0}, Lcom/papa91/arc/widget/htmltext/HtmlTagHandler;->overrideTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p6, :cond_0

    .line 12
    new-instance p2, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;

    invoke-direct {p2, v0}, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;-><init>(Lcom/papa91/arc/widget/htmltext/WrapperTagHandler;)V

    invoke-static {p0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/arc/widget/htmltext/HtmlFormatter;->removeHtmlBottomPadding(Landroid/text/Spanned;)Landroid/text/Spanned;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p2, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;

    invoke-direct {p2, v0}, Lcom/papa91/arc/widget/htmltext/WrapperContentHandler;-><init>(Lcom/papa91/arc/widget/htmltext/WrapperTagHandler;)V

    invoke-static {p0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static removeHtmlBottomPadding(Landroid/text/Spanned;)Landroid/text/Spanned;
    .locals 2
    .param p0    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spanned;

    goto :goto_0

    :cond_1
    return-object p0
.end method
