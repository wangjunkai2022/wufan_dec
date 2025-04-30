.class Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager$a;
.super Ljava/lang/Object;
.source "SlideLayoutManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;


# direct methods
.method constructor <init>(Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;

    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 2
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;

    invoke-static {p2}, Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;->b(Lcom/dingmouren/layoutmanagergroup/slide/SlideLayoutManager;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
