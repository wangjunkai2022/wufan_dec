.class public Lcom/join/mgps/Util/i1;
.super Ljava/lang/Object;
.source "OSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/i1$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final b:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final c:Ljava/lang/String; = "ro.miui.internal.storage"

.field private static final d:Ljava/lang/String; = "ro.build.version.emui"

.field private static final e:Ljava/lang/String; = "ro.build.hw_emui_api_level"

.field private static final f:Ljava/lang/String; = "ro.confg.hw_systemversion"

.field private static final g:Ljava/lang/String; = "ro.build.display.id"

.field private static final h:Ljava/lang/String; = "Flyme"

.field private static final i:Ljava/lang/String; = "persist.sys.use.flyme.icon"

.field private static final j:Ljava/lang/String; = "ro.meizu.setupwizard.flyme"

.field private static final k:Ljava/lang/String; = "ro.flyme.published"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 2
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    :try_start_1
    const-string v1, "android.os.SystemProperties"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 5
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "qemu.hw.mainkeys"

    aput-object v5, v4, v0

    .line 6
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "0"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    move v0, p0

    :catch_1
    :goto_1
    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method public static c()Z
    .locals 3

    const-string v0, "ro.build.version.emui"

    const-string v1, "ro.build.hw_emui_api_level"

    const-string v2, "ro.confg.hw_systemversion"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i1;->h([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 4

    const-string v0, "ro.build.display.id"

    const-string v1, "persist.sys.use.flyme.icon"

    const-string v2, "ro.meizu.setupwizard.flyme"

    const-string v3, "ro.flyme.published"

    .line 1
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/i1;->h([Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/i1$a;->i()Lcom/join/mgps/Util/i1$a;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/i1$a;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/i1$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return v2

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static e()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "navigationbar_is_min"

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    :goto_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static g()Z
    .locals 3

    const-string v0, "ro.miui.ui.version.code"

    const-string v1, "ro.miui.ui.version.name"

    const-string v2, "ro.miui.internal.storage"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/i1;->h([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static varargs h([Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/i1$a;->i()Lcom/join/mgps/Util/i1$a;

    move-result-object v2

    .line 3
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p0, v4

    .line 4
    invoke-virtual {v2, v5}, Lcom/join/mgps/Util/i1$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 5
    :catch_0
    :try_start_1
    array-length v2, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    const/4 v5, 0x0

    .line 6
    invoke-static {v4, v5}, Lcom/join/mgps/Util/i1;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return v0
.end method
