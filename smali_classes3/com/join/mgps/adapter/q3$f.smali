.class Lcom/join/mgps/adapter/q3$f;
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
.field final synthetic a:Lcom/join/mgps/dto/TodayWufunTopic;

.field final synthetic b:Lcom/join/mgps/adapter/q3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/TodayWufunTopic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/q3$f;->b:Lcom/join/mgps/adapter/q3;

    iput-object p2, p0, Lcom/join/mgps/adapter/q3$f;->a:Lcom/join/mgps/dto/TodayWufunTopic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$f;->a:Lcom/join/mgps/dto/TodayWufunTopic;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunTopic;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/q3$f;->b:Lcom/join/mgps/adapter/q3;

    invoke-static {v1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
