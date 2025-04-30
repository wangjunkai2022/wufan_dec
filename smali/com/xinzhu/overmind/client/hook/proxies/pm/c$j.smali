.class Lcom/xinzhu/overmind/client/hook/proxies/pm/c$j;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "PackageManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/pm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
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

    const-string v0, "getInstalledPackages"

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
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->f([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    aget-object v0, p3, v0

    invoke-static {v0}, Lcom/xinzhu/overmind/utils/q;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v1

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/xinzhu/overmind/client/frameworks/f;->h(II)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/xinzhu/haunted/android/content/pm/j;

    invoke-direct {p2, p1}, Lcom/xinzhu/haunted/android/content/pm/j;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/xinzhu/haunted/android/content/pm/j;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object p3

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/xinzhu/overmind/Overmind;->isInstalled(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p3, p3, 0x9

    if-nez p3, :cond_1

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 9
    invoke-static {p3}, Lcom/xinzhu/overmind/client/hook/env/a;->f(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    :cond_1
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 10
    invoke-static {p3}, Lcom/xinzhu/overmind/client/hook/env/a;->d(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/helpers/f;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
