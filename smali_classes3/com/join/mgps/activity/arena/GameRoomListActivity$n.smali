.class Lcom/join/mgps/activity/arena/GameRoomListActivity$n;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/h0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->v3(Lcom/join/mgps/dto/ArenaPopupInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ArenaPopupInfoBean;

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaPopupInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;->a:Lcom/join/mgps/dto/ArenaPopupInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/h0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public b(Lcom/join/mgps/dialog/h0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;->a:Lcom/join/mgps/dto/ArenaPopupInfoBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vsButton"

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->f2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
