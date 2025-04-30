.class Lcom/xinzhu/overmind/client/hook/proxies/pm/c$t;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "PackageManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/pm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "t"
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

    const-string v0, "queryIntentActivities"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->f([Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getList"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 8
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/xinzhu/overmind/client/hook/env/a;->f(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    aget-object p1, p3, v1

    check-cast p1, Landroid/content/Intent;

    .line 11
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x2

    .line 12
    aget-object v1, p3, v1

    invoke-static {v1}, Lcom/xinzhu/overmind/utils/q;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x3

    .line 13
    aget-object p3, p3, v2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 14
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/f;->d()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p2, p3}, Lcom/xinzhu/overmind/client/frameworks/f;->w(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_2
    invoke-static {v0}, Lcom/xinzhu/haunted/android/content/pm/j;->c(Ljava/util/List;)Lcom/xinzhu/haunted/android/content/pm/j;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/xinzhu/haunted/android/content/pm/j;

    iget-object p1, p1, Lcom/xinzhu/haunted/android/content/pm/j;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    invoke-static {v0}, Lcom/xinzhu/haunted/android/content/pm/j;->c(Ljava/util/List;)Lcom/xinzhu/haunted/android/content/pm/j;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/xinzhu/haunted/android/content/pm/j;

    iget-object p1, p1, Lcom/xinzhu/haunted/android/content/pm/j;->a:Ljava/lang/Object;

    return-object p1
.end method
