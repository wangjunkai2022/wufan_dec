.class public Lcom/join/mgps/Util/z1;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final b:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final c:Ljava/lang/String; = "ro.miui.internal.storage"

.field private static final d:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/Window;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 3
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "meizuFlags"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 7
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_0

    or-int p1, v4, v2

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, v2, -0x1

    and-int/2addr p1, v4

    .line 8
    :goto_0
    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static b(Landroid/view/Window;Z)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v3, "android.view.MiuiWindowManager$LayoutParams"

    .line 2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "setExtraFlags"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 5
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    aput-object v7, v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz p1, :cond_0

    new-array p1, v5, [Ljava/lang/Object;

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array p1, v5, [Ljava/lang/Object;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c(Landroid/app/Activity;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/join/mgps/Util/z1;->b(Landroid/view/Window;Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/join/mgps/Util/z1;->a(Landroid/view/Window;Z)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4
    :cond_2
    :goto_0
    invoke-static {v0, p0}, Lcom/join/mgps/Util/z1;->r(ZLandroid/app/Activity;)V

    return-void
.end method

.method public static d(Landroid/app/Activity;)I
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/join/mgps/Util/z1;->b(Landroid/view/Window;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/join/mgps/Util/z1;->a(Landroid/view/Window;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/16 p0, 0x17

    if-lt v0, p0, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static e(Landroid/app/Activity;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/join/mgps/Util/z1;->b(Landroid/view/Window;Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/join/mgps/Util/z1;->a(Landroid/view/Window;Z)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x2400

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static f(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static g()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "hasSmartBar"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private static h()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/l;->i()Lcom/join/mgps/Util/l;

    move-result-object v1

    const-string v2, "ro.miui.ui.version.code"

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/l;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "ro.miui.ui.version.name"

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/l;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "ro.miui.internal.storage"

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/l;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method private static i(ZLandroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    :try_start_0
    const-string v0, "android.view.WindowManager$LayoutParams"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "meizuFlags"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    if-eqz p0, :cond_0

    or-int p0, v2, v1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    xor-int/lit8 p0, v1, -0x1

    and-int/2addr p0, v2

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static j(ZLandroid/app/Activity;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "android.view.MiuiWindowManager$LayoutParams"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "setExtraFlags"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 5
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static k(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_0
    return-void
.end method

.method private static l(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    if-lt v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x100

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1, p0}, Lcom/join/mgps/Util/z1;->j(ZLandroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static m(ZLandroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    if-eqz p0, :cond_0

    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, -0x2001

    goto :goto_0

    :cond_1
    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    if-eqz p0, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, -0x11

    .line 5
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static n(Landroid/app/Activity;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x44000000    # 512.0f

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x100

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method public static o(Landroid/app/Activity;IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    invoke-static {v0, p2}, Lcom/join/mgps/Util/z1;->b(Landroid/view/Window;Z)Z

    .line 3
    invoke-static {v0, p2}, Lcom/join/mgps/Util/z1;->a(Landroid/view/Window;Z)Z

    .line 4
    invoke-static {p0, p1, p2}, Lcom/githang/statusbar/c;->d(Landroid/app/Activity;IZ)V

    .line 5
    invoke-static {p2, p0}, Lcom/join/mgps/Util/z1;->r(ZLandroid/app/Activity;)V

    return-void
.end method

.method public static p(Landroid/app/Activity;ZZ)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x13

    if-lt v0, p1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/high16 v1, 0x4000000

    .line 7
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_2
    :goto_0
    const/16 p1, 0x17

    if-lt v0, p1, :cond_3

    if-nez p2, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x2400

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    return-void
.end method

.method public static q(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/z1;->s(Landroid/app/Activity;)V

    .line 6
    new-instance v0, Lcom/join/android/app/common/manager/b;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/manager/b;-><init>(Landroid/app/Activity;)V

    const/4 p0, 0x1

    .line 7
    invoke-virtual {v0, p0}, Lcom/join/android/app/common/manager/b;->m(Z)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/manager/b;->n(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static r(ZLandroid/app/Activity;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/z1;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/join/mgps/Util/z1;->i(ZLandroid/app/Activity;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/z1;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p1, p0}, Lcom/join/mgps/Util/z1;->l(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_1
    const-string v1, "OPPO"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    .line 7
    invoke-static {p0, p1}, Lcom/join/mgps/Util/z1;->m(ZLandroid/app/Activity;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p1, p0}, Lcom/join/mgps/Util/z1;->n(Landroid/app/Activity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static s(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    :goto_0
    return-void
.end method
