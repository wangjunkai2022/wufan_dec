.class Lcom/join/mgps/fragment/q4$c;
.super Ljava/lang/Object;
.source "SearchGameListFragment.java"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XQuickRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/q4;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/q4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/q4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/q4$c;->a:Lcom/join/mgps/fragment/q4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4$c;->a:Lcom/join/mgps/fragment/q4;

    invoke-static {v0}, Lcom/join/mgps/fragment/q4;->Q(Lcom/join/mgps/fragment/q4;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/q4$c;->a:Lcom/join/mgps/fragment/q4;

    iput v1, v0, Lcom/join/mgps/fragment/q4;->m:I

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2}, Lcom/join/mgps/fragment/q4;->R(Lcom/join/mgps/fragment/q4;Z)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/q4$c;->a:Lcom/join/mgps/fragment/q4;

    iget v2, v0, Lcom/join/mgps/fragment/q4;->m:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/join/mgps/fragment/q4;->X(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q4$c;->a:Lcom/join/mgps/fragment/q4;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/q4;->J()V

    return-void
.end method
