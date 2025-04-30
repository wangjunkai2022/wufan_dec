.class Lcom/join/mgps/Util/UtilsMy$w;
.super Ljava/lang/Object;
.source "UtilsMy.java"

# interfaces
.implements Lcom/papa91/arc/interfaces/RealNameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->W2(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILjava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$w;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$w;->b:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iput p3, p0, Lcom/join/mgps/Util/UtilsMy$w;->c:I

    iput-object p4, p0, Lcom/join/mgps/Util/UtilsMy$w;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILandroid/content/Context;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/join/mgps/Util/UtilsMy$w;->b(Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILandroid/content/Context;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method

.method private static synthetic b(Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILandroid/content/Context;Lcom/papa91/view/RealNameLoginDialog;ILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/bean/PopwindowBean;->isNoAge()Z

    move-result p0

    const/4 p4, 0x0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1, p2, p4}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(II)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p2, p4, p6}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p6}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    .line 6
    instance-of p0, p3, Landroid/app/Activity;

    if-eqz p0, :cond_2

    .line 7
    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$w;->b:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/join/mgps/Util/UtilsMy$w;->c:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$w;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->clickClosedRealNameWindow:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$w;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 5
    invoke-virtual {p2}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$w;->a:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 7
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/Event;->realNameDisplayWindow:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$w;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v2, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/Util/UtilsMy$w;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/papa/sim/statistic/Event;->realNameClickSubmit:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/Util/UtilsMy$w;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v1, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$w;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_1
    return-void
.end method

.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/app/Dialog;Lcom/papa91/arc/bean/PopwindowBean;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/papa91/arc/bean/PopwindowBean;->isPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$w;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$w;->b:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    iget v2, p0, Lcom/join/mgps/Util/UtilsMy$w;->c:I

    new-instance v3, Lcom/join/mgps/Util/n2;

    invoke-direct {v3, p2, v1, v2, v0}, Lcom/join/mgps/Util/n2;-><init>(Lcom/papa91/arc/bean/PopwindowBean;Lcom/join/mgps/activity/arena/GameRoomActivity$x;ILandroid/content/Context;)V

    invoke-static {v0, p2, v3}, Lcom/join/mgps/Util/UtilsMy;->o(Landroid/content/Context;Lcom/papa91/arc/bean/PopwindowBean;Lcom/papa91/view/RealNameLoginDialog$OnButnClickLienster;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/Util/UtilsMy$w;->b:Lcom/join/mgps/activity/arena/GameRoomActivity$x;

    if-eqz p2, :cond_1

    .line 4
    iget v0, p0, Lcom/join/mgps/Util/UtilsMy$w;->c:I

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity$x;->onSuccess(II)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
