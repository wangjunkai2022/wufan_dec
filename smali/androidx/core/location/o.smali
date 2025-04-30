.class public final synthetic Landroidx/core/location/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

.field public final synthetic b:Landroidx/core/location/LocationListenerCompat;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/o;->a:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iput-object p2, p0, Landroidx/core/location/o;->b:Landroidx/core/location/LocationListenerCompat;

    iput-object p3, p0, Landroidx/core/location/o;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/core/location/o;->a:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget-object v1, p0, Landroidx/core/location/o;->b:Landroidx/core/location/LocationListenerCompat;

    iget-object v2, p0, Landroidx/core/location/o;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V

    return-void
.end method
