.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "IntroductionCommentListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/BbsCommentListBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    const p1, 0x7f0c0315

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f091237

    invoke-virtual {v1, v4, v3}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    const v3, 0x7f090e7b

    .line 3
    invoke-virtual {v1, v3}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    const v3, 0x7f0902eb

    .line 4
    invoke-virtual {v1, v3}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/customview/textview/MovementTextView;

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v5, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-boolean v6, v5, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isVideo:Z

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v8, v6, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->regText:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getNickname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getRnickname()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object v6, v4

    invoke-virtual/range {v5 .. v11}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->matchText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    :cond_0
    new-instance v5, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$1;

    invoke-direct {v5, v0, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$1;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;Lcom/join/mgps/dto/BbsCommentListBean;)V

    invoke-virtual {v4, v5}, Lcom/join/mgps/customview/textview/MovementTextView;->setClickTextListener(Lcom/join/mgps/customview/textview/MovementTextView$a;)V

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getLike()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f091185

    invoke-virtual {v1, v5, v4}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getPraise()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v6, "#3392FF"

    const-string v7, "#575F79"

    const v8, 0x7f09081f

    if-eqz v4, :cond_2

    const v4, 0x7f0805fa

    .line 11
    invoke-virtual {v1, v8, v4}, Lcom/join/mgps/base/b;->x(II)Lcom/join/mgps/base/b;

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getPraise()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_0
    invoke-virtual {v1, v5, v4}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    goto :goto_2

    :cond_2
    const v4, 0x7f0805fb

    .line 13
    invoke-virtual {v1, v8, v4}, Lcom/join/mgps/base/b;->x(II)Lcom/join/mgps/base/b;

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getPraise()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_1
    invoke-virtual {v1, v5, v4}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    :goto_2
    const/4 v4, 0x1

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v8, v5, v6

    .line 15
    invoke-virtual {v1, v5}, Lcom/join/mgps/base/b;->c([I)Lcom/join/mgps/base/b;

    new-array v5, v4, [I

    const v7, 0x7f090813

    aput v7, v5, v6

    .line 16
    invoke-virtual {v1, v5}, Lcom/join/mgps/base/b;->c([I)Lcom/join/mgps/base/b;

    new-array v5, v4, [I

    const v7, 0x7f09029f

    aput v7, v5, v6

    .line 17
    invoke-virtual {v1, v5}, Lcom/join/mgps/base/b;->c([I)Lcom/join/mgps/base/b;

    const v5, 0x7f090957

    .line 18
    invoke-virtual {v1, v5}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getReplyList()Ljava/util/List;

    move-result-object v7

    const v8, 0x7f090285

    if-eqz v7, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getReplyList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 21
    invoke-virtual {v1, v8, v4}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 22
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getReplyList()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getReplyList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-interface {v7, v6, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7

    const/4 v8, 0x0

    .line 23
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 24
    iget-object v10, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0c0318

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 25
    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/customview/textview/MovementTextView;

    const v12, 0x7f090886

    .line 26
    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 27
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Lcom/join/mgps/dto/BbsCommentListBean;

    .line 28
    invoke-virtual {v14}, Lcom/join/mgps/dto/BbsCommentListBean;->getRnickname()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 29
    iget-object v12, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    const v13, 0x7f110170

    invoke-virtual {v12, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/join/mgps/dto/BbsCommentListBean;->getNickname()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v6

    invoke-virtual {v14}, Lcom/join/mgps/dto/BbsCommentListBean;->getMsg()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v4

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 30
    :cond_4
    iget-object v12, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    const v13, 0x7f110171

    invoke-virtual {v12, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/join/mgps/dto/BbsCommentListBean;->getNickname()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v6

    invoke-virtual {v14}, Lcom/join/mgps/dto/BbsCommentListBean;->getRnickname()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v4

    invoke-virtual {v14}, Lcom/join/mgps/dto/BbsCommentListBean;->getMsg()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v9

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :goto_4
    iget-object v12, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-boolean v13, v12, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->isVideo:Z

    if-eqz v13, :cond_5

    .line 32
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    iget-object v13, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v13, v13, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->regText:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/join/mgps/dto/BbsCommentListBean;->getNickname()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v14}, Lcom/join/mgps/dto/BbsCommentListBean;->getRnickname()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v20, v13

    move-object v13, v11

    move-object v3, v14

    move-object/from16 v14, v16

    move-object v9, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    invoke-virtual/range {v12 .. v18}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->matchText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_5
    move-object v3, v14

    move-object v9, v15

    .line 33
    :goto_5
    new-instance v12, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$2;

    invoke-direct {v12, v0, v2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$2;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;Lcom/join/mgps/dto/BbsCommentListBean;)V

    invoke-virtual {v11, v12}, Lcom/join/mgps/customview/textview/MovementTextView;->setClickTextListener(Lcom/join/mgps/customview/textview/MovementTextView$a;)V

    .line 34
    new-instance v11, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$3;

    invoke-direct {v11, v0, v3}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter$3;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;Lcom/join/mgps/dto/BbsCommentListBean;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v8, v3, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_6

    const/16 v3, 0x8

    .line 36
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 37
    :cond_6
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :goto_6
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    const v3, 0x7f0902eb

    const/4 v9, 0x2

    goto/16 :goto_3

    .line 39
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getReplies()I

    move-result v3

    const v5, 0x7f09116c

    const/4 v7, 0x2

    if-le v3, v7, :cond_8

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u67e5\u770b\u66f4\u591a"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getReplies()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6761\u56de\u590d"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 41
    invoke-virtual {v1, v5, v4}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    goto :goto_7

    .line 42
    :cond_8
    invoke-virtual {v1, v5, v6}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    goto :goto_7

    .line 43
    :cond_9
    invoke-virtual {v1, v8, v6}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    :goto_7
    return-void
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/BbsCommentListBean;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemAdapter;->convert(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/BbsCommentListBean;)V

    return-void
.end method
