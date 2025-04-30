.class Lcom/melnykov/fab/FloatingActionButton$c;
.super Lcom/melnykov/fab/c;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/melnykov/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private b:Lcom/melnykov/fab/d;

.field private c:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field final synthetic d:Lcom/melnykov/fab/FloatingActionButton;


# direct methods
.method private constructor <init>(Lcom/melnykov/fab/FloatingActionButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$c;->d:Lcom/melnykov/fab/FloatingActionButton;

    invoke-direct {p0}, Lcom/melnykov/fab/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$c;-><init>(Lcom/melnykov/fab/FloatingActionButton;)V

    return-void
.end method

.method static synthetic e(Lcom/melnykov/fab/FloatingActionButton$c;Lcom/melnykov/fab/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$c;->g(Lcom/melnykov/fab/d;)V

    return-void
.end method

.method private g(Lcom/melnykov/fab/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$c;->b:Lcom/melnykov/fab/d;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$c;->d:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->A()V

    .line 2
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$c;->b:Lcom/melnykov/fab/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/melnykov/fab/d;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$c;->d:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->t()V

    .line 2
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$c;->b:Lcom/melnykov/fab/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/melnykov/fab/d;->b()V

    :cond_0
    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$c;->c:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$c;->c:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$c;->c:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/melnykov/fab/c;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
