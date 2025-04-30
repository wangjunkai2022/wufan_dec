.class Lcom/papa/sim/statistic/p$j0;
.super Ljava/lang/Object;
.source "StatFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/Event;

.field final synthetic b:Lcom/papa/sim/statistic/Ext;

.field final synthetic c:Lcom/papa/sim/statistic/p;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/p;Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/p$j0;->c:Lcom/papa/sim/statistic/p;

    iput-object p2, p0, Lcom/papa/sim/statistic/p$j0;->a:Lcom/papa/sim/statistic/Event;

    iput-object p3, p0, Lcom/papa/sim/statistic/p$j0;->b:Lcom/papa/sim/statistic/Ext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/p$j0;->c:Lcom/papa/sim/statistic/p;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->a(Lcom/papa/sim/statistic/p;)Lcom/papa/sim/statistic/o;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/sim/statistic/p$j0;->a:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/papa/sim/statistic/p$j0;->b:Lcom/papa/sim/statistic/Ext;

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/o;->R(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
