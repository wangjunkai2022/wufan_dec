.class Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "CommonStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
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

    const-string v0, "getTasks"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 5
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/a;->d()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v0

    iget v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/client/frameworks/a;->j(I)Lcom/xinzhu/overmind/server/am/MindTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 8
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->c:Landroid/content/ComponentName;

    iput-object v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 9
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->b:Landroid/content/Intent;

    iput-object v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 10
    :cond_1
    iget-object v1, v0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->d:Landroid/content/ComponentName;

    iput-object v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 11
    iget-object v0, v0, Lcom/xinzhu/overmind/server/am/MindTaskInfo;->c:Landroid/content/ComponentName;

    iput-object v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 12
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method
