.class Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$w0;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "AccountManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "w0"
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

    const-string v0, "startUpdateCredentialsSession"

    return-object v0
.end method

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

    const/4 p1, 0x0

    .line 1
    aget-object p1, p3, p1

    move-object v1, p1

    check-cast v1, Landroid/accounts/IAccountManagerResponse;

    const/4 p1, 0x1

    .line 2
    aget-object p1, p3, p1

    move-object v2, p1

    check-cast v2, Landroid/accounts/Account;

    const/4 p1, 0x2

    .line 3
    aget-object p1, p3, p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const/4 p1, 0x3

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 p1, 0x4

    .line 5
    aget-object p1, p3, p1

    move-object v5, p1

    check-cast v5, Landroid/os/Bundle;

    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;->n()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    const/4 p1, 0x0

    return-object p1
.end method
