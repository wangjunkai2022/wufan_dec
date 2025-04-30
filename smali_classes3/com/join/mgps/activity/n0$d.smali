.class Lcom/join/mgps/activity/n0$d;
.super Ljava/lang/Object;
.source "GamedetialModleFourFragemnt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/n0;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/n0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/n0$d;->a:Lcom/join/mgps/activity/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/activity/n0$d;->a:Lcom/join/mgps/activity/n0;

    invoke-static {v0}, Lcom/join/mgps/activity/n0;->T(Lcom/join/mgps/activity/n0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getActivity_entry()Lcom/join/mgps/dto/GamedetialBottomEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialBottomEntry;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/mgps/activity/n0$d;->a:Lcom/join/mgps/activity/n0;

    invoke-static {v0}, Lcom/join/mgps/activity/n0;->T(Lcom/join/mgps/activity/n0;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/n0$d;->a:Lcom/join/mgps/activity/n0;

    iget-object v1, v1, Lcom/join/mgps/activity/n0;->t0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
