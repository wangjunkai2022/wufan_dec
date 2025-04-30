.class public Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RealNameResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method public constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$RealNameResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->checkRealName(I)V

    return-void
.end method
