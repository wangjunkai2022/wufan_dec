.class Lcom/join/mgps/activity/arena/GameRoomListActivity_$p;
.super Ljava/lang/Object;
.source "GameRoomListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity_;->s3(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity_;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    iput p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    iget v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity_$p;->a:I

    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity_;->V3(Lcom/join/mgps/activity/arena/GameRoomListActivity_;I)V

    return-void
.end method
