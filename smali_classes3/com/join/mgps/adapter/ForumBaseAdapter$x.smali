.class Lcom/join/mgps/adapter/ForumBaseAdapter$x;
.super Ljava/lang/Object;
.source "ForumBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter;->d0(Lcom/join/mgps/dto/RecommendLabelTag;ZILjava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/RecommendLabelTag;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/adapter/ForumBaseAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/RecommendLabelTag;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$x;->d:Lcom/join/mgps/adapter/ForumBaseAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$x;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    iput p3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$x;->b:I

    iput-object p4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$x;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$x;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$x;->b:I

    const-string v2, ""

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$x;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLabelGroupActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$x;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v1

    iget v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$x;->b:I

    iget-object v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$x;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goMainLabelActivity(Landroid/content/Context;IILjava/lang/String;)V

    :goto_1
    return-void
.end method
