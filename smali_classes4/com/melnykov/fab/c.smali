.class abstract Lcom/melnykov/fab/c;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewScrollDetector.java"


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method abstract b()V
.end method

.method abstract c()V
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/melnykov/fab/c;->a:I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/melnykov/fab/c;->a:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-lez p3, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/melnykov/fab/c;->c()V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/melnykov/fab/c;->b()V

    :cond_2
    :goto_1
    return-void
.end method
