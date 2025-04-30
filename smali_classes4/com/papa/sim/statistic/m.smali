.class public Lcom/papa/sim/statistic/m;
.super Ljava/lang/Object;
.source "RequestBeanUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/papa/sim/statistic/m;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "phone"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa/sim/statistic/m;->a:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/papa/sim/statistic/q;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/q;->g()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/papa/sim/statistic/m;->a:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/papa/sim/statistic/m;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/m;->b:Lcom/papa/sim/statistic/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/sim/statistic/m;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa/sim/statistic/m;->b:Lcom/papa/sim/statistic/m;

    .line 3
    :cond_0
    sget-object p0, Lcom/papa/sim/statistic/m;->b:Lcom/papa/sim/statistic/m;

    return-object p0
.end method
