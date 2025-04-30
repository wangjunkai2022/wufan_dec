.class Lcom/xinzhu/overmind/client/hook/proxies/os/f$b;
.super Lcom/xinzhu/overmind/client/hook/common/d;
.source "PowerManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/proxies/os/f;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/xinzhu/overmind/client/hook/proxies/os/f;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/hook/proxies/os/f;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "name",
            "replace_pkg_index",
            "replace_userId_index"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/os/f$b;->h:Lcom/xinzhu/overmind/client/hook/proxies/os/f;

    invoke-direct {p0, p2, p3, p4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    const-class v0, Landroid/os/WorkSource;

    invoke-static {p3, v0}, Lcom/xinzhu/overmind/utils/d;->l([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    aput-object v1, p3, v0

    .line 3
    :cond_0
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getBaseVUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVUid()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 5
    :cond_1
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    .line 6
    :cond_2
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/common/d;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method
