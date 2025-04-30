.class Lcom/papa/sim/statistic/p$o2;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->R0(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$o2;->c:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$o2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/papa/sim/statistic/p$o2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/p$o2;->c:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->clickGameMainBtn:Lcom/papa/sim/statistic/Event;

    sget-object v2, Lcom/papa/sim/statistic/Event;->standalone:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$o2;->a:Ljava/lang/String;

    iget v4, p0, Lcom/papa/sim/statistic/p$o2;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/o;->x(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
