.class Lcom/join/mgps/activity/arena/GameRoomListActivity$p;
.super Ljava/lang/Object;
.source "GameRoomListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->O2(Lcom/papa91/battle/protocol/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa91/battle/protocol/Notification;

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/Notification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$p;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$p;->a:Lcom/papa91/battle/protocol/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$p;->a:Lcom/papa91/battle/protocol/Notification;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Notification;->getJumpJSON()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$p;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMsgBroadcast jsonValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$p;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$p;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromJson exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->h3(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
