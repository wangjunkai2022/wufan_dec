.class Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "CommonStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
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

    const-string v0, "getRecentTasks"

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
    :try_start_0
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->f([Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/helpers/f;->b(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    new-instance p3, Lcom/xinzhu/haunted/android/content/pm/j;

    invoke-direct {p3, p1}, Lcom/xinzhu/haunted/android/content/pm/j;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/xinzhu/haunted/android/content/pm/j;->d()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    check-cast p1, Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p3

    .line 8
    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/a;->d()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v1

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/xinzhu/overmind/client/frameworks/a;->j(I)Lcom/xinzhu/overmind/server/am/MindTaskInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 11
    :try_start_1
    iget-object v2, v1, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->c:Landroid/content/ComponentName;

    iput-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 12
    iget-object v3, v1, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->b:Landroid/content/Intent;

    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 14
    iget-object v1, v1, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->d:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 15
    iput-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 17
    :cond_2
    invoke-interface {p3}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 18
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/helpers/f;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    return-object p1

    :catchall_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
