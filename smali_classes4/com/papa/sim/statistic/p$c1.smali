.class Lcom/papa/sim/statistic/p$c1;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->o1(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
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

.field final synthetic e:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$c1;->e:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$c1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$c1;->b:Ljava/lang/String;

    iput p4, p0, Lcom/papa/sim/statistic/p$c1;->c:I

    iput-object p5, p0, Lcom/papa/sim/statistic/p$c1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p$c1;->e:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->inviteBattleShareSuccess:Lcom/papa/sim/statistic/Event;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$c1;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/papa/sim/statistic/p$c1;->b:Ljava/lang/String;

    iget v5, p0, Lcom/papa/sim/statistic/p$c1;->c:I

    iget-object v6, p0, Lcom/papa/sim/statistic/p$c1;->d:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/o;->K(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
