.class Lcom/papa/sim/statistic/p$f4;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->s2(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$f4;->d:Lcom/papa/sim/statistic/p;

    iput p2, p0, Lcom/papa/sim/statistic/p$f4;->a:I

    iput-object p3, p0, Lcom/papa/sim/statistic/p$f4;->b:Ljava/lang/String;

    iput p4, p0, Lcom/papa/sim/statistic/p$f4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget v0, p0, Lcom/papa/sim/statistic/p$f4;->a:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/p$f4;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsGameStart:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->VsSingle:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$f4;->b:Ljava/lang/String;

    iget v4, p0, Lcom/papa/sim/statistic/p$f4;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/o;->x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/papa/sim/statistic/p$f4;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsGameStart:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->VsHall:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$f4;->b:Ljava/lang/String;

    iget v4, p0, Lcom/papa/sim/statistic/p$f4;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/o;->x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/papa/sim/statistic/p$f4;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VsGameStart:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->VsLocal:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$f4;->b:Ljava/lang/String;

    iget v4, p0, Lcom/papa/sim/statistic/p$f4;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/o;->x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
