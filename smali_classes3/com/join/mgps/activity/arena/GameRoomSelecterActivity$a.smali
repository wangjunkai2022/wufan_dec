.class Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$a;
.super Ljava/lang/Object;
.source "GameRoomSelecterActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$a;->a:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$a;->a:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    iput-object p1, v0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->e:Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$a;->a:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->G0()V

    return-void
.end method
