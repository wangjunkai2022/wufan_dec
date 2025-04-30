.class final Lcom/papa91/paay/PayCenter$9;
.super Ljava/lang/Thread;
.source "PayCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/paay/PayCenter;->lobbyPlayCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gameId:Ljava/lang/String;

.field final synthetic val$role:Ljava/lang/String;

.field final synthetic val$roomId:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/paay/PayCenter$9;->val$uid:Ljava/lang/String;

    iput-object p2, p0, Lcom/papa91/paay/PayCenter$9;->val$gameId:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa91/paay/PayCenter$9;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa91/paay/PayCenter$9;->val$role:Ljava/lang/String;

    iput-object p5, p0, Lcom/papa91/paay/PayCenter$9;->val$roomId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-object v2, p0, Lcom/papa91/paay/PayCenter$9;->val$uid:Ljava/lang/String;

    const-string v3, "uid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lcom/papa91/paay/PayCenter$9;->val$gameId:Ljava/lang/String;

    const-string v3, "game_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/papa91/paay/PayCenter$9;->val$token:Ljava/lang/String;

    const-string v3, "token"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/papa91/paay/PayCenter$9;->val$role:Ljava/lang/String;

    const-string v3, "role"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lcom/papa91/paay/PayCenter$9;->val$roomId:Ljava/lang/String;

    const-string v3, "room_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://anv3btapi.papa91.com/netbattle/lobby_play_check"

    .line 8
    invoke-static {v2, v0}, Lcom/papa91/paay/NetUtils;->getRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/papa91/paay/PayResponse;

    invoke-direct {v0}, Lcom/papa91/paay/PayResponse;-><init>()V

    .line 10
    new-instance v1, Lcom/papa91/paay/PayResponseData;

    invoke-direct {v1}, Lcom/papa91/paay/PayResponseData;-><init>()V

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    .line 11
    invoke-virtual {v1, v2}, Lcom/papa91/paay/PayResponseData;->setBuy_error_message(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/papa91/paay/PayResponse;->setData(Lcom/papa91/paay/PayResponseData;)V

    const/4 v1, -0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/papa91/paay/PayResponse;->setError(I)V

    .line 14
    invoke-static {v0}, Lcom/papa91/paay/PayCenter;->access$002(Lcom/papa91/paay/PayResponse;)Lcom/papa91/paay/PayResponse;

    .line 15
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$300()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$200()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/papa91/paay/PayResponse;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/paay/PayResponse;

    invoke-static {v0}, Lcom/papa91/paay/PayCenter;->access$002(Lcom/papa91/paay/PayResponse;)Lcom/papa91/paay/PayResponse;

    .line 17
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$300()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
