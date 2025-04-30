.class public Lcom/join/mgps/Util/f1;
.super Ljava/lang/Object;
.source "NotchInScreenUtile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "hasNotchInScreen"

    new-array v2, v0, [Ljava/lang/Class;

    .line 3
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "vivo"

    const-string v2, "oppo"

    const-string v3, "xiaomi"

    const-string v4, "HUAWEI"

    const/4 v5, 0x0

    const/16 v6, 0x1c

    if-lt v0, v6, :cond_6

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v5

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v5

    .line 7
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-static {p0}, Lcom/join/mgps/Util/f1;->a(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 9
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/f1;->e(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 11
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-static {p0}, Lcom/join/mgps/Util/f1;->c(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 13
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/f1;->d(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_5
    return v5

    .line 15
    :cond_6
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    return v5

    .line 17
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/f1;->a(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 19
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 20
    invoke-static {p0}, Lcom/join/mgps/Util/f1;->e(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 21
    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 22
    invoke-static {p0}, Lcom/join/mgps/Util/f1;->c(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 23
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    invoke-static {p0}, Lcom/join/mgps/Util/f1;->d(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_b
    return v5
.end method

.method private static c(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static d(Landroid/app/Activity;)Z
    .locals 5

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "android.util.FtFeature"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isFeatureSupport"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x20

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method private static e(Landroid/app/Activity;)Z
    .locals 6

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, p0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.miui.notch"

    aput-object v3, v2, p0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v5, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method
