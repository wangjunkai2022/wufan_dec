.class Lcom/join/mgps/activity/GameDetailActivity$j$c;
.super Ljava/lang/Object;
.source "GameDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$j;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/GamelistExpandableTextView;

.field final synthetic b:Lcom/join/mgps/dto/CommentBaseBean;

.field final synthetic c:Lcom/join/mgps/activity/GameDetailActivity$j;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$j;Lcom/join/mgps/customview/GamelistExpandableTextView;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->c:Lcom/join/mgps/activity/GameDetailActivity$j;

    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView;

    iput-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->b:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->c:Lcom/join/mgps/activity/GameDetailActivity$j;

    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$j;->d:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0711cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 3
    div-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->setMaxLinesOnShrink(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->b:Lcom/join/mgps/dto/CommentBaseBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$c;->a:Lcom/join/mgps/customview/GamelistExpandableTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/customview/GamelistExpandableTextView;->u(Ljava/lang/CharSequence;II)V

    return-void
.end method
