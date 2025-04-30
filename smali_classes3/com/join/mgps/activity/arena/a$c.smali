.class Lcom/join/mgps/activity/arena/a$c;
.super Ljava/lang/Object;
.source "ArenaGameListFragmentMain.java"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/a;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/a$c;->a:Lcom/join/mgps/activity/arena/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$c;->a:Lcom/join/mgps/activity/arena/a;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/a;->N(Lcom/join/mgps/activity/arena/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$c;->a:Lcom/join/mgps/activity/arena/a;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$c;->a:Lcom/join/mgps/activity/arena/a;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/a;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->y1()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$c;->a:Lcom/join/mgps/activity/arena/a;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/a$c;->a:Lcom/join/mgps/activity/arena/a;

    const v2, 0x7f110206

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$c;->a:Lcom/join/mgps/activity/arena/a;

    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/a;->W()V

    :cond_1
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
