.class Lcom/join/mgps/activity/MGGameDetailActivity$l;
.super Ljava/lang/Object;
.source "MGGameDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;->p1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$l;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    sput-boolean p1, Lcom/join/mgps/activity/MGGameDetailActivity;->o1:Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$l;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$l;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    const-class v2, Lcom/join/mgps/activity/BuildGameFromActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
