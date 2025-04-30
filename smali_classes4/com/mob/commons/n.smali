.class public Lcom/mob/commons/n;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Ljava/lang/String; = null

.field public static volatile b:Ljava/lang/String; = null

.field public static volatile c:Lcom/mob/commons/InternationalDomain; = null

.field public static volatile d:Z = false

.field public static volatile e:Z = true

.field public static volatile f:Z = false

.field public static volatile g:Z = true

.field public static volatile h:Z

.field public static volatile i:Ljava/lang/String;

.field private static j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mob/commons/n;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x62

    .line 27
    invoke-static {p0, v0}, Lcom/mob/commons/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/mob/commons/n;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-static {p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    .line 4
    invoke-virtual {v0, p0, v3}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 5
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p0, :cond_5

    .line 6
    :try_start_1
    sget-object v0, Lcom/mob/commons/n;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Mob-AppKey"

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/n;->a:Ljava/lang/String;

    .line 8
    :cond_0
    sget-object v0, Lcom/mob/commons/n;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Mob-AppSecret"

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/n;->b:Ljava/lang/String;

    .line 10
    :cond_1
    sget-object v0, Lcom/mob/commons/n;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "Mob-AppSeret"

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/n;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    :try_start_2
    const-string v0, "0063ehdbPkAcecdcj"

    .line 12
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {v0}, Lcom/mob/commons/InternationalDomain;->domainOf(Ljava/lang/String;)Lcom/mob/commons/InternationalDomain;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/n;->c:Lcom/mob/commons/InternationalDomain;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 14
    :catchall_1
    :try_start_3
    sget-object v0, Lcom/mob/commons/InternationalDomain;->DEFAULT:Lcom/mob/commons/InternationalDomain;

    sput-object v0, Lcom/mob/commons/n;->c:Lcom/mob/commons/InternationalDomain;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_3
    :goto_0
    :try_start_4
    const-string v0, "Mob-OdVivoAppId"

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/n;->i:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_4
    :try_start_5
    const-string v0, "0093fhdbebghgc_ccd=ef"

    .line 17
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/mob/commons/n;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mob/commons/n;->d:Z

    const-string v0, "015,fhdbebghfg]d^de>h%cfEh\'efefcecgch"

    .line 18
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/mob/commons/n;->e:Z

    invoke-static {p0, v0, v3}, Lcom/mob/commons/n;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mob/commons/n;->e:Z

    const-string v0, "006Xfhdbebghfehd"

    .line 19
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/mob/commons/n;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mob/commons/n;->f:Z

    const-string v0, "Mob-elog"

    .line 20
    invoke-static {p0, v0, v1}, Lcom/mob/commons/n;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mob/commons/n;->g:Z

    const-string v0, "Mob-GPP"

    .line 21
    invoke-static {p0, v0, v2}, Lcom/mob/commons/n;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/mob/commons/n;->h:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    .line 22
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Z)Z
    .locals 0

    .line 23
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 24
    :cond_0
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, "003BchKhJef"

    .line 25
    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 26
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return p2
.end method
