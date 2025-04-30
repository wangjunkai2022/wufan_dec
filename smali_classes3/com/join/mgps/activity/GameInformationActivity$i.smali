.class Lcom/join/mgps/activity/GameInformationActivity$i;
.super Ljava/lang/Object;
.source "GameInformationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivity;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$i;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$i;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivity;->E0(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$i;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivity;->E0(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationCommentActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$i;->a:Lcom/join/mgps/activity/GameInformationActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_0
    return-void
.end method
