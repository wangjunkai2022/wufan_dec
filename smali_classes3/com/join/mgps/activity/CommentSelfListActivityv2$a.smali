.class Lcom/join/mgps/activity/CommentSelfListActivityv2$a;
.super Ljava/lang/Object;
.source "CommentSelfListActivityv2.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentSelfListActivityv2;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CommentSelfListActivityv2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentSelfListActivityv2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$a;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$a;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    invoke-virtual {v0}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->K0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/CommentSelfListActivityv2$a;->a:Lcom/join/mgps/activity/CommentSelfListActivityv2;

    iget v1, v0, Lcom/join/mgps/activity/CommentSelfListActivityv2;->j:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CommentSelfListActivityv2;->I0(I)V

    :cond_0
    return-void
.end method
