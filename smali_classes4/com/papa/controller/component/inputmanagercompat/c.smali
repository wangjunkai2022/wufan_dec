.class public Lcom/papa/controller/component/inputmanagercompat/c;
.super Ljava/lang/Object;
.source "InputManagerV9.java"

# interfaces
.implements Lcom/papa/controller/component/inputmanagercompat/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/component/inputmanagercompat/c$a;,
        Lcom/papa/controller/component/inputmanagercompat/c$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "InputManagerV9"

.field private static final e:I = 0x65

.field private static final f:J = 0xbb8L

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/papa/controller/component/inputmanagercompat/a$b;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/papa/controller/component/inputmanagercompat/c$b;

    invoke-direct {v0, p0}, Lcom/papa/controller/component/inputmanagercompat/c$b;-><init>(Lcom/papa/controller/component/inputmanagercompat/c;)V

    iput-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->c:Landroid/os/Handler;

    .line 5
    invoke-virtual {p0}, Lcom/papa/controller/component/inputmanagercompat/c;->e()[I

    return-void
.end method

.method static synthetic f(Lcom/papa/controller/component/inputmanagercompat/c;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->a:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic g(Lcom/papa/controller/component/inputmanagercompat/c;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/controller/component/inputmanagercompat/c;->h(II)V

    return-void
.end method

.method private h(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa/controller/component/inputmanagercompat/a$b;

    .line 3
    iget-object v2, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 4
    invoke-static {p1, p2, v1}, Lcom/papa/controller/component/inputmanagercompat/c$a;->a(IILcom/papa/controller/component/inputmanagercompat/a$b;)Lcom/papa/controller/component/inputmanagercompat/c$a;

    move-result-object v1

    .line 5
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, v1, p1}, Lcom/papa/controller/component/inputmanagercompat/c;->h(II)V

    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 4
    iget-object v2, p0, Lcom/papa/controller/component/inputmanagercompat/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 6
    aput-wide v2, v0, v1

    return-void
.end method

.method public b(Lcom/papa/controller/component/inputmanagercompat/a$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Lcom/papa/controller/component/inputmanagercompat/a$b;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/papa/controller/component/inputmanagercompat/c;->c:Landroid/os/Handler;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(I)Landroid/view/InputDevice;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    return-object p1
.end method

.method public e()[I
    .locals 9

    .line 1
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, v0, v5

    .line 4
    iget-object v7, p0, Lcom/papa/controller/component/inputmanagercompat/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    if-nez v7, :cond_0

    .line 5
    iget-object v7, p0, Lcom/papa/controller/component/inputmanagercompat/c;->a:Landroid/util/SparseArray;

    const/4 v8, 0x1

    new-array v8, v8, [J

    aput-wide v1, v8, v4

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->c:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/inputmanagercompat/c;->c:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
