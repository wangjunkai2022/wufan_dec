.class Lcom/join/mgps/customview/ClouldItemView3$e;
.super Ljava/lang/Object;
.source "ClouldItemView3.java"

# interfaces
.implements Lcom/join/mgps/dialog/y$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClouldItemView3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ClouldItemView3;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClouldItemView3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClouldItemView3$e;->a:Lcom/join/mgps/customview/ClouldItemView3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/y;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClouldItemView3$e;->a:Lcom/join/mgps/customview/ClouldItemView3;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->VipArchive_buy_page:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/customview/ClouldItemView3$e;->a:Lcom/join/mgps/customview/ClouldItemView3;

    iget-object v3, v3, Lcom/join/mgps/customview/ClouldItemView3;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/ClouldItemView3$e;->a:Lcom/join/mgps/customview/ClouldItemView3;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/ClouldItemView3$e;->a:Lcom/join/mgps/customview/ClouldItemView3;

    invoke-static {v2}, Lcom/join/mgps/customview/ClouldItemView3;->a(Lcom/join/mgps/customview/ClouldItemView3;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
