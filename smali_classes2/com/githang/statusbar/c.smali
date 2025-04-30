.class public Lcom/githang/statusbar/c;
.super Ljava/lang/Object;
.source "StatusBarCompat.java"


# static fields
.field static final a:Lcom/githang/statusbar/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/githang/statusbar/h;

    invoke-direct {v0}, Lcom/githang/statusbar/h;-><init>()V

    sput-object v0, Lcom/githang/statusbar/c;->a:Lcom/githang/statusbar/b;

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 3
    invoke-static {}, Lcom/githang/statusbar/c;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance v0, Lcom/githang/statusbar/g;

    invoke-direct {v0}, Lcom/githang/statusbar/g;-><init>()V

    sput-object v0, Lcom/githang/statusbar/c;->a:Lcom/githang/statusbar/b;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, Lcom/githang/statusbar/f;

    invoke-direct {v0}, Lcom/githang/statusbar/f;-><init>()V

    sput-object v0, Lcom/githang/statusbar/c;->a:Lcom/githang/statusbar/b;

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lcom/githang/statusbar/c$a;

    invoke-direct {v0}, Lcom/githang/statusbar/c$a;-><init>()V

    sput-object v0, Lcom/githang/statusbar/c;->a:Lcom/githang/statusbar/b;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "build.prop"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    .line 4
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 7
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 8
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    const-string v0, "ro.build.hw_emui_api_level"

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :goto_2
    if-eqz v2, :cond_1

    .line 11
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 13
    :cond_1
    :goto_3
    throw v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/view/Window;Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const v0, 0x1020002

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/githang/statusbar/c;->f(I)I

    move-result v0

    const/16 v1, 0xe1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/githang/statusbar/c;->d(Landroid/app/Activity;IZ)V

    return-void
.end method

.method public static d(Landroid/app/Activity;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/githang/statusbar/c;->e(Landroid/view/Window;IZ)V

    return-void
.end method

.method public static e(Landroid/view/Window;IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-gtz v0, :cond_1

    sget-boolean v0, Lcom/githang/statusbar/e;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/githang/statusbar/c;->a:Lcom/githang/statusbar/b;

    invoke-interface {v0, p0, p1, p2}, Lcom/githang/statusbar/b;->a(Landroid/view/Window;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static f(I)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x26

    mul-int/lit8 v1, v1, 0x4b

    add-int/2addr p0, v1

    mul-int/lit8 v0, v0, 0xf

    add-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x7

    return p0
.end method
