.class Lcom/join/mgps/activity/GameDetailActivity$a;
.super Ljava/lang/Object;
.source "GameDetailActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$a;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    const-string v0, "gamelist  "

    const-string v1, "loadmore 11111"

    .line 1
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$a;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-boolean v2, v1, Lcom/join/mgps/activity/GameDetailActivity;->C0:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/join/mgps/activity/GameDetailActivity;->D0:Z

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/join/mgps/activity/GameDetailActivity;->J0()V

    const-string v1, "loadmore 2222"

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$a;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameDetailActivity;->H0()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity;->d:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->f()V

    :goto_0
    return-void
.end method
