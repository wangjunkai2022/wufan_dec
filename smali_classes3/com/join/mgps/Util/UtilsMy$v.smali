.class Lcom/join/mgps/Util/UtilsMy$v;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/papa91/common/RealNameCheckInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/dto/AccountBean;

.field final synthetic f:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/join/mgps/dto/AccountBean;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$v;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$v;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/Util/UtilsMy$v;->c:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iput p4, p0, Lcom/join/mgps/Util/UtilsMy$v;->d:I

    iput-object p5, p0, Lcom/join/mgps/Util/UtilsMy$v;->e:Lcom/join/mgps/dto/AccountBean;

    iput-object p6, p0, Lcom/join/mgps/Util/UtilsMy$v;->f:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/mgps/Util/UtilsMy$v;->c(Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/Activity;Ljava/lang/String;Lcom/papa91/common/RealNameCheckInfo;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/join/mgps/dto/AccountBean;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/join/mgps/Util/UtilsMy$v;->d(Landroid/app/Activity;Ljava/lang/String;Lcom/papa91/common/RealNameCheckInfo;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/join/mgps/dto/AccountBean;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method

.method private static synthetic c(Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-interface {p0, p1, p2, p4}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V

    :cond_0
    return-void
.end method

.method private static synthetic d(Landroid/app/Activity;Ljava/lang/String;Lcom/papa91/common/RealNameCheckInfo;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/join/mgps/dto/AccountBean;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 9

    move-object v0, p0

    move-object v7, p1

    move-object v2, p3

    move v3, p4

    move-object/from16 v1, p9

    const/4 v4, 0x1

    move/from16 v5, p8

    if-ne v5, v4, :cond_0

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v5

    sget-object v6, Lcom/papa/sim/statistic/Event;->closedRealNameWindow:Lcom/papa/sim/statistic/Event;

    new-instance v8, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v8}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v8, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 2
    :cond_0
    invoke-virtual/range {p9 .. p9}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/papa91/arc/bean/PopwindowBean;->getType()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 4
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v4, Lcom/papa/sim/statistic/Event;->realNameDisplayWindow:Lcom/papa/sim/statistic/Event;

    new-instance v5, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v5, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p6}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->getType()I

    move-result v5

    invoke-virtual {p6}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->getAction()I

    move-result v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/join/mgps/Util/UtilsMy;->n(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILjava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual/range {p9 .. p9}, Lcom/papa91/arc/bean/ButtonBean;->getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;

    move-result-object v1

    new-instance v4, Lcom/join/mgps/Util/m2;

    invoke-direct {v4, p3, p4}, Lcom/join/mgps/Util/m2;-><init>(Lcom/join/mgps/activity/arena/GameRoomActivity$x;I)V

    invoke-static {p0, v1, v4}, Lcom/join/mgps/Util/UtilsMy;->o(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual/range {p9 .. p9}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v4, :cond_4

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {p3, p4, v6, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V

    .line 9
    :cond_3
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->clickKnowGoRealPage:Lcom/papa/sim/statistic/Event;

    new-instance v4, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v4, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 10
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v2

    invoke-virtual/range {p9 .. p9}, Lcom/papa91/arc/bean/ButtonBean;->getJumpLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 11
    invoke-interface {p3, p4, v6, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V

    .line 12
    :cond_5
    :goto_0
    invoke-virtual/range {p7 .. p7}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/papa91/common/RealNameCheckInfo;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->m(Z)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$v;->c:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    if-eqz p1, :cond_0

    .line 3
    iget p2, p0, Lcom/join/mgps/Util/UtilsMy$v;->d:I

    invoke-interface {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onFail(I)V

    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/papa91/common/RealNameCheckInfo;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/papa91/common/RealNameCheckInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->m(Z)Z

    if-eqz p2, :cond_6

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6

    .line 4
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/common/RealNameCheckInfo;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isPopup()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getStatus()I

    move-result p2

    if-nez p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$v;->a:Landroid/app/Activity;

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object v0, Lcom/papa/sim/statistic/Event;->antiAddtionWindowUp:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$v;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 9
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$v;->a:Landroid/app/Activity;

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object v0, Lcom/papa/sim/statistic/Event;->realNameDisplayWindow:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$v;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$v;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$v;->c:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iget v3, p0, Lcom/join/mgps/Util/UtilsMy$v;->d:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$v;->e:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$v;->f:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->getType()I

    move-result v5

    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$v;->f:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->getAction()I

    move-result v6

    iget-object v7, p0, Lcom/join/mgps/Util/UtilsMy$v;->b:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/join/mgps/Util/UtilsMy;->n(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILjava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$v;->a:Landroid/app/Activity;

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object v1, Lcom/papa/sim/statistic/Event;->nonageAstrictHint:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/Util/UtilsMy$v;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 13
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->isPopup()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_3

    .line 14
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$v;->a:Landroid/app/Activity;

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    sget-object v0, Lcom/papa/sim/statistic/Event;->realNameUpWindows:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$v;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 15
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$v;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$v;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/Util/UtilsMy$v;->c:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iget v5, p0, Lcom/join/mgps/Util/UtilsMy$v;->d:I

    iget-object v6, p0, Lcom/join/mgps/Util/UtilsMy$v;->e:Lcom/join/mgps/dto/AccountBean;

    iget-object v7, p0, Lcom/join/mgps/Util/UtilsMy$v;->f:Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    new-instance v8, Lcom/join/mgps/Util/l2;

    move-object v0, v8

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/Util/l2;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/papa91/common/RealNameCheckInfo;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILcom/join/mgps/dto/AccountBean;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    invoke-static {p2, p1, v8}, Lcom/join/mgps/Util/UtilsMy;->o(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 17
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$v;->c:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    if-eqz p2, :cond_5

    .line 18
    iget v0, p0, Lcom/join/mgps/Util/UtilsMy$v;->d:I

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(II)V

    goto :goto_0

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$v;->c:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    if-eqz p1, :cond_6

    .line 20
    iget p2, p0, Lcom/join/mgps/Util/UtilsMy$v;->d:I

    invoke-interface {p1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onFail(I)V

    :cond_6
    :goto_0
    return-void
.end method
