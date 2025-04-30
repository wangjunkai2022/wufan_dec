.class Lcom/join/mgps/activity/arena/GameRoomListActivity$m;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$m;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$m;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->a2:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->u1:Z

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
