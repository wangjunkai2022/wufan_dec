.class Lcom/join/mgps/activity/HandShankNoActivity$a;
.super Ljava/lang/Object;
.source "HandShankNoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankNoActivity;->d1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HandShankNoActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HandShankNoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity$a;->a:Lcom/join/mgps/activity/HandShankNoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity$a;->a:Lcom/join/mgps/activity/HandShankNoActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/activity/HandShankNoActivity$a;->a:Lcom/join/mgps/activity/HandShankNoActivity;

    const-class v2, Lcom/join/mgps/activity/HandShankYesActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankNoActivity$a;->a:Lcom/join/mgps/activity/HandShankNoActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
