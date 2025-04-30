.class Lcom/join/mgps/activity/HandShankYesActivity$c;
.super Ljava/lang/Object;
.source "HandShankYesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankYesActivity;->i1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/u0;

.field final synthetic b:Lcom/join/mgps/activity/HandShankYesActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HandShankYesActivity;Lcom/join/mgps/dialog/u0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$c;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/HandShankYesActivity$c;->a:Lcom/join/mgps/dialog/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$c;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankYesActivity$c;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    const-class v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$c;->a:Lcom/join/mgps/dialog/u0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
