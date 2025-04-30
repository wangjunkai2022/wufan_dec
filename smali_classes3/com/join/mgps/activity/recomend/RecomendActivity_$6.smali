.class Lcom/join/mgps/activity/recomend/RecomendActivity_$6;
.super Ljava/lang/Object;
.source "RecomendActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/RecomendActivity_;->updateUI(Ljava/util/List;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/RecomendActivity_;

.field final synthetic val$protocol:Lcom/join/mgps/activity/recomend/UserProtocolBean;

.field final synthetic val$recomentBeans:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/RecomendActivity_;Ljava/util/List;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_$6;->this$0:Lcom/join/mgps/activity/recomend/RecomendActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_$6;->val$recomentBeans:Ljava/util/List;

    iput-object p3, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_$6;->val$protocol:Lcom/join/mgps/activity/recomend/UserProtocolBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_$6;->this$0:Lcom/join/mgps/activity/recomend/RecomendActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_$6;->val$recomentBeans:Ljava/util/List;

    iget-object v2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity_$6;->val$protocol:Lcom/join/mgps/activity/recomend/UserProtocolBean;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/recomend/RecomendActivity_;->access$301(Lcom/join/mgps/activity/recomend/RecomendActivity_;Ljava/util/List;Lcom/join/mgps/activity/recomend/UserProtocolBean;)V

    return-void
.end method
