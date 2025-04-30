.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$k;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "getIntentForIntentSender"

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

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
