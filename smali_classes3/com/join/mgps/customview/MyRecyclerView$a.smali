.class Lcom/join/mgps/customview/MyRecyclerView$a;
.super Lcom/join/mgps/ptr/a;
.source "MyRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/MyRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/MyRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/MyRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView$a;->a:Lcom/join/mgps/customview/MyRecyclerView;

    invoke-direct {p0}, Lcom/join/mgps/ptr/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/join/mgps/ptr/a;->d(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    const-string p1, "onRefreshBegin----------"

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t0;->g(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView$a;->a:Lcom/join/mgps/customview/MyRecyclerView;

    invoke-static {p1}, Lcom/join/mgps/customview/MyRecyclerView;->R0(Lcom/join/mgps/customview/MyRecyclerView;)Lcom/join/mgps/customview/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView$a;->a:Lcom/join/mgps/customview/MyRecyclerView;

    invoke-static {p1}, Lcom/join/mgps/customview/MyRecyclerView;->R0(Lcom/join/mgps/customview/MyRecyclerView;)Lcom/join/mgps/customview/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/customview/j;->onRefresh()V

    :cond_0
    return-void
.end method
