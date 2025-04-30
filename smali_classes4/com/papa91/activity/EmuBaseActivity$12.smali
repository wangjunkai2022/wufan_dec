.class Lcom/papa91/activity/EmuBaseActivity$12;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->HideBottomMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$500()Lcom/papa91/activity/EmuBaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->hasNavBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->hideBottomUIMenu()V

    :cond_0
    return-void
.end method
