.class Lcom/join/mgps/activity/arena/GameRoomActivity_$t;
.super Ljava/lang/Object;
.source "GameRoomActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity_;->J2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_$t;->a:Lcom/join/mgps/activity/arena/GameRoomActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity_$t;->a:Lcom/join/mgps/activity/arena/GameRoomActivity_;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->X2(Lcom/join/mgps/activity/arena/GameRoomActivity_;)V

    return-void
.end method
