.class Lcom/xinzhu/overmind/client/e$b;
.super Ljava/lang/Object;
.source "Overlord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/e;->handleNewIntent(Landroid/os/IBinder;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/os/IBinder;

.field final synthetic c:Lcom/xinzhu/overmind/client/e;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/e;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$intent",
            "val$token"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/e$b;->c:Lcom/xinzhu/overmind/client/e;

    iput-object p2, p0, Lcom/xinzhu/overmind/client/e$b;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/xinzhu/overmind/client/e$b;->b:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/e$b;->a:Landroid/content/Intent;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/haunted/com/android/internal/content/a;->b(Landroid/content/Intent;Ljava/lang/String;)Lcom/xinzhu/haunted/com/android/internal/content/a;

    move-result-object v0

    iget-object v0, v0, Lcom/xinzhu/haunted/com/android/internal/content/a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/e$b;->a:Landroid/content/Intent;

    .line 4
    :goto_0
    new-instance v1, Lcom/xinzhu/haunted/android/app/g;

    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/g;->Q()Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Lcom/xinzhu/overmind/client/e$b;->b:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v2, v0}, Lcom/xinzhu/haunted/android/app/g;->a0(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/xinzhu/overmind/client/e$b;->b:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xinzhu/haunted/android/app/g;->A(Landroid/os/IBinder;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/xinzhu/overmind/client/e$b;->b:Landroid/os/IBinder;

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/xinzhu/haunted/android/app/g;->d0(Landroid/os/IBinder;Ljava/util/List;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/xinzhu/overmind/client/e$b;->b:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/xinzhu/haunted/android/app/g;->B(Landroid/os/IBinder;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    iget-object v2, p0, Lcom/xinzhu/overmind/client/e$b;->b:Landroid/os/IBinder;

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-virtual {v1, v2, v0, v4}, Lcom/xinzhu/haunted/android/app/g;->e0(Landroid/os/IBinder;Ljava/util/List;Z)V

    goto :goto_1

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/xinzhu/overmind/client/e$b;->b:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xinzhu/haunted/android/app/g;->w(Landroid/os/IBinder;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    iget-object v2, p0, Lcom/xinzhu/overmind/client/e$b;->b:Landroid/os/IBinder;

    .line 19
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-virtual {v1, v2, v0}, Lcom/xinzhu/haunted/android/app/g;->Z(Landroid/os/IBinder;Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method
