.class Lru/noties/scrollable/ScrollableLayout$i;
.super Lru/noties/scrollable/h;
.source "ScrollableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/ScrollableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lru/noties/scrollable/ScrollableLayout;


# direct methods
.method private constructor <init>(Lru/noties/scrollable/ScrollableLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-direct {p0}, Lru/noties/scrollable/h;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lru/noties/scrollable/ScrollableLayout$i;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lru/noties/scrollable/ScrollableLayout;Lru/noties/scrollable/ScrollableLayout$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lru/noties/scrollable/ScrollableLayout$i;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p1, p2

    if-gtz p2, :cond_b

    iget p2, p0, Lru/noties/scrollable/ScrollableLayout$i;->a:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p4, p2

    float-to-int p2, p4

    .line 4
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {p4}, Lru/noties/scrollable/ScrollableLayout;->f(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/l;

    move-result-object p4

    const/4 v0, 0x1

    if-nez p4, :cond_2

    .line 5
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    add-int/2addr p2, p1

    invoke-virtual {p4, p3, p2}, Lru/noties/scrollable/ScrollableLayout;->scrollTo(II)V

    .line 6
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    if-eq p1, p2, :cond_1

    const/4 p3, 0x1

    :cond_1
    return p3

    :cond_2
    const/4 p4, -0x1

    if-gez p2, :cond_3

    const/4 v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 7
    :goto_0
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->g(Lru/noties/scrollable/ScrollableLayout;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 8
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    if-nez p1, :cond_4

    if-ne v1, p4, :cond_4

    const/4 p4, 0x1

    goto :goto_1

    :cond_4
    const/4 p4, 0x0

    :goto_1
    invoke-static {v2, p4}, Lru/noties/scrollable/ScrollableLayout;->h(Lru/noties/scrollable/ScrollableLayout;Z)Z

    .line 9
    :cond_5
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {p4}, Lru/noties/scrollable/ScrollableLayout;->g(Lru/noties/scrollable/ScrollableLayout;)Z

    move-result p4

    if-eqz p4, :cond_8

    if-ne v1, v0, :cond_7

    if-nez p1, :cond_7

    .line 10
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {p4}, Lru/noties/scrollable/ScrollableLayout;->f(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/l;

    move-result-object p4

    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-interface {p4, v1, p2}, Lru/noties/scrollable/l;->a(Lru/noties/scrollable/ScrollableLayout;I)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 11
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {p4}, Lru/noties/scrollable/ScrollableLayout;->f(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/l;

    move-result-object p4

    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-interface {p4, v1, p2}, Lru/noties/scrollable/l;->c(Lru/noties/scrollable/ScrollableLayout;I)V

    const/4 p4, 0x1

    goto :goto_3

    .line 12
    :cond_6
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {p4}, Lru/noties/scrollable/ScrollableLayout;->f(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/l;

    move-result-object p4

    invoke-interface {p4}, Lru/noties/scrollable/l;->clear()V

    .line 13
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {p4, p3}, Lru/noties/scrollable/ScrollableLayout;->h(Lru/noties/scrollable/ScrollableLayout;Z)Z

    goto :goto_2

    .line 14
    :cond_7
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {p4}, Lru/noties/scrollable/ScrollableLayout;->f(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/l;

    move-result-object p4

    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-interface {p4, v1, p2}, Lru/noties/scrollable/l;->c(Lru/noties/scrollable/ScrollableLayout;I)V

    :cond_8
    :goto_2
    const/4 p4, 0x0

    :goto_3
    if-nez p4, :cond_a

    .line 15
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    add-int/2addr p2, p1

    invoke-virtual {p4, p3, p2}, Lru/noties/scrollable/ScrollableLayout;->scrollTo(II)V

    .line 16
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    if-eq p1, p2, :cond_9

    const/4 p3, 0x1

    :cond_9
    return p3

    :cond_a
    return v0

    :cond_b
    :goto_4
    return p3
.end method
