.class public Lcom/xinzhu/overmind/client/hook/common/c;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "FixedResultMethodHookStub.java"


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "result"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/xinzhu/overmind/client/hook/common/c;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/common/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/common/c;->b:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/xinzhu/overmind/client/hook/common/c;->a:Ljava/lang/Object;

    return-object p1
.end method
