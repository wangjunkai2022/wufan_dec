.class abstract Lcom/melnykov/fab/a;
.super Ljava/lang/Object;
.source "AbsListViewScrollDetector.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/widget/AbsListView;

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/a;->c:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/melnykov/fab/a;->c:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private c(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/melnykov/fab/a;->b:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method abstract d()V
.end method

.method abstract e()V
.end method

.method public f(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/a;->c:Landroid/widget/AbsListView;

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/melnykov/fab/a;->d:I

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p2}, Lcom/melnykov/fab/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2
    invoke-direct {p0}, Lcom/melnykov/fab/a;->b()I

    move-result p1

    .line 3
    iget p2, p0, Lcom/melnykov/fab/a;->a:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p3, p0, Lcom/melnykov/fab/a;->d:I

    if-le p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 4
    iget p2, p0, Lcom/melnykov/fab/a;->a:I

    if-le p2, p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/melnykov/fab/a;->e()V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/melnykov/fab/a;->d()V

    .line 7
    :cond_3
    :goto_1
    iput p1, p0, Lcom/melnykov/fab/a;->a:I

    goto :goto_3

    .line 8
    :cond_4
    iget p1, p0, Lcom/melnykov/fab/a;->b:I

    if-le p2, p1, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/melnykov/fab/a;->e()V

    goto :goto_2

    .line 10
    :cond_5
    invoke-virtual {p0}, Lcom/melnykov/fab/a;->d()V

    .line 11
    :goto_2
    invoke-direct {p0}, Lcom/melnykov/fab/a;->b()I

    move-result p1

    iput p1, p0, Lcom/melnykov/fab/a;->a:I

    .line 12
    iput p2, p0, Lcom/melnykov/fab/a;->b:I

    :goto_3
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
