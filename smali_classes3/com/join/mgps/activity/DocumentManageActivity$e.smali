.class Lcom/join/mgps/activity/DocumentManageActivity$e;
.super Landroid/content/BroadcastReceiver;
.source "DocumentManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/DocumentManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/DocumentManageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DocumentManageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$e;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$e;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/join/mgps/activity/DocumentManageActivity;->B0:Z

    return-void
.end method
