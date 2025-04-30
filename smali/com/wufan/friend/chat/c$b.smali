.class Lcom/wufan/friend/chat/c$b;
.super Lcom/join/mgps/socket/fight/arena/b$c;
.source "FriendPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wufan/friend/chat/c;


# direct methods
.method constructor <init>(Lcom/wufan/friend/chat/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/c$b;->a:Lcom/wufan/friend/chat/c;

    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->c()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/c$b;->a:Lcom/wufan/friend/chat/c;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/GameMainActivity3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wufan/friend/chat/c$b;->a:Lcom/wufan/friend/chat/c;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    :cond_0
    return-void
.end method
