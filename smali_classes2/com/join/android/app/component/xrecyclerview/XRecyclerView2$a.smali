.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;
.super Lcom/join/mgps/ptr/a;
.source "XRecyclerView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-direct {p0}, Lcom/join/mgps/ptr/a;-><init>()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->V0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setLoadingMoreEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getFirstCompletelyVisiblePosition()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->X0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    move-result-object v0

    sget-object v2, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    if-ne v0, v2, :cond_0

    invoke-static {p1, p2, p3}, Lcom/join/mgps/ptr/a;->d(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->e()V

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->R0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->R0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;->onRefresh()V

    :cond_0
    return-void
.end method
