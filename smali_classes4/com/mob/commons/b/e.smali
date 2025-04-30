.class public Lcom/mob/commons/b/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/b/e$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/commons/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mob/commons/b/e$a;
    .locals 5

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-static {}, Lcom/mob/commons/b/e$a;->values()[Lcom/mob/commons/b/e$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 21
    invoke-static {v3}, Lcom/mob/commons/b/e$a;->a(Lcom/mob/commons/b/e$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Lcom/mob/commons/b/e;->a()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/mob/commons/b/e;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    sget-object p0, Lcom/mob/commons/b/e$a;->a:Lcom/mob/commons/b/e$a;

    return-object p0

    .line 24
    :cond_3
    :goto_1
    sget-object p0, Lcom/mob/commons/b/e$a;->o:Lcom/mob/commons/b/e$a;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/mob/commons/b/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Lcom/mob/commons/b/e;->a(Ljava/lang/String;)Lcom/mob/commons/b/e$a;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/mob/commons/b/e$a;->a:Lcom/mob/commons/b/e$a;

    if-ne v2, v3, :cond_1

    .line 5
    invoke-static {}, Lcom/mob/commons/b/c;->a()Lcom/mob/commons/b/c;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not support"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mob/commons/b/c;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    :try_start_2
    sget-object v1, Lcom/mob/commons/b/e$1;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 8
    :pswitch_0
    new-instance v1, Lcom/mob/commons/b/o;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/o;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    goto :goto_0

    .line 9
    :pswitch_1
    new-instance v1, Lcom/mob/commons/b/j;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    goto :goto_0

    .line 10
    :pswitch_2
    new-instance v1, Lcom/mob/commons/b/h;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    goto :goto_0

    .line 11
    :pswitch_3
    new-instance v1, Lcom/mob/commons/b/l;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/l;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    goto :goto_0

    .line 12
    :pswitch_4
    new-instance v1, Lcom/mob/commons/b/a;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    goto :goto_0

    .line 13
    :pswitch_5
    new-instance v1, Lcom/mob/commons/b/i;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    goto :goto_0

    .line 14
    :pswitch_6
    new-instance v1, Lcom/mob/commons/b/k;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    goto :goto_0

    .line 15
    :pswitch_7
    new-instance v1, Lcom/mob/commons/b/f;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    goto :goto_0

    .line 16
    :pswitch_8
    new-instance v1, Lcom/mob/commons/b/m;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    goto :goto_0

    .line 17
    :pswitch_9
    new-instance v1, Lcom/mob/commons/b/n;

    invoke-direct {v1, p0}, Lcom/mob/commons/b/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "0211cgdbdkebcbcddcHg%dkegcgRhhkhOdkdcceebNhOdc"

    .line 25
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/commons/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0081ejfdfcfcfhfcekdg"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "0274cecj+g8cgdbcdWg;dkdbefdkdgchefFchkRfgcgdbOdh$cgNc cdSh ef"

    .line 6
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "003 ee(hc"

    .line 7
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method private static b()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "0158cgdbdkefefcbcddk(d*cgdbQgScbcf,c"

    .line 4
    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/commons/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "007^cbcjcicjdbeccj"

    invoke-static {v2}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b/e;->a(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->h()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b/e;->a(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b/e;->a(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->e()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0, p0}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b/e;->a(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b/e;->a(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mob/commons/b/e;->a(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/mob/commons/b/e;->a:Lcom/mob/commons/b/g;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mob/commons/b/g;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
