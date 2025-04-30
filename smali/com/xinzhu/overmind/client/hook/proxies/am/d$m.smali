.class Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "CommonStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "startActivities"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, [Landroid/content/Intent;

    const/4 v0, 0x3

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    const/4 v0, 0x4

    .line 3
    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/os/IBinder;

    const/4 v0, 0x5

    .line 4
    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 5
    invoke-static {v4}, Lcom/xinzhu/overmind/utils/helpers/c;->d([Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    array-length p2, v4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object v0, v4, p3

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v1

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v2

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVPackageName()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual/range {v1 .. v7}, Lcom/xinzhu/overmind/client/frameworks/a;->x(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
