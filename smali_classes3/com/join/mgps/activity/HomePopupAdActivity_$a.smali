.class Lcom/join/mgps/activity/HomePopupAdActivity_$a;
.super Landroid/content/BroadcastReceiver;
.source "HomePopupAdActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HomePopupAdActivity_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HomePopupAdActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity_$a;->a:Lcom/join/mgps/activity/HomePopupAdActivity_;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity_$a;->a:Lcom/join/mgps/activity/HomePopupAdActivity_;

    invoke-virtual {p1}, Lcom/join/mgps/activity/HomePopupAdActivity;->H0()V

    return-void
.end method
