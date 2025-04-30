.class Lcom/papa/sim/statistic/p$g2;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->w1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/StatJsonRawData;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/StatJsonRawData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$g2;->d:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$g2;->a:Lcom/papa/sim/statistic/StatJsonRawData;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$g2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa/sim/statistic/p$g2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/p$g2;->a:Lcom/papa/sim/statistic/StatJsonRawData;

    iget-object v1, p0, Lcom/papa/sim/statistic/p$g2;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatJsonRawData;->setGameId(J)V

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/p$g2;->a:Lcom/papa/sim/statistic/StatJsonRawData;

    iget-object v1, p0, Lcom/papa/sim/statistic/p$g2;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatJsonRawData;->setUid(I)V

    .line 3
    iget-object v0, p0, Lcom/papa/sim/statistic/p$g2;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->netBattleMatchEfficiency:Lcom/papa/sim/statistic/Event;

    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    iget-object v3, p0, Lcom/papa/sim/statistic/p$g2;->a:Lcom/papa/sim/statistic/StatJsonRawData;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/papa/sim/statistic/p$g2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
