.class Lcom/join/mgps/fragment/b$a;
.super Ljava/lang/Object;
.source "ArenaGameListFragment.java"

# interfaces
.implements Lcom/join/mgps/adapter/t1$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/b;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/b;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/b$a;->a:Lcom/join/mgps/fragment/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/b$a;->a:Lcom/join/mgps/fragment/b;

    invoke-static {v0}, Lcom/join/mgps/fragment/b;->W(Lcom/join/mgps/fragment/b;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/b$a;->a:Lcom/join/mgps/fragment/b;

    invoke-static {v1}, Lcom/join/mgps/fragment/b;->X(Lcom/join/mgps/fragment/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    const-string v1, "mGameInfo"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/b$a;->a:Lcom/join/mgps/fragment/b;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v1, 0x2711

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/b$a;->a:Lcom/join/mgps/fragment/b;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/b$a;->a:Lcom/join/mgps/fragment/b;

    invoke-static {v0}, Lcom/join/mgps/fragment/b;->Z(Lcom/join/mgps/fragment/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->v4(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/b$a;->a:Lcom/join/mgps/fragment/b;

    invoke-static {v1}, Lcom/join/mgps/fragment/b;->X(Lcom/join/mgps/fragment/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->c(Lcom/join/mgps/dto/GameInfoBean;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->a(Z)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->b(Z)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_0
    return-void
.end method
