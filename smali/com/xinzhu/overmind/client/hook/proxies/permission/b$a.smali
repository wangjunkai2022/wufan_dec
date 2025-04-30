.class Lcom/xinzhu/overmind/client/hook/proxies/permission/b$a;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "PermissionManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/permission/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "checkPermission"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    aget-object v1, p3, v0

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lcom/xinzhu/overmind/client/frameworks/f;

    move-result-object v2

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v4

    const/16 v5, 0x1000

    invoke-virtual {v2, v3, v5, v4}, Lcom/xinzhu/overmind/client/frameworks/f;->l(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v3, :cond_1

    .line 4
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 5
    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 6
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p3, v1

    const/4 v0, 0x2

    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    .line 10
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
