.class Lcom/xinzhu/overmind/client/hook/proxies/am/b$j;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "ActivityManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
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

    const-string v0, "getInfoForIntentSender"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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

    const/4 v0, 0x0

    .line 1
    aget-object v1, p3, v0

    check-cast v1, Landroid/os/IInterface;

    if-eqz v1, :cond_1

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/a;->d()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object v2

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xinzhu/overmind/client/frameworks/a;->b(Landroid/os/IBinder;)Lcom/xinzhu/overmind/entity/PendingIntentRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    iget-object v3, v2, Lcom/xinzhu/overmind/entity/PendingIntentRecord;->a:Ljava/lang/String;

    iget v4, v2, Lcom/xinzhu/overmind/entity/PendingIntentRecord;->b:I

    iget v5, v2, Lcom/xinzhu/overmind/entity/PendingIntentRecord;->f:I

    const/high16 v6, 0x4000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget v2, v2, Lcom/xinzhu/overmind/entity/PendingIntentRecord;->g:I

    invoke-static {v3, v4, v0, v2}, Lcom/xinzhu/haunted/android/app/c$a;->f(Ljava/lang/String;IZI)Lcom/xinzhu/haunted/android/app/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, v0, Lcom/xinzhu/haunted/android/app/c$a;->a:Ljava/lang/Object;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/xinzhu/haunted/android/app/c$a;

    invoke-direct {p2, p1}, Lcom/xinzhu/haunted/android/app/c$a;-><init>(Ljava/lang/Object;)V

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<Bug likely> getInfoForIntentSender fallback to system, CreatorPackage: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xinzhu/haunted/android/app/c$a;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ActivityManagerStub"

    invoke-static {p3, p2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
