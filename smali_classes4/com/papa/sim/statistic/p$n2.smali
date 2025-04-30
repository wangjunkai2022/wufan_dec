.class Lcom/papa/sim/statistic/p$n2;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$n2;->d:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$n2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$n2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa/sim/statistic/p$n2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/p$n2;->d:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    iget-object v2, p0, Lcom/papa/sim/statistic/p$n2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/papa/sim/statistic/p$n2;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/papa/sim/statistic/p$n2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/papa/sim/statistic/o;->O(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
