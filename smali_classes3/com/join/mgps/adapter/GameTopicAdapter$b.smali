.class Lcom/join/mgps/adapter/GameTopicAdapter$b;
.super Ljava/lang/Object;
.source "GameTopicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/GameTopicAdapter;->n(Landroid/view/View;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/GameTopicAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/GameTopicAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter$b;->c:Lcom/join/mgps/adapter/GameTopicAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/GameTopicAdapter$b;->a:Ljava/lang/String;

    iput p3, p0, Lcom/join/mgps/adapter/GameTopicAdapter$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/GameTopicAdapter$b;->c:Lcom/join/mgps/adapter/GameTopicAdapter;

    iget-object v0, p0, Lcom/join/mgps/adapter/GameTopicAdapter$b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/adapter/GameTopicAdapter$b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/join/mgps/adapter/GameTopicAdapter;->a(Lcom/join/mgps/adapter/GameTopicAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
