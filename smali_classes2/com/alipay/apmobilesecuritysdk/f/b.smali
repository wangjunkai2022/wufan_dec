.class public final Lcom/alipay/apmobilesecuritysdk/f/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/alipay/apmobilesecuritysdk/f/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/apmobilesecuritysdk/f/b;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "alipay_vkey_random"

    const-string v2, "random"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Ls/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/f/b;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/crypto/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/apmobilesecuritysdk/f/b;->a:Ljava/lang/String;

    const-string v2, "alipay_vkey_random"

    const-string v3, "random"

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    sget-object p0, Lcom/alipay/apmobilesecuritysdk/f/b;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
