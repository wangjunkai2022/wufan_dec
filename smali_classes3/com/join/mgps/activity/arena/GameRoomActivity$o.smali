.class Lcom/join/mgps/activity/arena/GameRoomActivity$o;
.super Ljava/lang/Object;
.source "GameRoomActivity.java"

# interfaces
.implements Lcom/join/mgps/Util/z$n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;->D2(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v1, "kick_info"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->L(Ljava/lang/String;)V

    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    const-string v1, "kick_info"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->L(Ljava/lang/String;)V

    return-void
.end method
