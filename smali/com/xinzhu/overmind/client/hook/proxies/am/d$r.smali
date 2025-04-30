.class Lcom/xinzhu/overmind/client/hook/proxies/am/d$r;
.super Lcom/xinzhu/overmind/client/hook/g;
.source "CommonStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "r"
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

    const-string v0, "startActivityIntentSender"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
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
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v3, v0, 0x4

    add-int/lit8 v4, v0, 0x5

    add-int/lit8 v5, v0, 0x6

    add-int/lit8 v6, v0, 0x7

    .line 2
    aget-object v7, p3, v0

    check-cast v7, Landroid/content/Intent;

    .line 3
    aget-object v8, p3, v1

    check-cast v8, Landroid/os/IBinder;

    .line 4
    aget-object v9, p3, v2

    check-cast v9, Ljava/lang/String;

    .line 5
    aget-object v10, p3, v3

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 6
    aget-object v4, p3, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 7
    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 8
    aget-object v6, p3, v6

    check-cast v6, Landroid/os/Bundle;

    if-nez v7, :cond_1

    .line 9
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 10
    aput-object v7, p3, v0

    .line 11
    :cond_1
    new-instance v0, Lcom/xinzhu/haunted/android/content/m;

    invoke-direct {v0, v7}, Lcom/xinzhu/haunted/android/content/m;-><init>(Ljava/lang/Object;)V

    const-string v11, "_VM_|_trampoline_result_to_"

    .line 12
    invoke-virtual {v0, v11, v8}, Lcom/xinzhu/haunted/android/content/m;->d(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "_VM_|_trampoline_result_who_"

    .line 13
    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "_VM_|_trampoline_request_code_"

    .line 14
    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "_VM_|_trampoline_options_"

    .line 15
    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->getVPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "_VM_|_trampoline_calling_package_"

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "_VM_|_trampoline_flagsMask_"

    .line 17
    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "_VM_|_trampoline_flagsValues_"

    .line 18
    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 19
    aput-object v0, p3, v1

    .line 20
    aput-object v0, p3, v2

    const/4 v0, -0x1

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v3

    .line 22
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
