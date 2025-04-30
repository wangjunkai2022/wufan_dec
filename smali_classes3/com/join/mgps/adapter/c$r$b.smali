.class Lcom/join/mgps/adapter/c$r$b;
.super Ljava/lang/Object;
.source "ChoiceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/c$r;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/TodayWufunBroadcast;

.field final synthetic b:Lcom/join/mgps/adapter/c$r;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/c$r;Lcom/join/mgps/dto/TodayWufunBroadcast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$r$b;->b:Lcom/join/mgps/adapter/c$r;

    iput-object p2, p0, Lcom/join/mgps/adapter/c$r$b;->a:Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 6
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 7
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/adapter/c$r$b;->b:Lcom/join/mgps/adapter/c$r;

    iget-object p2, p2, Lcom/join/mgps/adapter/c$r;->b:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/c$r$b;->a:Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/c$r$b;->a:Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/c$r$b;->a:Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getSp_tpl_two_position()I

    move-result v1

    iget-object v2, p0, Lcom/join/mgps/adapter/c$r$b;->a:Lcom/join/mgps/dto/TodayWufunBroadcast;

    invoke-virtual {v2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/join/mgps/adapter/c$r$b;->a(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
