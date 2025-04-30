.class Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter$1;
.super Ljava/lang/Object;
.source "LuckDrawBasPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->onBindViewHolder(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

.field final synthetic val$prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;Lcom/join/mgps/activity/vipzone/bean/PrizeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter$1;->val$prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter$1;->val$prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->isHasAddAddress()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    invoke-static {v0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->access$400(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter$1;->val$prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    const-string v1, "datas"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    invoke-static {v0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->access$500(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
