.class Lcom/xinzhu/overmind/client/e$a;
.super Ljava/lang/Object;
.source "Overlord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/e;->finishActivity(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/xinzhu/overmind/client/e;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/e;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$token"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/e$a;->b:Lcom/xinzhu/overmind/client/e;

    iput-object p2, p0, Lcom/xinzhu/overmind/client/e$a;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/g;->Q()Landroid/util/ArrayMap;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/client/e$a;->a:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Lcom/xinzhu/haunted/android/app/g$a;

    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/app/g$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/g$a;->g()Landroid/app/Activity;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    new-instance v1, Lcom/xinzhu/haunted/android/app/a;

    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/app/a;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/a;->j()I

    move-result v0

    .line 9
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/a;->k()Landroid/content/Intent;

    move-result-object v2

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 11
    new-instance v3, Lcom/xinzhu/haunted/android/app/l;

    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/xinzhu/haunted/android/app/l;-><init>(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/xinzhu/overmind/client/e$a;->a:Landroid/os/IBinder;

    invoke-virtual {v3, v5, v0, v2, v4}, Lcom/xinzhu/haunted/android/app/l;->g(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    new-instance v3, Lcom/xinzhu/haunted/android/app/l;

    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/xinzhu/haunted/android/app/l;-><init>(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/xinzhu/overmind/client/e$a;->a:Landroid/os/IBinder;

    invoke-virtual {v3, v5, v0, v2, v4}, Lcom/xinzhu/haunted/android/app/l;->h(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    :goto_1
    const/4 v0, 0x1

    .line 14
    invoke-virtual {v1, v0}, Lcom/xinzhu/haunted/android/app/a;->n(Z)Z

    return-void

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support lower than sdk 21"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
