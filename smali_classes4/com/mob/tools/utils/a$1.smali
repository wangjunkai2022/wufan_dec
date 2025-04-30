.class Lcom/mob/tools/utils/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/a;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/utils/a$1;->a:Lcom/mob/tools/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/a$1;->a:Lcom/mob/tools/utils/a;

    invoke-static {v0}, Lcom/mob/tools/utils/a;->a(Lcom/mob/tools/utils/a;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2
    iget-object v0, p0, Lcom/mob/tools/utils/a$1;->a:Lcom/mob/tools/utils/a;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/a;->a(Lcom/mob/tools/utils/a;Landroid/location/Location;)Landroid/location/Location;

    .line 3
    iget-object v0, p0, Lcom/mob/tools/utils/a$1;->a:Lcom/mob/tools/utils/a;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/a;->b(Lcom/mob/tools/utils/a;Landroid/location/Location;)Landroid/location/Location;

    .line 4
    iget-object p1, p0, Lcom/mob/tools/utils/a$1;->a:Lcom/mob/tools/utils/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/mob/tools/utils/a;->a(Lcom/mob/tools/utils/a;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object p1, p0, Lcom/mob/tools/utils/a$1;->a:Lcom/mob/tools/utils/a;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 6
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_1
    move-exception p1

    .line 8
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 9
    :try_start_5
    iget-object p1, p0, Lcom/mob/tools/utils/a$1;->a:Lcom/mob/tools/utils/a;

    monitor-enter p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 10
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit p1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    :goto_0
    return-void

    :catchall_4
    move-exception p1

    .line 12
    :try_start_8
    iget-object v0, p0, Lcom/mob/tools/utils/a$1;->a:Lcom/mob/tools/utils/a;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 13
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit v0

    goto :goto_1

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 15
    :catchall_6
    :goto_1
    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
