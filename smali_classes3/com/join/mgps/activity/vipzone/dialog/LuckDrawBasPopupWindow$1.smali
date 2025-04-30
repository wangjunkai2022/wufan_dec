.class Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$1;
.super Ljava/lang/Object;
.source "LuckDrawBasPopupWindow.java"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$1;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$1;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget v1, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v1, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->adapter:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;

    iget v2, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->page:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->access$000(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;I)V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
