.class Lcom/xinzhu/overmind/client/hook/proxies/pm/c$o;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "PackageManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/pm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
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

    const-string v0, "getProviderInfo"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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

    check-cast v0, Landroid/content/ComponentName;

    const/4 v1, 0x1

    .line 3
    aget-object v1, p3, v1

    invoke-static {v1}, Lcom/xinzhu/overmind/utils/q;->a(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v2

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/xinzhu/overmind/client/frameworks/f;->n(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/xinzhu/overmind/client/hook/env/a;->e(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
