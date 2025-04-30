.class Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$e0;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "AccountManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e0"
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

    const-string v0, "hasFeatures"

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

    const/4 p1, 0x0

    .line 1
    aget-object p1, p3, p1

    check-cast p1, Landroid/accounts/IAccountManagerResponse;

    const/4 p2, 0x1

    .line 2
    aget-object p2, p3, p2

    check-cast p2, Landroid/accounts/Account;

    const/4 v0, 0x2

    .line 3
    aget-object v0, p3, v0

    check-cast v0, [Ljava/lang/String;

    .line 4
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    const/4 v1, 0x3

    .line 5
    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p3, v2

    .line 6
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;->n()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
