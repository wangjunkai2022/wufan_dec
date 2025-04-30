.class public Lcom/xinzhu/overmind/client/hook/f;
.super Ljava/lang/Object;
.source "IOManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "f"

.field private static c:Lcom/xinzhu/overmind/client/hook/f;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/f;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/f;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/hook/f;->c:Lcom/xinzhu/overmind/client/hook/f;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xinzhu/overmind/client/hook/f;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/f;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rule",
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-fake"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d()Lcom/xinzhu/overmind/client/hook/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/f;->c:Lcom/xinzhu/overmind/client/hook/f;

    return-object v0
.end method

.method private e(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rule"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "/system/bin/failsafe/su"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/local/su"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/local/bin/su"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/local/xbin/su"

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/sd/bin/su"

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/sd/xbin/su"

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/sbin"

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/local/sbin"

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/su"

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/sbin"

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/sd/sbin"

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/apex/com.android.runtime/bin/daemonsu"

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/apex/com.android.runtime/bin/su"

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/adb/magisk/magisk"

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/data-lib/com.kingroot.RushRoot"

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/data-lib/com.kingroot.kinguser"

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/data/com.kingoapp.apk"

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/data/com.kingroot.kinguser"

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/data/com.topjohnwu.magisk"

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/app/com.topjohnwu.magisk"

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/data/eu.chainfire.supersu"

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/data/kingoroot.supersu"

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/user/0/com.kingroot.kinguser"

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/user_de/0/com.kingroot.kinguser"

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/data/user_de/0/eu.chainfire.supersu"

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/dev/__properties__/u:object_r:supersu_prop:s0"

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/dev/com.koushikdutta.superuser.daemon"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/dev/kingroot"

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/dev/kinguser_req_cache"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/init.supersu.rc"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/magisk"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/root/magisk"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/storage/emulated/0/daemonsu"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/storage/emulated/0/su"

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/addon.d/51-addonsu.sh"

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/app/KingoUser.apk"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/app/Superuser.apk"

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/app/SuperSU.apk"

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/app/Superuser"

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/app/SuperSU"

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/bin/.ext/.su"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/bin/su"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/etc/.has_su_daemon"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/etc/.installed_su_daemon"

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/etc/init.d/99SuperSUDaemon"

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/etc/init/superuser.rc"

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/su"

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/usr/we-need-root/su-backup"

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/xbin/daemonsu"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/xbin/ku.sud"

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/xbin/mu"

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/xbin/start_kusud.sh"

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/system/xbin/su"

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/vendor/bin/daemonsu"

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "/vendor/bin/su"

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "root/magiskinit"

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/client/hook/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "origPath",
            "redirectPath"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const-string v0, "/"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 8
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 10
    :cond_3
    sget-object v0, Lcom/xinzhu/overmind/client/hook/f;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRedirect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/client/VMCore;->addIORule(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "customRules"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->s()I

    move-result v1

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/xinzhu/overmind/client/frameworks/f;->f(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->is64Bit()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "/tmp/"

    const-string v5, "/data/user_de/"

    const-string v6, "FLAG_STORAGE redirect apk"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const-string v9, "/data/user/"

    const-string v10, "/data/data/"

    const-string v11, "/lib"

    const-string v12, "/"

    if-ne v3, v8, :cond_1

    .line 5
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/f;->d()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    invoke-virtual {v3, v7}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    sget-object v3, Lcom/xinzhu/overmind/client/hook/f;->b:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->G(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->k(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v5

    invoke-static {p1, v5}, Lcom/xinzhu/overmind/a;->y(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p1, v1}, Lcom/xinzhu/overmind/a;->w(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v3

    invoke-static {p1, v3}, Lcom/xinzhu/overmind/a;->o(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/f;->d()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xinzhu/overmind/client/frameworks/f;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    invoke-virtual {v3, v7}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    sget-object v3, Lcom/xinzhu/overmind/client/hook/f;->b:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->G(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v5

    invoke-static {p1, v5}, Lcom/xinzhu/overmind/a;->x(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p1, v1}, Lcom/xinzhu/overmind/a;->v(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v3

    invoke-static {p1, v3}, Lcom/xinzhu/overmind/a;->n(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object p1, Lcom/xinzhu/overmind/client/hook/f;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check external cache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 25
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result p1

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->E(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 26
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :cond_4
    :goto_1
    if-eqz v8, :cond_5

    const-string p2, "/storage/emulated/0/"

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "/sdcard/"

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "/mnt/sdcard/"

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 30
    :cond_5
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 31
    :cond_6
    :goto_2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->isHideRoot()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 32
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/f;->e(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/f;->d()Lcom/xinzhu/overmind/client/hook/f;

    move-result-object v1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lcom/xinzhu/overmind/client/hook/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    return-void
.end method

.method public f(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public g(Ljava/io/File;Ljava/util/Map;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "rule"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/client/hook/f;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/f;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "rule"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/xinzhu/overmind/client/hook/f;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method
