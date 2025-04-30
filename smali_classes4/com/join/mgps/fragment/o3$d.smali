.class Lcom/join/mgps/fragment/o3$d;
.super Ljava/lang/Object;
.source "NewArenaMainFragment.java"

# interfaces
.implements Lcom/join/mgps/adapter/t1$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o3;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/o3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {v0}, Lcom/join/mgps/fragment/o3;->a0(Lcom/join/mgps/fragment/o3;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {v0}, Lcom/join/mgps/fragment/o3;->a0(Lcom/join/mgps/fragment/o3;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {v0}, Lcom/join/mgps/fragment/o3;->a0(Lcom/join/mgps/fragment/o3;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    if-nez p1, :cond_1

    .line 3
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/rpc/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/static/match_v2/index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    const-string v0, "11"

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setFrom(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/o3;->e0()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {v0}, Lcom/join/mgps/fragment/o3;->b0(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {v0}, Lcom/join/mgps/fragment/o3;->b0(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-static {v1}, Lcom/join/mgps/fragment/o3;->U(Lcom/join/mgps/fragment/o3;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->v4(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->c(Lcom/join/mgps/dto/GameInfoBean;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;->b(Z)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 12
    iget-object v1, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hall"

    invoke-virtual {v1, v2, v3, v4}, Lcom/papa/sim/statistic/p;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/fragment/o3$d;->a:Lcom/join/mgps/fragment/o3;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Lcom/papa/sim/statistic/p;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
