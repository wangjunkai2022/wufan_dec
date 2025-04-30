.class Lcom/papa/sim/statistic/p$w;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->c2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$w;->f:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$w;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$w;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa/sim/statistic/p$w;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/papa/sim/statistic/p$w;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/papa/sim/statistic/p$w;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/p$w;->f:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v1

    sget-object v0, Lcom/papa/sim/statistic/Event;->clickButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/papa/sim/statistic/p$w;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/papa/sim/statistic/p$w;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/papa/sim/statistic/p$w;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/papa/sim/statistic/p$w;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/papa/sim/statistic/p$w;->e:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/papa/sim/statistic/o;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
