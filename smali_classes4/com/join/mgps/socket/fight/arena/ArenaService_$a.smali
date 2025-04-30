.class Lcom/join/mgps/socket/fight/arena/ArenaService_$a;
.super Landroid/content/BroadcastReceiver;
.source "ArenaService_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/fight/arena/ArenaService_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/socket/fight/arena/ArenaService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/ArenaService_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService_;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService_$a;->a:Lcom/join/mgps/socket/fight/arena/ArenaService_;

    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/ArenaService_;->x()V

    return-void
.end method
