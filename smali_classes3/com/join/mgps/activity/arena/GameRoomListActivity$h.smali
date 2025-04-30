.class Lcom/join/mgps/activity/arena/GameRoomListActivity$h;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/t1$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->W2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->W1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iput-object p1, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    .line 4
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->v0(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->v0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iput-object p1, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    .line 10
    :try_start_1
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->v0(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->D1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->x0(Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->v0(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->B1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/roomlist/c;->x0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->F2()V

    .line 18
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->W1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$h;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->e3()V

    return-void
.end method
