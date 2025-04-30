.class Lcom/xinzhu/overmind/client/hook/proxies/app/d$a;
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
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/d$a;->h:Lcom/xinzhu/overmind/client/hook/proxies/app/d;

    invoke-direct {p0, p2, p3, p4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
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
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/e;->a()Lcom/xinzhu/overmind/client/frameworks/e;

    move-result-object p1

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/xinzhu/overmind/client/frameworks/e;->d(Ljava/lang/String;I)V

    .line 2
    sget-object p1, Lcom/xinzhu/overmind/client/hook/c;->d:Ljava/lang/String;

    const-string p2, "cancelAllNotifications succeed"

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method
