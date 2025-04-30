.class Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationListenerTransport"
.end annotation


# instance fields
.field volatile a:Landroidx/core/location/LocationListenerCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroidx/core/location/LocationListenerCompat;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Landroidx/core/location/LocationListenerCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "invalid null listener"

    .line 2
    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/location/LocationListenerCompat;

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    .line 3
    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->k(Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->o(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->n(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->p(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->j(Landroidx/core/location/LocationListenerCompat;Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic f(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->l(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->m(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->i(Landroidx/core/location/LocationListenerCompat;I)V

    return-void
.end method

.method private synthetic i(Landroidx/core/location/LocationListenerCompat;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p2}, Landroid/location/LocationListener;->onFlushComplete(I)V

    return-void
.end method

.method private synthetic j(Landroidx/core/location/LocationListenerCompat;Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p2}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method private synthetic k(Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p2}, Landroid/location/LocationListener;->onLocationChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic l(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p2}, Landroidx/core/location/LocationListenerCompat;->onProviderDisabled(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic m(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p2}, Landroidx/core/location/LocationListenerCompat;->onProviderEnabled(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic n(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p2, p3, p4}, Landroidx/core/location/LocationListenerCompat;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic o(Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic p(Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onFlushComplete(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/j;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/j;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/k;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/k;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Landroid/location/Location;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocationChanged(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/o;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/o;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/l;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/l;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/m;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/m;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v6, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Landroidx/core/location/n;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/core/location/n;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public register()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLocationListeners"
    .end annotation

    .line 1
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->g:Ljava/util/WeakHashMap;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    invoke-virtual {v0, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 6
    sget-object v0, Landroidx/core/location/p;->a:Landroidx/core/location/p;

    invoke-interface {v1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister()Z
    .locals 4
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLocationListeners"
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a:Landroidx/core/location/LocationListenerCompat;

    .line 3
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->g:Ljava/util/WeakHashMap;

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 6
    sget-object v2, Landroidx/core/location/q;->a:Landroidx/core/location/q;

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 8
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v0, 0x1

    return v0
.end method
