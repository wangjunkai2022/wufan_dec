.class public Lcom/xinzhu/overmind/client/hook/proxies/textservice/a;
.super Lcom/xinzhu/overmind/client/hook/b;
.source "TextServicesManagerStub.java"


# static fields
.field static final f:Ljava/lang/String; = "textservices"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "textservices"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/q;->h(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Ljava/lang/Object;
    .locals 1

    const-string v0, "textservices"

    .line 1
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/q;->h(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xinzhu/haunted/com/android/internal/textservice/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method protected i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseInvocation",
            "proxyInvocation"
        }
    .end annotation

    const-string p1, "textservices"

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/b;->m(Ljava/lang/String;)V

    return-void
.end method

.method protected k()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/b;->k()V

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    const-string v2, "getCurrentSpellChecker"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    const-string v2, "getCurrentSpellCheckerSubtype"

    invoke-direct {v0, v2, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 5
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    const-string v2, "getSpellCheckerService"

    invoke-direct {v0, v2, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 6
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    const-string v2, "finishSpellCheckerService"

    invoke-direct {v0, v2, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    const-string v2, "isSpellCheckerEnabled"

    invoke-direct {v0, v2, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    .line 8
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    const-string v2, "getEnabledSpellCheckers"

    invoke-direct {v0, v2, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/c;->d(Lcom/xinzhu/overmind/client/hook/g;)V

    :cond_0
    return-void
.end method
