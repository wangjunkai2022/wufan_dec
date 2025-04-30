.class Lcom/join/mgps/va/service/MessengerService$IncomingHandler;
.super Landroid/os/Handler;
.source "MessengerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/va/service/MessengerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/va/service/MessengerService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/va/service/MessengerService;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "gameId"

    .line 4
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v7, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v7}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 6
    invoke-virtual {v7, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    const-string v3, "from"

    const-string v4, ""

    .line 7
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v7, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    const-string v3, "position"

    .line 9
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v7, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    const-string v3, "imagePath"

    .line 11
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    iget-object v6, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    invoke-static {v6}, Lcom/join/mgps/va/service/MessengerService;->a(Lcom/join/mgps/va/service/MessengerService;)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    const-string v6, "fromTabId"

    .line 13
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {v7, v6}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    const-string v6, "articleId"

    .line 15
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v7, v6}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    const-string v6, "where"

    .line 17
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "liveTime"

    const-wide/16 v9, 0x0

    .line 18
    invoke-virtual {v1, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 19
    invoke-virtual {v7, v11, v12}, Lcom/papa/sim/statistic/Ext;->setLiveTime(J)Lcom/papa/sim/statistic/Ext;

    .line 20
    iget v11, p1, Landroid/os/Message;->what:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "WF"

    aput-object v2, v0, v13

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PluginEntry first_show_mod 1115"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "first_show_mod"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/join/mgps/va/service/MessengerService;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "expand"

    .line 23
    invoke-virtual {v1, v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 24
    iget-object v1, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    invoke-virtual {v1, v0}, Lcom/join/mgps/va/service/MessengerService;->d(Z)V

    goto/16 :goto_0

    .line 25
    :pswitch_3
    new-instance v8, Lcom/papa/sim/statistic/Data;

    invoke-direct {v8}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 26
    invoke-static {v2}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    invoke-static {v6}, Lcom/papa/sim/statistic/Event;->valueOf(Ljava/lang/String;)Lcom/papa/sim/statistic/Event;

    move-result-object v5

    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    invoke-static {v0}, Lcom/join/mgps/va/service/MessengerService;->a(Lcom/join/mgps/va/service/MessengerService;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    goto/16 :goto_0

    .line 29
    :pswitch_4
    new-instance v8, Lcom/papa/sim/statistic/Data;

    invoke-direct {v8}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 30
    invoke-static {v2}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v4, Lcom/papa/sim/statistic/Event;->singleStartGamePageList:Lcom/papa/sim/statistic/Event;

    invoke-static {v6}, Lcom/papa/sim/statistic/Event;->valueOf(Ljava/lang/String;)Lcom/papa/sim/statistic/Event;

    move-result-object v5

    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    invoke-static {v0}, Lcom/join/mgps/va/service/MessengerService;->a(Lcom/join/mgps/va/service/MessengerService;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    goto/16 :goto_0

    .line 33
    :pswitch_5
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    new-array v3, v12, [Ljava/lang/String;

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "liveTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " receive"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v3}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    cmp-long v3, v1, v9

    if-nez v3, :cond_4

    return-void

    :cond_4
    const-wide/16 v3, 0x3e8

    .line 35
    div-long v3, v1, v3

    invoke-virtual {v7, v3, v4}, Lcom/papa/sim/statistic/Ext;->setLiveTime(J)Lcom/papa/sim/statistic/Ext;

    new-array v3, v12, [Ljava/lang/String;

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " send"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v13

    invoke-static {v3}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 37
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gamePlayTimes:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 38
    :pswitch_6
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->closedRealNameWindow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 39
    :pswitch_7
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->realNameClickSubmit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 40
    :pswitch_8
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->nonageAstrictHint:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 41
    :pswitch_9
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickClosedRealNameWindow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 42
    :pswitch_a
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->realNameDisplayWindow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 43
    :pswitch_b
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->antiAddtionWindowUp:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 44
    :pswitch_c
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickKnowGoRealPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 45
    :pswitch_d
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->realNameUpWindows:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 46
    :pswitch_e
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickNav:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 47
    :pswitch_f
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickPiix:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 48
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_5

    goto/16 :goto_0

    .line 49
    :cond_5
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_6

    .line 50
    check-cast v0, Landroid/os/Bundle;

    const-string v2, "action"

    .line 51
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "fromCls"

    .line 52
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    invoke-virtual {v1, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 56
    :pswitch_11
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.upload.wufun.screenshot"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->b:Lcom/join/mgps/va/service/MessengerService;

    invoke-virtual {v1, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 59
    :pswitch_12
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickAssist:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 60
    :pswitch_13
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->assistShow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 61
    :pswitch_14
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->modgamestart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 62
    :pswitch_15
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->exitMod:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 63
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->exitVirtualGame:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.mod.gameout"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/join/mgps/va/service/MessengerService$IncomingHandler;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :pswitch_16
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->onclickVippopupMod:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 68
    :pswitch_17
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->showVippopupMod:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 69
    :pswitch_18
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->openMod:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 70
    :pswitch_19
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->onclickMod:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 71
    :pswitch_1a
    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->showMod:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v1, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 72
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
