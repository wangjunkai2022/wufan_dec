.class Lcom/xinzhu/overmind/client/hook/proxies/app/d$c;
.super Lcom/xinzhu/overmind/client/hook/common/d;
.source "NotificationManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/proxies/app/d;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/xinzhu/overmind/client/hook/proxies/app/d;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/hook/proxies/app/d;Ljava/lang/String;II)V
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
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/d$c;->h:Lcom/xinzhu/overmind/client/hook/proxies/app/d;

    invoke-direct {p0, p2, p3, p4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 3
    :goto_1
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    aget-object v2, p3, v1

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/e;->a()Lcom/xinzhu/overmind/client/frameworks/e;

    move-result-object v3

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/xinzhu/overmind/client/frameworks/e;->e(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    aput-object v0, p3, v1

    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/common/d;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
