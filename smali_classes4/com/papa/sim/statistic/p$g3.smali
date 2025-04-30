.class Lcom/papa/sim/statistic/p$g3;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->H0(Ljava/lang/String;II)V
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
    iput-object p1, p0, Lcom/papa/sim/statistic/p$g3;->d:Lcom/papa/sim/statistic/p;

    iput p2, p0, Lcom/papa/sim/statistic/p$g3;->a:I

    iput-object p3, p0, Lcom/papa/sim/statistic/p$g3;->b:Ljava/lang/String;

    iput p4, p0, Lcom/papa/sim/statistic/p$g3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/p$g3;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->clickGameMainBtn:Lcom/papa/sim/statistic/Event;

    sget-object v3, Lcom/papa/sim/statistic/Event;->ad:Lcom/papa/sim/statistic/Event;

    iget v4, p0, Lcom/papa/sim/statistic/p$g3;->a:I

    iget-object v5, p0, Lcom/papa/sim/statistic/p$g3;->b:Ljava/lang/String;

    iget v6, p0, Lcom/papa/sim/statistic/p$g3;->c:I

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/o;->w(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
