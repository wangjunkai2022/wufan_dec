.class Lcom/join/mgps/activity/GameInformationActivity$g;
.super Ljava/lang/Object;
.source "GameInformationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivity;->a1(Lcom/join/mgps/dto/GameInformationBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$g;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity$g;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/GameInformationActivity;->G0(Lcom/join/mgps/activity/GameInformationActivity;)Lcom/join/mgps/dto/DetailResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$g;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivity;->G0(Lcom/join/mgps/activity/GameInformationActivity;)Lcom/join/mgps/dto/DetailResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$g;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivity;->G0(Lcom/join/mgps/activity/GameInformationActivity;)Lcom/join/mgps/dto/DetailResultBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tpl_two_position()I

    move-result v4

    const/16 v5, 0x74

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
