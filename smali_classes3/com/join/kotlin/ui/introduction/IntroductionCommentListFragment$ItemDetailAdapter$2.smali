.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;
.super Ljava/lang/Object;
.source "IntroductionCommentListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->onBindViewHolder(Lcom/join/mgps/base/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

.field final synthetic val$item:Lcom/join/mgps/dto/BbsCommentListBean;

.field final synthetic val$iv_more:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;Landroid/widget/ImageView;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;->this$1:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;

    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;->val$iv_more:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;->val$item:Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;->val$iv_more:Landroid/widget/ImageView;

    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2$1;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2$1;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
