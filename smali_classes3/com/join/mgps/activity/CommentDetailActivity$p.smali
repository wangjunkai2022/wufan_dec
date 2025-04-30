.class Lcom/join/mgps/activity/CommentDetailActivity$p;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$p;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$p;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->Q0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$p;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v2, p1, Lcom/join/mgps/activity/CommentDetailActivity;->p:Ljava/lang/String;

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
