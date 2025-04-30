.class Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "CommonStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/g;-><init>()V

    return-void
.end method

.method private f()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "getIntentSender"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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

    const/4 v0, 0x1

    .line 1
    aget-object v1, p3, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->d([Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    const-class v1, [Landroid/content/Intent;

    invoke-static {p3, v1}, Lcom/xinzhu/overmind/utils/helpers/a;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v1

    if-gez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;->f()I

    move-result v1

    .line 5
    :cond_0
    aget-object v2, p3, v1

    check-cast v2, [Landroid/content/Intent;

    add-int/lit8 v4, v1, 0x2

    .line 6
    aget-object v5, p3, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    const v5, -0x4000001

    and-int/2addr v5, v8

    goto :goto_0

    :cond_1
    move v5, v8

    :goto_0
    and-int/lit8 v5, v5, -0x9

    and-int/lit16 v5, v5, -0x81

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p3, v4

    .line 9
    invoke-static {p3}, Lcom/xinzhu/overmind/utils/helpers/a;->f([Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 10
    aget-object v5, p3, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 11
    array-length v5, v2

    const/4 v6, 0x0

    if-lez v5, :cond_3

    .line 12
    array-length v5, v2

    if-ne v5, v0, :cond_2

    .line 13
    aget-object v2, v2, v4

    move-object v7, v2

    goto :goto_1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "getIntentSender failed, more than 1 intent in array."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v7, v6

    .line 15
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 17
    invoke-virtual {v2, v5}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-ne v9, v0, :cond_4

    .line 19
    new-instance v5, Landroid/content/ComponentName;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xinzhu/overmind/Overmind;->getMainPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v10, Lcom/xinzhu/overmind/client/stub/StubTrampolineReceiver;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v6, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    :cond_4
    const/4 v5, 0x2

    if-eq v9, v5, :cond_7

    const/4 v5, 0x3

    if-ne v9, v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x5

    if-ne v9, v5, :cond_6

    const/4 v5, 0x4

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p3, v4

    .line 21
    :cond_6
    new-instance v5, Landroid/content/ComponentName;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xinzhu/overmind/Overmind;->getMainPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v10, Lcom/xinzhu/overmind/client/stub/StubTrampolineService;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v6, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    .line 22
    :cond_7
    :goto_2
    new-instance v5, Landroid/content/ComponentName;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xinzhu/overmind/Overmind;->getMainPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v10, Lcom/xinzhu/overmind/client/stub/StubTrampolineActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v6, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 23
    :goto_3
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v5

    invoke-static {v2, v7, v5}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;I)V

    new-array v0, v0, [Landroid/content/Intent;

    aput-object v2, v0, v4

    .line 24
    aput-object v0, p3, v1

    .line 25
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    if-eqz p1, :cond_8

    .line 26
    new-instance p2, Lcom/xinzhu/overmind/entity/PendingIntentRecord;

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVUid()I

    move-result v4

    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getUserId()I

    move-result v5

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v2, p2

    invoke-direct/range {v2 .. v9}, Lcom/xinzhu/overmind/entity/PendingIntentRecord;-><init>(Ljava/lang/String;IILandroid/os/IBinder;Landroid/content/Intent;II)V

    .line 27
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/a;->d()Lcom/xinzhu/overmind/client/frameworks/a;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/xinzhu/overmind/client/frameworks/a;->u(Lcom/xinzhu/overmind/entity/PendingIntentRecord;)V

    :cond_8
    return-object p1
.end method
