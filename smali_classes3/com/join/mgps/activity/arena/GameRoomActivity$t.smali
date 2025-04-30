.class Lcom/join/mgps/activity/arena/GameRoomActivity$t;
.super Ljava/lang/Object;
.source "GameRoomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$t;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$t;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->T1(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$t;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->I0:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->S1(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/join/mgps/Util/x;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$t;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->V1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$t;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->U1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
