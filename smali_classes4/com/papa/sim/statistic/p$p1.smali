.class Lcom/papa/sim/statistic/p$p1;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->V1(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$p1;->c:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$p1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$p1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p$p1;->c:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccess:Lcom/papa/sim/statistic/Event;

    iget-object v2, p0, Lcom/papa/sim/statistic/p$p1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$p1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/sim/statistic/o;->I(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
