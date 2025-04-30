.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$d;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
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

    const-string v0, "broadcastIntent"

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
    invoke-virtual {p0, p3}, Lcom/xinzhu/overmind/client/hook/proxies/am/b$d;->f([Ljava/lang/Object;)I

    move-result v0

    .line 2
    aget-object v1, p3, v0

    check-cast v1, Landroid/content/Intent;

    add-int/lit8 v2, v0, 0x1

    .line 3
    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->f([Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v3

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Lcom/xinzhu/overmind/client/frameworks/a;->w(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/xinzhu/overmind/client/hook/env/a;->k(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    aput-object v1, p3, v0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 9
    aget-object v1, p3, v0

    .line 10
    instance-of v1, v1, [Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 11
    aput-object v1, p3, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method f([Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2
    aget-object v1, p1, v0

    .line 3
    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
