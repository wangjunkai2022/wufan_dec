.class Lcom/join/mgps/activity/GameDetailActivity$n$d;
.super Ljava/lang/Object;
.source "GameDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$n;->a(Lcom/join/mgps/activity/GameDetailActivity$m;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic b:Lcom/join/mgps/activity/GameDetailActivity$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$n;Lcom/join/mgps/dto/GameListItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$n$d;->b:Lcom/join/mgps/activity/GameDetailActivity$n;

    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$n$d;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$n$d;->b:Lcom/join/mgps/activity/GameDetailActivity$n;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v1, p1, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$n$d;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$n$d;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$n$d;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    move-result v4

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$n$d;->b:Lcom/join/mgps/activity/GameDetailActivity$n;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget v5, p1, Lcom/join/mgps/activity/GameDetailActivity;->J:I

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
