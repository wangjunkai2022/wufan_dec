.class Lcom/join/mgps/activity/GameMainNewActivity$e;
.super Lcom/join/mgps/socket/fight/arena/b$c;
.source "GameMainNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameMainNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainNewActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainNewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainNewActivity$e;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->a()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->c()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity$e;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameMainNewActivity;->d(Lcom/join/mgps/activity/GameMainNewActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity$e;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameMainNewActivity;->d(Lcom/join/mgps/activity/GameMainNewActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainNewActivity$e;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameMainNewActivity;->d(Lcom/join/mgps/activity/GameMainNewActivity;)Lcom/join/mgps/socket/fight/arena/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainNewActivity$e;->a:Lcom/join/mgps/activity/GameMainNewActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/GameMainNewActivity;->e(Lcom/join/mgps/activity/GameMainNewActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    :cond_0
    return-void
.end method
