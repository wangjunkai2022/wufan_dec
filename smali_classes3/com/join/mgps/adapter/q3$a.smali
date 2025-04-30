.class Lcom/join/mgps/adapter/q3$a;
.super Ljava/lang/Object;
.source "NowWufunAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/q3;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/TodayWufunEverday;

.field final synthetic b:Lcom/join/mgps/adapter/q3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/TodayWufunEverday;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/q3$a;->b:Lcom/join/mgps/adapter/q3;

    iput-object p2, p0, Lcom/join/mgps/adapter/q3$a;->a:Lcom/join/mgps/dto/TodayWufunEverday;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object p1, p0, Lcom/join/mgps/adapter/q3$a;->b:Lcom/join/mgps/adapter/q3;

    invoke-static {p1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/join/mgps/adapter/q3$a;->a:Lcom/join/mgps/dto/TodayWufunEverday;

    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunEverday;->getGame_id()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/join/mgps/adapter/q3$a;->a:Lcom/join/mgps/dto/TodayWufunEverday;

    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunEverday;->getTpl_type()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/adapter/q3$a;->a:Lcom/join/mgps/dto/TodayWufunEverday;

    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunEverday;->getSp_tpl_two_position()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
