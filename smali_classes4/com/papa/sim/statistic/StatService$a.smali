.class Lcom/papa/sim/statistic/StatService$a;
.super Ljava/lang/Thread;
.source "StatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/StatService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/StatService;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/StatService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, ""

    :cond_0
    :goto_0
    const-wide/16 v1, 0x7530

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]method statService is running..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    iget-object v1, v1, Lcom/papa/sim/statistic/StatService;->a:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/b;->g()V

    .line 4
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    iget-object v2, v1, Lcom/papa/sim/statistic/StatService;->a:Lcom/papa/sim/statistic/db/b;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/b;->k()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/papa/sim/statistic/StatService;->b:Ljava/util/List;

    .line 5
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    invoke-static {v1}, Lcom/papa/sim/statistic/StatService;->a(Lcom/papa/sim/statistic/StatService;)V

    .line 6
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    invoke-static {v1}, Lcom/papa/sim/statistic/StatService;->b(Lcom/papa/sim/statistic/StatService;)V

    .line 7
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    invoke-static {v1}, Lcom/papa/sim/statistic/StatService;->c(Lcom/papa/sim/statistic/StatService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    invoke-static {v1}, Lcom/papa/sim/statistic/StatService;->d(Lcom/papa/sim/statistic/StatService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 9
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v4, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    iget-object v4, v4, Lcom/papa/sim/statistic/StatService;->b:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 13
    iget-object v4, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    iget-object v4, v4, Lcom/papa/sim/statistic/StatService;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/papa/sim/statistic/db/d;

    .line 14
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    invoke-static {v6, v5}, Lcom/papa/sim/statistic/StatService;->e(Lcom/papa/sim/statistic/StatService;Lcom/papa/sim/statistic/db/d;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 15
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->f()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v6, 0x2

    .line 16
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/db/d;->p(I)V

    .line 17
    :cond_2
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    iget-object v6, v6, Lcom/papa/sim/statistic/StatService;->e:Lcom/papa/sim/statistic/o;

    invoke-virtual {v6}, Lcom/papa/sim/statistic/o;->q()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    .line 18
    :try_start_3
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    invoke-static {v6, v5}, Lcom/papa/sim/statistic/StatService;->f(Lcom/papa/sim/statistic/StatService;Lcom/papa/sim/statistic/db/d;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v5

    .line 19
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    invoke-static {v6, v0, v5}, Lcom/papa/sim/statistic/StatService;->g(Lcom/papa/sim/statistic/StatService;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 21
    :cond_3
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    iget-object v6, v6, Lcom/papa/sim/statistic/StatService;->e:Lcom/papa/sim/statistic/o;

    invoke-virtual {v6}, Lcom/papa/sim/statistic/o;->r()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_4

    .line 22
    :try_start_5
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    invoke-static {v6, v5}, Lcom/papa/sim/statistic/StatService;->h(Lcom/papa/sim/statistic/StatService;Lcom/papa/sim/statistic/db/d;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v5

    .line 23
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    invoke-static {v6, v0, v5}, Lcom/papa/sim/statistic/StatService;->g(Lcom/papa/sim/statistic/StatService;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->pluginPlayTime:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 26
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    const-wide/16 v6, 0x1f4

    .line 27
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 28
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 29
    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->click_vs_hall:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->click_vs_create_room:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->user_filters_refresh:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->joystickSetting:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->joystickJoin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->joystickConfigChanged:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsHallBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->visitVsRoomPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->visitVsMainPage:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->VsGameStart:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsForumBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsAdvBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsCreateRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsQuickJoin:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->VsCreateWaitOver:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->VsGameOverSuccess:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->VsSelectSilentBtn:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->VsCreateSilentRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->VsSilentTransform:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsLocalBat:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVslLocalCreateRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsJoinRoom:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->getType()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/papa/sim/statistic/Event;->clickVsNetBattleMatch:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_7

    .line 30
    :cond_6
    :try_start_7
    iget-object v6, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    iget-object v6, v6, Lcom/papa/sim/statistic/StatService;->e:Lcom/papa/sim/statistic/o;

    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v7

    invoke-virtual {v5}, Lcom/papa/sim/statistic/db/d;->b()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/papa/sim/statistic/StatDataCenterReq;

    invoke-virtual {v7, v8, v9}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/papa/sim/statistic/StatDataCenterReq;

    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/o;->Z(Lcom/papa/sim/statistic/StatDataCenterReq;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :catch_3
    move-exception v6

    .line 31
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :cond_7
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 33
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 34
    iget-object v4, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    iget-object v5, v4, Lcom/papa/sim/statistic/StatService;->e:Lcom/papa/sim/statistic/o;

    invoke-virtual {v4}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v5, v4, v2}, Lcom/papa/sim/statistic/o;->Y(Landroid/content/Context;Ljava/util/List;)V

    .line 35
    :cond_9
    iget-object v2, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    iget-object v4, v2, Lcom/papa/sim/statistic/StatService;->e:Lcom/papa/sim/statistic/o;

    invoke-virtual {v2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Lcom/papa/sim/statistic/o;->t(Landroid/content/Context;Ljava/util/List;)V

    .line 36
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    iget-object v1, v1, Lcom/papa/sim/statistic/StatService;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    .line 37
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    iget-object v2, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    invoke-static {v2, v0, v1}, Lcom/papa/sim/statistic/StatService;->g(Lcom/papa/sim/statistic/StatService;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 39
    iget-object v0, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    iget-object v0, v0, Lcom/papa/sim/statistic/StatService;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_3
    iget-object v1, p0, Lcom/papa/sim/statistic/StatService$a;->a:Lcom/papa/sim/statistic/StatService;

    iget-object v1, v1, Lcom/papa/sim/statistic/StatService;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
