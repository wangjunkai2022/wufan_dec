.class public Lcom/papa/sim/statistic/l;
.super Ljava/lang/Object;
.source "PlainHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v0

    new-instance v1, Lcom/papa/sim/statistic/l$a;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/l$a;-><init>(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/papa/sim/statistic/http/c;->i(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;Lcom/papa/sim/statistic/http/a;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/c;->c()Lcom/papa/sim/statistic/http/c;

    move-result-object v0

    new-instance v1, Lcom/papa/sim/statistic/l$b;

    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/l$b;-><init>(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/papa/sim/statistic/http/c;->j(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;Lcom/papa/sim/statistic/http/a;)V

    return-void
.end method
