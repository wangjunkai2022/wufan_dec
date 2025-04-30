.class public Lcom/mob/commons/cc/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/commons/cc/t<",
        "Landroid/content/pm/PackageManager;",
        ">;"
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
.method public a(Landroid/content/pm/PackageManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/Class<",
            "Landroid/content/pm/PackageManager;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[Z[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    const-string p2, "019kSdc(iQdhdiegdk=di1dkHd^eh]iMdh@jBdedg^i3fg"

    .line 2
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    array-length p2, p4

    if-ne p2, p5, :cond_0

    aget-object p2, p4, v1

    instance-of p2, p2, Landroid/content/Intent;

    if-eqz p2, :cond_0

    aget-object p2, p4, v0

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 3
    aget-object p2, p4, v1

    check-cast p2, Landroid/content/Intent;

    aget-object p3, p4, v0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    aput-object p1, p6, v1

    return v0

    :cond_0
    const-string p2, "014)ff1idTghdfdgdjdfff0iAegdkfhec"

    .line 4
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5
    array-length p2, p4

    const/4 p3, 0x0

    if-ne p2, p5, :cond_1

    aget-object p2, p4, v1

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    aget-object p2, p4, v0

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 6
    :try_start_0
    aget-object p2, p4, v1

    check-cast p2, Ljava/lang/String;

    aget-object p4, p4, v0

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1, p2, p4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    aput-object p1, p6, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    aput-object p1, p7, v1

    .line 8
    aput-object p3, p6, v1

    :goto_0
    return v0

    .line 9
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p2, v2, :cond_2

    array-length p2, p4

    if-ne p2, p5, :cond_2

    aget-object p2, p4, v1

    instance-of p2, p2, Landroid/content/pm/VersionedPackage;

    if-eqz p2, :cond_2

    aget-object p2, p4, v0

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 10
    :try_start_1
    aget-object p2, p4, v1

    check-cast p2, Landroid/content/pm/VersionedPackage;

    aget-object p4, p4, v0

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1, p2, p4}, Landroid/content/pm/PackageManager;->getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    aput-object p1, p6, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 11
    aput-object p1, p7, v1

    .line 12
    aput-object p3, p6, v1

    :goto_1
    return v0

    :cond_2
    return v1

    :cond_3
    const-string p2, "025)ff(idDekdfdcdkdgGc egdk di?dk,d\'fkecdhghdfdgdjdfff=i"

    .line 13
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    array-length p2, p4

    if-ne p2, v0, :cond_4

    aget-object p2, p4, v1

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 14
    aget-object p2, p4, v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    aput-object p1, p6, v1

    return v0

    :cond_4
    const-string p2, "015Tdh1iZfgeced9jiLejdgCdFdeCjMdeLdBdi"

    .line 15
    invoke-static {p2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    array-length p2, p4

    if-ne p2, p5, :cond_5

    aget-object p2, p4, v1

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_5

    aget-object p2, p4, v0

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_5

    .line 16
    aget-object p2, p4, v1

    check-cast p2, Landroid/content/Intent;

    aget-object p3, p4, v0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    aput-object p1, p6, v1

    return v0

    :cond_5
    return v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/content/pm/PackageManager;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/g;->a(Landroid/content/pm/PackageManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
