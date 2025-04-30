.class public Lcom/mob/commons/cc/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/commons/cc/t<",
        "Landroid/app/ActivityManager;",
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
.method public a(Landroid/app/ActivityManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "Ljava/lang/Class<",
            "Landroid/app/ActivityManager;",
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

    const-string p2, "getRunningTasks"

    .line 2
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x1

    const/4 p7, 0x0

    if-eqz p2, :cond_0

    array-length p2, p4

    if-ne p2, p5, :cond_0

    aget-object p2, p4, p7

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 3
    aget-object p2, p4, p7

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    aput-object p1, p6, p7

    return p5

    :cond_0
    const-string p2, "getRunningAppProcesses"

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    array-length p2, p4

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    aput-object p1, p6, p7

    return p5

    :cond_1
    return p7
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/b;->a(Landroid/app/ActivityManager;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
