.class Lorg/ppsspp/ppsspp/e;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final c:Ljava/lang/String; = "LocationHelper"


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "location"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lorg/ppsspp/ppsspp/e;->a:Landroid/location/LocationManager;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/e;->b:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/e;->b:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/e;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/e;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 4
    iget-object v2, p0, Lorg/ppsspp/ppsspp/e;->a:Landroid/location/LocationManager;

    const-string v3, "gps"

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 5
    iget-object v7, p0, Lorg/ppsspp/ppsspp/e;->a:Landroid/location/LocationManager;

    const-string v8, "network"

    const-wide/16 v9, 0x3e8

    const/4 v11, 0x0

    move-object v12, p0

    invoke-virtual/range {v7 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/ppsspp/ppsspp/e;->b:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start location updates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void
.end method

.method b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/e;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/ppsspp/ppsspp/e;->b:Z

    .line 3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/e;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v2, v0

    .line 2
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-float v3, v0

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    double-to-float v4, v0

    .line 4
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v5

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v6

    .line 6
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v7, 0x3e8

    div-long v7, v0, v7

    .line 7
    invoke-static/range {v2 .. v8}, Lorg/ppsspp/ppsspp/NativeApp;->pushNewGpsData(FFFFFJ)V

    return-void
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
