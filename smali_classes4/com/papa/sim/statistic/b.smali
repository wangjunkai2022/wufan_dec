.class public Lcom/papa/sim/statistic/b;
.super Ljava/lang/Object;
.source "APKUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/sim/statistic/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length p1, p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :catch_0
    return v1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Lcom/papa/sim/statistic/b$a;
    .locals 4

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/b$a;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/b$a;-><init>(Lcom/papa/sim/statistic/b;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 5
    iget v2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 6
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/b$a;->i(I)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/b$a;->j(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/b$a;->f(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/b$a;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/b$a;->g(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method
