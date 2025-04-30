.class public Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GameMainActivity3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameMainActivity3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmuOutResultReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainActivity3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameMainActivity3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$EmuOutResultReceiver;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-virtual {p1}, Lcom/join/mgps/activity/GameMainActivity3;->e2()V

    return-void
.end method
