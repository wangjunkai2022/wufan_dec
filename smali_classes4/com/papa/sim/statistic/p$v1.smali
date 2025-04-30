.class Lcom/papa/sim/statistic/p$v1;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->c1(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$v1;->g:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$v1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$v1;->b:Ljava/lang/String;

    iput p4, p0, Lcom/papa/sim/statistic/p$v1;->c:I

    iput-object p5, p0, Lcom/papa/sim/statistic/p$v1;->d:Ljava/lang/String;

    iput p6, p0, Lcom/papa/sim/statistic/p$v1;->e:I

    iput-object p7, p0, Lcom/papa/sim/statistic/p$v1;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/papa/sim/statistic/p$v1;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 4
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$v1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setKeyWord(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/papa/sim/statistic/p$v1;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 6
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$v1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 7
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget v2, p0, Lcom/papa/sim/statistic/p$v1;->e:I

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 8
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$v1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setUid(Ljava/lang/String;)V

    .line 9
    :try_start_1
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$v1;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 10
    :goto_0
    iget v1, p0, Lcom/papa/sim/statistic/p$v1;->c:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Where;->search:Lcom/papa/sim/statistic/Where;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 11
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 12
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRequest:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/papa/sim/statistic/p$v1;->g:Lcom/papa/sim/statistic/p;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/papa/sim/statistic/o;->A(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/StatRequest;)V

    return-void
.end method
