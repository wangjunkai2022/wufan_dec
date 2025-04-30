.class Lcom/join/mgps/activity/arena/GameRoomActivity$g$b;
.super Ljava/lang/Object;
.source "GameRoomActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity$g;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(II)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$g$b;->a:Lcom/join/mgps/activity/arena/GameRoomActivity$g;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity$g;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->L1(Lcom/join/mgps/activity/arena/GameRoomActivity;I)V

    :cond_0
    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    return-void
.end method
