.class Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$k0;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "AccountManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k0"
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

    const-string v0, "removeAccount"

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

    const/4 p1, 0x0

    .line 1
    aget-object p2, p3, p1

    check-cast p2, Landroid/accounts/IAccountManagerResponse;

    const/4 v0, 0x1

    .line 2
    aget-object v0, p3, v0

    check-cast v0, Landroid/accounts/Account;

    .line 3
    array-length v1, p3

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 p1, 0x2

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;->n()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    move-result-object p3

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v1

    .line 7
    invoke-virtual {p3, p2, v0, p1, v1}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    const/4 p1, 0x0

    return-object p1
.end method
