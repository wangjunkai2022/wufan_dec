.class Lcom/melnykov/fab/FloatingActionButton$b;
.super Lcom/melnykov/fab/a;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/melnykov/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private e:Lcom/melnykov/fab/d;

.field private f:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic g:Lcom/melnykov/fab/FloatingActionButton;


# direct methods
.method private constructor <init>(Lcom/melnykov/fab/FloatingActionButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$b;->g:Lcom/melnykov/fab/FloatingActionButton;

    invoke-direct {p0}, Lcom/melnykov/fab/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$b;-><init>(Lcom/melnykov/fab/FloatingActionButton;)V

    return-void
.end method

.method static synthetic h(Lcom/melnykov/fab/FloatingActionButton$b;Lcom/melnykov/fab/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$b;->j(Lcom/melnykov/fab/d;)V

    return-void
.end method

.method private j(Lcom/melnykov/fab/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$b;->e:Lcom/melnykov/fab/d;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$b;->g:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->t()V

    .line 2
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$b;->e:Lcom/melnykov/fab/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/melnykov/fab/d;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$b;->g:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->t()V

    .line 2
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$b;->e:Lcom/melnykov/fab/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/melnykov/fab/d;->b()V

    :cond_0
    return-void
.end method

.method public i(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$b;->f:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$b;->f:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/melnykov/fab/a;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$b;->f:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    if-nez p2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$b;->g:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->A()V

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/melnykov/fab/a;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method
