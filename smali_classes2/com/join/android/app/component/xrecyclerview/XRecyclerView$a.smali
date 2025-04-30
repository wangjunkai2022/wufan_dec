.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;
.super Lcom/join/mgps/ptr/a;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-direct {p0}, Lcom/join/mgps/ptr/a;-><init>()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->V0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->W0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Lcom/join/mgps/ptr/a;->d(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;->e()V

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->R0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$a;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-static {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->R0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;->onRefresh()V

    :cond_0
    return-void
.end method
