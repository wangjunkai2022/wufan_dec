.class Lcom/join/mgps/activity/GameDetailActivity$d;
.super Ljava/lang/Object;
.source "GameDetailActivity.java"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$d;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$d;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-boolean v1, v0, Lcom/join/mgps/activity/GameDetailActivity;->C0:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/activity/GameDetailActivity;->J0()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$d;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameDetailActivity;->H0()V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
