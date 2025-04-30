.class public Ls1/a;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Ls1/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0

    :catch_0
    return v0
.end method

.method public static c(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    :try_start_0
    invoke-static {p0, p1, v0}, Ls1/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v1

    .line 2
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0

    :catch_0
    return v1
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Ls1/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static e(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1, v1}, Ls1/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0

    :catch_0
    return-object v0
.end method
