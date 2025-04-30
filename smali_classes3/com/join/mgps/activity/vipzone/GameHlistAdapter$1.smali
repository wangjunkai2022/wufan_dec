.class Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;
.super Ljava/lang/Object;
.source "GameHlistAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/GameHlistAdapter;

.field final synthetic val$iconGame:Lcom/join/mgps/activity/vipzone/bean/IconGame;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/GameHlistAdapter;Lcom/join/mgps/activity/vipzone/bean/IconGame;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;->this$0:Lcom/join/mgps/activity/vipzone/GameHlistAdapter;

    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;->val$iconGame:Lcom/join/mgps/activity/vipzone/bean/IconGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;->this$0:Lcom/join/mgps/activity/vipzone/GameHlistAdapter;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;->val$iconGame:Lcom/join/mgps/activity/vipzone/bean/IconGame;

    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/bean/IconGame;->getGame_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter$1;->this$0:Lcom/join/mgps/activity/vipzone/GameHlistAdapter;

    iget v2, v2, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;->from:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
