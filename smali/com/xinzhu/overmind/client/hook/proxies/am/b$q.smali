.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$q;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
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

    const-string v0, "peekService"

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

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->e([Ljava/lang/Object;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 2
    aget-object p1, p3, p1

    check-cast p1, Landroid/content/Intent;

    const/4 p2, 0x1

    .line 3
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object p3

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/xinzhu/overmind/client/frameworks/a;->t(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
