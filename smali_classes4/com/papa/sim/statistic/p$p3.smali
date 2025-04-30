.class Lcom/papa/sim/statistic/p$p3;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->f1(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$p3;->d:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$p3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$p3;->b:Ljava/lang/String;

    iput p4, p0, Lcom/papa/sim/statistic/p$p3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/p$p3;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->gameUnzip:Lcom/papa/sim/statistic/Event;

    iget-object v2, p0, Lcom/papa/sim/statistic/p$p3;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$p3;->b:Ljava/lang/String;

    iget v4, p0, Lcom/papa/sim/statistic/p$p3;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/o;->i0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
