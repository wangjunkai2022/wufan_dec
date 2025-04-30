.class Lcom/join/mgps/activity/AccountCenterActivity$i;
.super Ljava/lang/Object;
.source "AccountCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountCenterActivity;->P0(Lcom/join/mgps/dto/RecomCentrebean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/AccountCenterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountCenterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterActivity$i;->a:Lcom/join/mgps/activity/AccountCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterActivity$i;->a:Lcom/join/mgps/activity/AccountCenterActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/AccountCenterActivity;->E0(Lcom/join/mgps/activity/AccountCenterActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goVip(Landroid/content/Context;)V

    return-void
.end method
