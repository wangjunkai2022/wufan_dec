.class Lcom/join/mgps/fragment/k0$a;
.super Ljava/lang/Object;
.source "FindMiniGameFragment.java"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/k0;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/k0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/k0$a;->a:Lcom/join/mgps/fragment/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$a;->a:Lcom/join/mgps/fragment/k0;

    iget v1, v0, Lcom/join/mgps/fragment/k0;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/join/mgps/fragment/k0;->i:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/k0;->R(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$a;->a:Lcom/join/mgps/fragment/k0;

    iget-object v0, v0, Lcom/join/mgps/fragment/k0;->a:Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView;->u1()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$a;->a:Lcom/join/mgps/fragment/k0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/k0;->O(Lcom/join/mgps/fragment/k0;Z)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/k0$a;->a:Lcom/join/mgps/fragment/k0;

    const/4 v1, 0x1

    iput v1, v0, Lcom/join/mgps/fragment/k0;->i:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/k0;->R(I)V

    return-void
.end method
