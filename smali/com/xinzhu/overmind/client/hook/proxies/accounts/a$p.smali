.class Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$p;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "AccountManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "p"
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

    const-string v0, "getAccounts"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    check-cast p1, Ljava/lang/String;

    .line 2
    array-length p2, p3

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/4 p2, 0x1

    .line 3
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;->n()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    move-result-object p3

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v0

    .line 6
    invoke-virtual {p3, p1, v0, p2}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method
