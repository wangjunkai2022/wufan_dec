.class Lcom/xinzhu/overmind/client/hook/proxies/pm/c$y;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "PackageManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/pm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "y"
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

    const-string v0, "resolveService"

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

    const/4 v0, 0x0

    .line 1
    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x1

    .line 2
    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    .line 3
    aget-object v2, p3, v2

    invoke-static {v2}, Lcom/xinzhu/overmind/utils/q;->a(Ljava/lang/Object;)I

    move-result v2

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/f;->d()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v3

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v4

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/xinzhu/overmind/client/frameworks/f;->B(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->f([Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_0

    .line 7
    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/xinzhu/overmind/client/hook/env/a;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object v0
.end method
