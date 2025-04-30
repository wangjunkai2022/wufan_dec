.class Lcom/xinzhu/overmind/client/hook/proxies/app/a$a;
.super Lcom/xinzhu/overmind/client/hook/common/d;
.source "AlarmManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/hook/proxies/app/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/xinzhu/overmind/client/hook/proxies/app/a;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/hook/proxies/app/a;Ljava/lang/String;II)V
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
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/proxies/app/a$a;->h:Lcom/xinzhu/overmind/client/hook/proxies/app/a;

    invoke-direct {p0, p2, p3, p4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    const-class v0, Landroid/os/WorkSource;

    invoke-static {p3, v0}, Lcom/xinzhu/overmind/utils/d;->l([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    aput-object v1, p3, v0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/common/d;->d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
