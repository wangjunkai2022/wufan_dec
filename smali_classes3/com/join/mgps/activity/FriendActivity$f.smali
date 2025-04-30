.class Lcom/join/mgps/activity/FriendActivity$f;
.super Ljava/lang/Object;
.source "FriendActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/input/InputNumView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FriendActivity;->m1(Lapp/mgsim/arena/ArenaRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/a;

.field final synthetic b:Lapp/mgsim/arena/ArenaRequest;

.field final synthetic c:Lcom/join/mgps/activity/FriendActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FriendActivity;Lcom/join/mgps/customview/input/a;Lapp/mgsim/arena/ArenaRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$f;->c:Lcom/join/mgps/activity/FriendActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/FriendActivity$f;->a:Lcom/join/mgps/customview/input/a;

    iput-object p3, p0, Lcom/join/mgps/activity/FriendActivity$f;->b:Lapp/mgsim/arena/ArenaRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$f;->a:Lcom/join/mgps/customview/input/a;

    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$f;->a:Lcom/join/mgps/customview/input/a;

    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$f;->b:Lapp/mgsim/arena/ArenaRequest;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/FriendBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/FriendActivity$f;->b:Lapp/mgsim/arena/ArenaRequest;

    iget-wide v2, v2, Lapp/mgsim/arena/ArenaRequest;->gameId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$f;->b:Lapp/mgsim/arena/ArenaRequest;

    iget v1, v1, Lapp/mgsim/arena/ArenaRequest;->roomId:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$f;->b:Lapp/mgsim/arena/ArenaRequest;

    iget-boolean v1, v1, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setElite(Z)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setRoomPwd(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->p(Lcom/join/mgps/dto/FriendBean;)V

    return-void
.end method
