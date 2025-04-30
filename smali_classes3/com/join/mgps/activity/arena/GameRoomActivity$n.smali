.class Lcom/join/mgps/activity/arena/GameRoomActivity$n;
.super Ljava/lang/Object;
.source "GameRoomActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;->o(Lcom/join/mgps/dto/FriendBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/FriendBean;

.field final synthetic b:Lcom/papa91/battle/protocol/GameRoom;

.field final synthetic c:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;Lcom/join/mgps/dto/FriendBean;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$n;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$n;->a:Lcom/join/mgps/dto/FriendBean;

    iput-object p3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$n;->b:Lcom/papa91/battle/protocol/GameRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(II)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$n;->a:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v1

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$n;->b:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v2

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$n;->b:Lcom/papa91/battle/protocol/GameRoom;

    .line 3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$n;->b:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v4

    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$n;->b:Lcom/papa91/battle/protocol/GameRoom;

    .line 5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v5

    .line 6
    invoke-virtual/range {v0 .. v6}, Lcom/wufan/friend/chat/c;->n(IILjava/lang/String;ZJ)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$n;->c:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string p2, "\u5df2\u53d1\u9001\u5bf9\u6218\u9080\u8bf7\uff01"

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$n;->a:Lcom/join/mgps/dto/FriendBean;

    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/c;->e(Lcom/join/mgps/dto/FriendBean;)V

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    return-void
.end method
