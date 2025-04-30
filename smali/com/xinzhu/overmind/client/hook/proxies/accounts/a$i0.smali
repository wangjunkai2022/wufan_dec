.class Lcom/xinzhu/overmind/client/hook/proxies/accounts/a$i0;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "AccountManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i0"
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

    const-string v0, "peekAuthToken"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    check-cast p1, Landroid/accounts/Account;

    const/4 p2, 0x1

    .line 2
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/proxies/accounts/a;->n()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
