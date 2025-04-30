.class Lcom/join/mgps/activity/GameCommentActivity_$m;
.super Ljava/lang/Object;
.source "GameCommentActivity_.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameCommentActivity_;->onViewChanged(Li3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameCommentActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameCommentActivity_;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity_$m;->a:Lcom/join/mgps/activity/GameCommentActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameCommentActivity_$m;->a:Lcom/join/mgps/activity/GameCommentActivity_;

    invoke-virtual {p1}, Lcom/join/mgps/activity/GameCommentActivity;->back_image()V

    return-void
.end method
