.class Lcom/join/mgps/activity/MGMainActivity$e;
.super Ljava/lang/Object;
.source "MGMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->showSharedGameDialog(Lcom/join/mgps/dto/CollectionBeanSub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic b:Lcom/join/mgps/customview/t;

.field final synthetic c:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/mgps/dto/CollectionBeanSub;Lcom/join/mgps/customview/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$e;->c:Lcom/join/mgps/activity/MGMainActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$e;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    iput-object p3, p0, Lcom/join/mgps/activity/MGMainActivity$e;->b:Lcom/join/mgps/customview/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$e;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$e;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$e;->c:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$e;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$e;->b:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
