.class Lcom/papa/sim/statistic/p$m2;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->v(Lcom/papa/sim/statistic/e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/papa/sim/statistic/e;

.field final synthetic c:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;ZLcom/papa/sim/statistic/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$m2;->c:Lcom/papa/sim/statistic/p;

    iput-boolean p2, p0, Lcom/papa/sim/statistic/p$m2;->a:Z

    iput-object p3, p0, Lcom/papa/sim/statistic/p$m2;->b:Lcom/papa/sim/statistic/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/papa/sim/statistic/p$m2;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/papa/sim/statistic/p$m2;->c:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v2

    sget-object v0, Lcom/papa/sim/statistic/Event;->clickButtonEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/papa/sim/statistic/p$m2;->b:Lcom/papa/sim/statistic/e;

    invoke-virtual {v4}, Lcom/papa/sim/statistic/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/papa/sim/statistic/p$m2;->b:Lcom/papa/sim/statistic/e;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/e;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/papa/sim/statistic/p$m2;->b:Lcom/papa/sim/statistic/e;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/e;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/papa/sim/statistic/p$m2;->b:Lcom/papa/sim/statistic/e;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/e;->d()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/papa/sim/statistic/p$m2;->b:Lcom/papa/sim/statistic/e;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/e;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/papa/sim/statistic/o;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/sim/statistic/p$m2;->c:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v2

    sget-object v0, Lcom/papa/sim/statistic/Event;->requestEvent:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/papa/sim/statistic/p$m2;->b:Lcom/papa/sim/statistic/e;

    invoke-virtual {v4}, Lcom/papa/sim/statistic/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/papa/sim/statistic/p$m2;->b:Lcom/papa/sim/statistic/e;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/e;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/papa/sim/statistic/p$m2;->b:Lcom/papa/sim/statistic/e;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/e;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/papa/sim/statistic/p$m2;->b:Lcom/papa/sim/statistic/e;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/e;->d()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/papa/sim/statistic/p$m2;->b:Lcom/papa/sim/statistic/e;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/e;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/papa/sim/statistic/o;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
