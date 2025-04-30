.class public Lcom/join/mgps/customview/textview/MovementTextView;
.super Landroid/widget/TextView;
.source "MovementTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/textview/MovementTextView$a;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/customview/textview/MovementTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)[Landroid/text/style/ClickableSpan;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/text/SpannableStringBuilder;

    const-class v0, Lm1/a;

    invoke-virtual {p1, p2, p2, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Landroid/text/SpannableString;

    const-class v0, Lm1/a;

    invoke-virtual {p1, p2, p2, v0}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    goto :goto_0

    .line 5
    :cond_1
    check-cast p1, Landroid/text/SpannedString;

    const-class v0, Lm1/a;

    invoke-virtual {p1, p2, p2, v0}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3
    instance-of v2, v0, Landroid/text/SpannableStringBuilder;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/text/SpannedString;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/text/SpannableString;

    if-eqz v2, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    sub-int/2addr p1, v3

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    add-int/2addr p1, v3

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    int-to-float v2, v2

    invoke-virtual {v3, p1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/textview/MovementTextView;->a(Ljava/lang/CharSequence;I)[Landroid/text/style/ClickableSpan;

    move-result-object p1

    .line 13
    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 14
    aget-object p1, p1, v0

    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    return v1

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/textview/MovementTextView;->a:Lcom/join/mgps/customview/textview/MovementTextView$a;

    if-eqz p1, :cond_2

    .line 16
    invoke-interface {p1}, Lcom/join/mgps/customview/textview/MovementTextView$a;->onClickText()V

    :cond_2
    return v1
.end method

.method public setClickTextListener(Lcom/join/mgps/customview/textview/MovementTextView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/textview/MovementTextView;->a:Lcom/join/mgps/customview/textview/MovementTextView$a;

    return-void
.end method
