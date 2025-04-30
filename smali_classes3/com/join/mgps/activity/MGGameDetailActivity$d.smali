.class Lcom/join/mgps/activity/MGGameDetailActivity$d;
.super Ljava/lang/Object;
.source "MGGameDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;->d1()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$d;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$d;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->J0:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$d;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->J0:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$d;->a:Lcom/join/mgps/activity/MGGameDetailActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->c1()V

    return-void
.end method
