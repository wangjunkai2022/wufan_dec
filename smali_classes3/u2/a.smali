.class public Lu2/a;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "getMaxWidth"

.field private static final b:Ljava/lang/String; = "getMaxHeight"

.field private static final c:Ljava/lang/String; = "getMinWidth"

.field private static final d:Ljava/lang/String; = "getMinHeight"

.field private static final e:Ljava/lang/String; = "setMaxWidth"

.field private static final f:Ljava/lang/String; = "setMaxHeight"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    const-string v0, "getMaxHeight"

    .line 1
    invoke-static {p0, v0}, Lu2/a;->e(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;)I
    .locals 1

    const-string v0, "getMaxWidth"

    .line 1
    invoke-static {p0, v0}, Lu2/a;->e(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/View;)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "getMinHeight"

    .line 3
    invoke-static {p0, v0}, Lu2/a;->e(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "getMinWidth"

    .line 3
    invoke-static {p0, v0}, Lu2/a;->e(Landroid/view/View;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static e(Landroid/view/View;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static f(Landroid/view/View;I)V
    .locals 1

    const-string v0, "setMaxHeight"

    .line 1
    invoke-static {p0, v0, p1}, Lu2/a;->j(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static g(Landroid/view/View;I)V
    .locals 1

    const-string v0, "setMaxWidth"

    .line 1
    invoke-static {p0, v0, p1}, Lu2/a;->j(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static h(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public static i(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method private static j(Landroid/view/View;Ljava/lang/String;I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
