.class Lcom/join/mgps/service/MAIDLService$a;
.super Lcom/join/mgps/aidl/a$b;
.source "MAIDLService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/MAIDLService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/service/MAIDLService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/MAIDLService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-direct {p0}, Lcom/join/mgps/aidl/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public emuConfigChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public emuConfigPost(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public emuLogCat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/EmuErrorDto;

    invoke-direct {v0}, Lcom/join/mgps/dto/EmuErrorDto;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/EmuErrorDto;->setGame_id(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/EmuErrorDto;->setUid(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/EmuErrorDto;->setPlugin_package_name(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/join/mgps/dto/EmuErrorDto;->setPlugin_version(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p5}, Lcom/join/mgps/dto/EmuErrorDto;->setError(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/papa/sim/statistic/p;->f0(Ljava/lang/String;)V

    return-void
.end method

.method public gameOut(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    int-to-long v3, p2

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->T0(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gameStart(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, p1, v2, v1}, Lcom/papa/sim/statistic/p;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gameStart15(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/papa/sim/statistic/p;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gameStart160(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/papa/sim/statistic/p;->i(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public gameStartBattle(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lg1/f;->H(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/papa/sim/statistic/p;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gameStartBattle15(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/papa/sim/statistic/p;->V1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gameWorldData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public netBattleMatchEfficiency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/papa/sim/statistic/p;->w1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oauth4StandaloneGame(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/k1;->c()Lcom/join/mgps/Util/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/service/MAIDLService$a$a;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/service/MAIDLService$a$a;-><init>(Lcom/join/mgps/service/MAIDLService$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/join/mgps/Util/k1;->b(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/k1$b;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public playTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ln1/d0;->n()Ln1/d0;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Ln1/d0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/db/tables/PlayGameTimeTable;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->getGamePlayTotalTime()J

    move-result-wide v1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->setGamePlayRecentlyTime(J)V

    add-long/2addr v1, p3

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/PlayGameTimeTable;->setGamePlayTotalTime(J)V

    .line 7
    invoke-static {}, Ln1/d0;->n()Ln1/d0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/papa/sim/statistic/p;->J1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public plugEfficiency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/MAIDLService$a;->this$0:Lcom/join/mgps/service/MAIDLService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/papa/sim/statistic/p;->I1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unLockSP(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
