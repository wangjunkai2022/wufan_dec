.class public Lcom/join/mgps/customview/GamelistExpandableTextView$c;
.super Landroid/text/method/LinkMovementMethod;
.source "GamelistExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/GamelistExpandableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/join/mgps/customview/GamelistExpandableTextView$e;

.field final synthetic b:Lcom/join/mgps/customview/GamelistExpandableTextView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/GamelistExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$c;->b:Lcom/join/mgps/customview/GamelistExpandableTextView;

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/join/mgps/customview/GamelistExpandableTextView$e;
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr p3, v1

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    add-int/2addr p3, v1

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p3

    int-to-float v0, v0

    .line 9
    invoke-virtual {p1, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 10
    const-class p3, Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    invoke-interface {p2, p1, p1, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    .line 11
    array-length p2, p1

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 12
    aget-object p1, p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/GamelistExpandableTextView$c;->a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/GamelistExpandableTextView$e;->a(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    invoke-interface {p2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    iget-object p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    .line 5
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    .line 6
    invoke-static {p2, p1, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/GamelistExpandableTextView$c;->a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    move-result-object p1

    .line 9
    iget-object p3, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    if-eqz p3, :cond_3

    if-eq p1, p3, :cond_3

    .line 10
    invoke-virtual {p3, v3}, Lcom/join/mgps/customview/GamelistExpandableTextView$e;->a(Z)V

    .line 11
    iput-object v4, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    .line 12
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0, v3}, Lcom/join/mgps/customview/GamelistExpandableTextView$e;->a(Z)V

    .line 15
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 16
    :cond_2
    iput-object v4, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView$e;

    .line 17
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :cond_3
    :goto_0
    return v1
.end method
