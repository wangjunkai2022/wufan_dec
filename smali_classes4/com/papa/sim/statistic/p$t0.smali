.class Lcom/papa/sim/statistic/p$t0;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/Data;

.field final synthetic b:Lcom/papa/sim/statistic/Event;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/papa/sim/statistic/Ext;

.field final synthetic e:Lcom/papa/sim/statistic/Event;

.field final synthetic f:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Data;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Event;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$t0;->f:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$t0;->a:Lcom/papa/sim/statistic/Data;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$t0;->b:Lcom/papa/sim/statistic/Event;

    iput-object p4, p0, Lcom/papa/sim/statistic/p$t0;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/papa/sim/statistic/p$t0;->d:Lcom/papa/sim/statistic/Ext;

    iput-object p6, p0, Lcom/papa/sim/statistic/p$t0;->e:Lcom/papa/sim/statistic/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/papa/sim/statistic/p$t0;->a:Lcom/papa/sim/statistic/Data;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$t0;->a:Lcom/papa/sim/statistic/Data;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Data;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    .line 4
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$t0;->b:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    :cond_0
    const-string v1, ""

    .line 5
    iget-object v2, p0, Lcom/papa/sim/statistic/p$t0;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/papa/sim/statistic/p$t0;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/papa/sim/statistic/p$t0;->d:Lcom/papa/sim/statistic/Ext;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$t0;->d:Lcom/papa/sim/statistic/Ext;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getFromTabId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$t0;->d:Lcom/papa/sim/statistic/Ext;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 10
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$t0;->d:Lcom/papa/sim/statistic/Ext;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 11
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$t0;->d:Lcom/papa/sim/statistic/Ext;

    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getLiveTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Ext;->setLiveTime(J)Lcom/papa/sim/statistic/Ext;

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setRequest(Z)V

    .line 15
    iget-object v1, p0, Lcom/papa/sim/statistic/p$t0;->e:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/papa/sim/statistic/p$t0;->f:Lcom/papa/sim/statistic/p;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/o;->h0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
