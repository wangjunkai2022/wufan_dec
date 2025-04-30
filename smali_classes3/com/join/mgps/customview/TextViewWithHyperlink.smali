.class public Lcom/join/mgps/customview/TextViewWithHyperlink;
.super Landroid/widget/TextView;
.source "TextViewWithHyperlink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/TextViewWithHyperlink$b;,
        Lcom/join/mgps/customview/TextViewWithHyperlink$a;,
        Lcom/join/mgps/customview/TextViewWithHyperlink$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Lcom/join/mgps/customview/TextViewWithHyperlink$a;)I
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v2

    const/4 v1, 0x0

    const/16 v3, 0x21

    if-lez v2, :cond_2

    .line 5
    new-instance v4, Lcom/join/mgps/customview/TextViewWithHyperlink$b;

    invoke-direct {v4, p0, p1, p4}, Lcom/join/mgps/customview/TextViewWithHyperlink$b;-><init>(Lcom/join/mgps/customview/TextViewWithHyperlink;Landroid/content/Context;Lcom/join/mgps/customview/TextViewWithHyperlink$a;)V

    add-int/lit8 p4, v2, -0x1

    invoke-virtual {v0, v4, v1, p4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6
    :cond_2
    new-instance p4, Lcom/join/mgps/customview/TextViewWithHyperlink$c;

    invoke-direct {p4, p0, p1, p3}, Lcom/join/mgps/customview/TextViewWithHyperlink$c;-><init>(Lcom/join/mgps/customview/TextViewWithHyperlink;Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    invoke-virtual {v0, p4, v2, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
