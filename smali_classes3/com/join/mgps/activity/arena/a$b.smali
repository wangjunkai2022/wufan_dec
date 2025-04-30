.class Lcom/join/mgps/activity/arena/a$b;
.super Ljava/lang/Object;
.source "ArenaGameListFragmentMain.java"

# interfaces
.implements Lcom/join/mgps/adapter/t1$e;


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/a$b;->a:Lcom/join/mgps/activity/arena/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/a$b;->a:Lcom/join/mgps/activity/arena/a;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/a;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->v4(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomListActivity_$p0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/a$b;->a:Lcom/join/mgps/activity/arena/a;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/a;->M(Lcom/join/mgps/activity/arena/a;)Ljava/util/List;

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

    return-void
.end method
