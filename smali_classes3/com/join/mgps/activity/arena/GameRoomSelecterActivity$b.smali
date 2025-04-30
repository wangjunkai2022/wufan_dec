.class Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$b;
.super Ljava/lang/Object;
.source "GameRoomSelecterActivity.java"

# interfaces
.implements Lcom/join/mgps/adapter/t1$e;


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "mGameInfo"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    const/16 v1, 0x2711

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomSelecterActivity$b;->a:Lcom/join/mgps/activity/arena/GameRoomSelecterActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
