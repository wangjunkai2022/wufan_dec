.class public Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;
.super Landroid/widget/TextView;
.source "JellyBeanSpanFixTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private addSpacesAroundSpansUntilFixed(Landroid/text/SpannableStringBuilder;II)Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    .line 5
    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    .line 6
    invoke-direct {p0, p1, v7}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->isNotSpace(Ljava/lang/CharSequence;I)Z

    move-result v7

    const-string v8, " "

    if-eqz v7, :cond_0

    .line 7
    invoke-virtual {p1, v6, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 10
    invoke-direct {p0, p1, v6}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->isNotSpace(Ljava/lang/CharSequence;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 11
    invoke-virtual {p1, v6, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 12
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V

    .line 14
    invoke-static {v1, v3}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;->fixed(Ljava/util/List;Ljava/util/List;)Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;->notFixed()Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;

    move-result-object p1

    return-object p1
.end method

.method private fallbackToString(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private fixOnMeasure(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0, v1, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->fixSpannedWithSpaces(Landroid/text/SpannableStringBuilder;II)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->fallbackToString(II)V

    :goto_0
    return-void
.end method

.method private fixSpannedWithSpaces(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->addSpacesAroundSpansUntilFixed(Landroid/text/SpannableStringBuilder;II)Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;

    move-result-object v0

    .line 3
    iget-boolean v1, v0, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;->fixed:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, p2, p3, p1, v0}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->removeUnneededSpaces(IILandroid/text/SpannableStringBuilder;Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->fallbackToString(II)V

    :goto_0
    return-void
.end method

.method private isNotSpace(Ljava/lang/CharSequence;I)Z
    .locals 1

    if-ltz p2, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x20

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private removeUnneededSpaces(IILandroid/text/SpannableStringBuilder;Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 1
    iget-object v0, p4, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;->spansWithSpacesAfter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {p3, v1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    .line 3
    invoke-virtual {p3, v1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 4
    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-virtual {p3, v1, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p4, p4, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView$FixingResult;->spansWithSpacesBefore:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-virtual {p3, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    .line 8
    invoke-virtual {p3, v3, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 9
    :try_start_1
    invoke-direct {p0, p3, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x0

    goto :goto_2

    .line 10
    :catch_1
    invoke-virtual {p3, v3, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_2
    return-void
.end method

.method private setTextAndMeasure(Ljava/lang/CharSequence;II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-super {p0, p2, p3}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/widget/htmltext/JellyBeanSpanFixTextView;->fixOnMeasure(II)V

    :goto_0
    return-void
.end method
