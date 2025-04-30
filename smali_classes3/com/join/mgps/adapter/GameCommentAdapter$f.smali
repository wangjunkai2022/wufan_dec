.class Lcom/join/mgps/adapter/GameCommentAdapter$f;
.super Ljava/lang/Object;
.source "GameCommentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/GameCommentAdapter;->n(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/InformationCommentBean;

.field final synthetic b:Lcom/join/mgps/adapter/GameCommentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter$f;->b:Lcom/join/mgps/adapter/GameCommentAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/GameCommentAdapter$f;->a:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter$f;->b:Lcom/join/mgps/adapter/GameCommentAdapter;

    iget-object p1, p1, Lcom/join/mgps/adapter/GameCommentAdapter;->c:Lcom/join/mgps/adapter/GameCommentAdapter$j;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter$f;->a:Lcom/join/mgps/dto/InformationCommentBean;

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/GameCommentAdapter$j;->c(Lcom/join/mgps/dto/InformationCommentBean;)V

    :cond_0
    return-void
.end method
