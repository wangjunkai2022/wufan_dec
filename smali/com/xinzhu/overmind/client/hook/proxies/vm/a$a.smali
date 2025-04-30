.class Lcom/xinzhu/overmind/client/hook/proxies/vm/a$a;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "WindowManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/vm/a;
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
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "openSession"

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

    .line 1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    .line 2
    new-instance p2, Lcom/xinzhu/overmind/client/hook/proxies/vm/b;

    invoke-direct {p2, p1}, Lcom/xinzhu/overmind/client/hook/proxies/vm/b;-><init>(Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {p2}, Lcom/xinzhu/overmind/client/hook/c;->c()V

    .line 4
    invoke-virtual {p2}, Lcom/xinzhu/overmind/client/hook/proxies/vm/b;->g()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
