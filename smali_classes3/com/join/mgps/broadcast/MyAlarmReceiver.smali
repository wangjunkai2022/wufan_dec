.class public Lcom/join/mgps/broadcast/MyAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/q0;->i(Landroid/content/Context;)V

    return-void
.end method
