.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/GridLayoutManager;

.field final synthetic b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    iput-object p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    invoke-virtual {v0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    invoke-virtual {v0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;->b:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;

    invoke-virtual {v0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$g$a;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    :goto_1
    return p1
.end method
