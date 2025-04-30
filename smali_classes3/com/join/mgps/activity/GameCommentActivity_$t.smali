.class Lcom/join/mgps/activity/GameCommentActivity_$t;
.super Ljava/lang/Object;
.source "GameCommentActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameCommentActivity_;->a1(Lcom/join/mgps/dto/InformationCommentBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/InformationCommentBean;

.field final synthetic b:Lcom/join/mgps/activity/GameCommentActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameCommentActivity_;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity_$t;->b:Lcom/join/mgps/activity/GameCommentActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/GameCommentActivity_$t;->a:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameCommentActivity_$t;->b:Lcom/join/mgps/activity/GameCommentActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/GameCommentActivity_$t;->a:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameCommentActivity_;->l1(Lcom/join/mgps/activity/GameCommentActivity_;Lcom/join/mgps/dto/InformationCommentBean;)V

    return-void
.end method
