.class public Lcom/ss/android/socialbase/appdownloader/f/d;
.super Ljava/lang/Object;
.source "RomUtils.java"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 1

    const-string v0, "EMUI"

    .line 1
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->o()V

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "ro.miui.ui.version.name"

    .line 5
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MIUI"

    .line 6
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    const-string v0, "com.xiaomi.market"

    .line 7
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v0, "ro.build.version.emui"

    .line 9
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EMUI"

    .line 10
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    const-string v0, "com.huawei.appmarket"

    .line 11
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 12
    :cond_2
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "com.heytap.market"

    const/4 v2, -0x1

    if-nez v0, :cond_4

    .line 13
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->a:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/g;->a(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_3

    .line 15
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->b:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 16
    :cond_3
    sput-object v1, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v0, "ro.vivo.os.version"

    .line 17
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "VIVO"

    .line 18
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    const-string v0, "com.bbk.appstore"

    .line 19
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v0, "ro.smartisan.version"

    .line 20
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SMARTISAN"

    .line 21
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    const-string v0, "com.smartisanos.appstore"

    .line 22
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v0, "ro.gn.sv.version"

    .line 23
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "QIONEE"

    .line 24
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    const-string v0, "com.gionee.aora.market"

    .line 25
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v0, "ro.lenovo.lvp.version"

    .line 26
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "LENOVO"

    .line 27
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    const-string v0, "com.lenovo.leos.appstore"

    .line 28
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 29
    :cond_8
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SAMSUNG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    sput-object v3, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    const-string v0, "com.sec.android.app.samsungapps"

    .line 31
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 32
    :cond_9
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ZTE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33
    sput-object v3, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    const-string v0, "zte.com.market"

    .line 34
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_a
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NUBIA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 36
    sput-object v3, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    const-string v0, "cn.nubia.neostore"

    .line 37
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_b
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FLYME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 39
    sput-object v3, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    const-string v0, "com.meizu.mstore"

    .line 40
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->k()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_c
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ONEPLUS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    sput-object v3, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    const-string v0, "ro.rom.version"

    .line 44
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/g;->a(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_d

    .line 46
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->b:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_d
    sput-object v1, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_e
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    const-string v0, ""

    .line 49
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    .line 51
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getprop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    invoke-direct {v3, v4, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    .line 6
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-object v3, v2

    :catchall_1
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/f;->a([Ljava/io/Closeable;)V

    return-object v2
.end method

.method public static b()Z
    .locals 1

    const-string v0, "MIUI"

    .line 1
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "android.os.SystemProperties"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "get"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static c()Z
    .locals 1

    const-string v0, "VIVO"

    .line 1
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "enable_reflect_system_properties"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/f/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static d()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->o()V

    .line 2
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    const-string v0, "FLYME"

    .line 1
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    const-string v0, "SAMSUNG"

    .line 1
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 2
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Z

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 2
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Z

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 2
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->a(Ljava/lang/String;)Z

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static l()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->p()V

    .line 2
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->g:Ljava/lang/String;

    const-string v1, "V10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->p()V

    .line 2
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->g:Ljava/lang/String;

    const-string v1, "V11"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->p()V

    .line 2
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->g:Ljava/lang/String;

    const-string v1, "V12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static o()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->F()V

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->b:Ljava/lang/String;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->a:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.build.version."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->d:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".market"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static p()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "ro.miui.ui.version.name"

    .line 2
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/f/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    sput-object v0, Lcom/ss/android/socialbase/appdownloader/f/d;->g:Ljava/lang/String;

    :cond_1
    return-void
.end method
