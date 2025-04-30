.class Lcom/join/mgps/activity/message/a$g;
.super Landroid/widget/BaseAdapter;
.source "CommunityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/message/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/a$g$h;,
        Lcom/join/mgps/activity/message/a$g$g;,
        Lcom/join/mgps/activity/message/a$g$i;,
        Lcom/join/mgps/activity/message/a$g$e;,
        Lcom/join/mgps/activity/message/a$g$f;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/activity/message/a;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/message/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/a$g;->b:Lcom/join/mgps/activity/message/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/message/a$g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a$g;->b:Lcom/join/mgps/activity/message/a;

    iget-object v0, v0, Lcom/join/mgps/activity/message/a;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a$g;->b:Lcom/join/mgps/activity/message/a;

    iget-object v0, v0, Lcom/join/mgps/activity/message/a;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a$g;->b:Lcom/join/mgps/activity/message/a;

    iget-object v0, v0, Lcom/join/mgps/activity/message/a;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/message/a$i;

    iget p1, p1, Lcom/join/mgps/activity/message/a$i;->b:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/activity/message/a$g;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_f

    const/4 v5, 0x2

    const/4 v6, 0x4

    const-string v7, ""

    if-eq v2, v5, :cond_7

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    if-eq v2, v6, :cond_3

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    goto/16 :goto_9

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget-object v2, v0, Lcom/join/mgps/activity/message/a$g;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c010e

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3
    new-instance v3, Lcom/join/mgps/activity/message/a$g$h;

    invoke-direct {v3, v0}, Lcom/join/mgps/activity/message/a$g$h;-><init>(Lcom/join/mgps/activity/message/a$g;)V

    const v4, 0x7f09094f

    .line 4
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/join/mgps/activity/message/a$g$h;->a:Landroid/widget/LinearLayout;

    const v4, 0x7f09115d

    .line 5
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/activity/message/a$g$h;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/join/mgps/activity/message/a$g$h;

    move-object/from16 v2, p2

    .line 8
    :goto_0
    iget-object v4, v0, Lcom/join/mgps/activity/message/a$g;->b:Lcom/join/mgps/activity/message/a;

    iget-object v4, v4, Lcom/join/mgps/activity/message/a;->n:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/message/a$i;

    iget-object v1, v1, Lcom/join/mgps/activity/message/a$i;->a:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 12
    :goto_1
    iget-object v5, v3, Lcom/join/mgps/activity/message/a$g$h;->b:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u539f\u6587\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v3, v3, Lcom/join/mgps/activity/message/a$g$h;->a:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/activity/message/a$g$d;

    invoke-direct {v4, v0, v1}, Lcom/join/mgps/activity/message/a$g$d;-><init>(Lcom/join/mgps/activity/message/a$g;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    :cond_3
    if-nez p2, :cond_4

    .line 14
    iget-object v2, v0, Lcom/join/mgps/activity/message/a$g;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c010d

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 15
    new-instance v3, Lcom/join/mgps/activity/message/a$g$g;

    invoke-direct {v3, v0}, Lcom/join/mgps/activity/message/a$g$g;-><init>(Lcom/join/mgps/activity/message/a$g;)V

    const v4, 0x7f09112e

    .line 16
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/activity/message/a$g$g;->a:Landroid/widget/TextView;

    const v4, 0x7f090019

    .line 17
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/join/mgps/activity/message/a$g$g;->b:Landroid/widget/LinearLayout;

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/join/mgps/activity/message/a$g$g;

    move-object/from16 v2, p2

    .line 19
    :goto_2
    iget-object v4, v0, Lcom/join/mgps/activity/message/a$g;->b:Lcom/join/mgps/activity/message/a;

    iget-object v4, v4, Lcom/join/mgps/activity/message/a;->n:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/message/a$i;

    iget-object v1, v1, Lcom/join/mgps/activity/message/a$i;->a:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 20
    iget-object v4, v3, Lcom/join/mgps/activity/message/a$g$g;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v4, v0, Lcom/join/mgps/activity/message/a$g;->b:Lcom/join/mgps/activity/message/a;

    iget-object v5, v3, Lcom/join/mgps/activity/message/a$g$g;->a:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/join/mgps/activity/message/a;->N(Lcom/join/mgps/activity/message/a;Landroid/widget/TextView;)V

    .line 23
    iget-object v3, v3, Lcom/join/mgps/activity/message/a$g$g;->b:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/activity/message/a$g$c;

    invoke-direct {v4, v0, v1}, Lcom/join/mgps/activity/message/a$g$c;-><init>(Lcom/join/mgps/activity/message/a$g;Lcom/join/mgps/dto/ForumProfileMessageBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    :cond_5
    if-nez p2, :cond_6

    .line 24
    iget-object v2, v0, Lcom/join/mgps/activity/message/a$g;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c0110

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 25
    new-instance v3, Lcom/join/mgps/activity/message/a$g$i;

    invoke-direct {v3, v0}, Lcom/join/mgps/activity/message/a$g$i;-><init>(Lcom/join/mgps/activity/message/a$g;)V

    const v4, 0x7f090d1a

    .line 26
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/activity/message/a$g$i;->a:Landroid/widget/TextView;

    const v4, 0x7f090d71

    .line 27
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v3, Lcom/join/mgps/activity/message/a$g$i;->b:Landroid/widget/RelativeLayout;

    .line 28
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 29
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/join/mgps/activity/message/a$g$i;

    move-object/from16 v2, p2

    .line 30
    :goto_3
    iget-object v4, v0, Lcom/join/mgps/activity/message/a$g;->b:Lcom/join/mgps/activity/message/a;

    iget-object v4, v4, Lcom/join/mgps/activity/message/a;->n:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/message/a$i;

    iget-object v1, v1, Lcom/join/mgps/activity/message/a$i;->a:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 31
    iget-object v4, v3, Lcom/join/mgps/activity/message/a$g$i;->a:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'#3CA4FD\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getReply()Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":  </font><font color=\'#000000\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getReply()Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v3, v3, Lcom/join/mgps/activity/message/a$g$i;->b:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/join/mgps/activity/message/a$g$b;

    invoke-direct {v4, v0, v1}, Lcom/join/mgps/activity/message/a$g$b;-><init>(Lcom/join/mgps/activity/message/a$g;Lcom/join/mgps/dto/ForumProfileMessageBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    :cond_7
    if-nez p2, :cond_8

    .line 33
    iget-object v2, v0, Lcom/join/mgps/activity/message/a$g;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0c010b

    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 34
    new-instance v3, Lcom/join/mgps/activity/message/a$g$e;

    invoke-direct {v3, v0}, Lcom/join/mgps/activity/message/a$g$e;-><init>(Lcom/join/mgps/activity/message/a$g;)V

    const v5, 0x7f090d61

    .line 35
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v3, Lcom/join/mgps/activity/message/a$g$e;->a:Landroid/widget/RelativeLayout;

    const v5, 0x7f090e77

    .line 36
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v5, v3, Lcom/join/mgps/activity/message/a$g$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f09113e

    .line 37
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/activity/message/a$g$e;->c:Landroid/widget/TextView;

    const v5, 0x7f09116d

    .line 38
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/activity/message/a$g$e;->e:Landroid/widget/TextView;

    const v5, 0x7f091190

    .line 39
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/activity/message/a$g$e;->d:Landroid/widget/TextView;

    .line 40
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 41
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/join/mgps/activity/message/a$g$e;

    move-object/from16 v2, p2

    .line 42
    :goto_4
    iget-object v5, v0, Lcom/join/mgps/activity/message/a$g;->b:Lcom/join/mgps/activity/message/a;

    iget-object v5, v5, Lcom/join/mgps/activity/message/a;->n:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/activity/message/a$i;

    iget-object v5, v5, Lcom/join/mgps/activity/message/a$i;->a:Ljava/lang/Object;

    check-cast v5, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 43
    iget-object v8, v3, Lcom/join/mgps/activity/message/a$g$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getFrom_avatar_src()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 44
    iget-object v8, v3, Lcom/join/mgps/activity/message/a$g$e;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getFrom_nickname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v8, v0, Lcom/join/mgps/activity/message/a$g;->b:Lcom/join/mgps/activity/message/a;

    iget-object v8, v8, Lcom/join/mgps/activity/message/a;->n:Ljava/util/List;

    add-int/2addr v1, v4

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/activity/message/a$i;

    iget v8, v8, Lcom/join/mgps/activity/message/a$i;->b:I

    if-ne v8, v6, :cond_9

    const-string v1, "\u5e16\u5b50"

    goto :goto_5

    .line 46
    :cond_9
    iget-object v6, v0, Lcom/join/mgps/activity/message/a$g;->b:Lcom/join/mgps/activity/message/a;

    iget-object v6, v6, Lcom/join/mgps/activity/message/a;->n:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/message/a$i;

    iget v1, v1, Lcom/join/mgps/activity/message/a$i;->b:I

    const-string v1, "\u4e86\u4f60"

    .line 47
    :goto_5
    iget-object v6, v3, Lcom/join/mgps/activity/message/a$g$e;->e:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u56de\u590d"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 50
    new-instance v8, Ljava/util/Date;

    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getAdd_time()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 51
    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "\u65e5"

    const-string v9, "\u5e74"

    const-string v10, "\u6708"

    if-eqz v1, :cond_a

    .line 53
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 54
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v4

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 56
    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v4

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 57
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v6, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 58
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v4

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 59
    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_a
    move-object v4, v7

    move-object v11, v4

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    .line 60
    :goto_6
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 61
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 62
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, ":"

    .line 63
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, " "

    if-eqz v6, :cond_b

    .line 64
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_b
    const/4 v8, 0x1

    .line 65
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v8

    const-string v6, "\u5206"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 66
    :goto_7
    iget-object v4, v3, Lcom/join/mgps/activity/message/a$g$e;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 67
    :cond_c
    iget-object v1, v3, Lcom/join/mgps/activity/message/a$g$e;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 68
    :cond_d
    iget-object v1, v3, Lcom/join/mgps/activity/message/a$g$e;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 69
    :cond_e
    iget-object v1, v3, Lcom/join/mgps/activity/message/a$g$e;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_8
    iget-object v1, v3, Lcom/join/mgps/activity/message/a$g$e;->a:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/join/mgps/activity/message/a$g$a;

    invoke-direct {v3, v0, v5}, Lcom/join/mgps/activity/message/a$g$a;-><init>(Lcom/join/mgps/activity/message/a$g;Lcom/join/mgps/dto/ForumProfileMessageBean;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    :cond_f
    if-nez p2, :cond_10

    .line 71
    iget-object v1, v0, Lcom/join/mgps/activity/message/a$g;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c010c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    new-instance v2, Lcom/join/mgps/activity/message/a$g$f;

    invoke-direct {v2, v0}, Lcom/join/mgps/activity/message/a$g$f;-><init>(Lcom/join/mgps/activity/message/a$g;)V

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    goto :goto_a

    .line 74
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/message/a$g$f;

    :goto_9
    move-object/from16 v2, p2

    :goto_a
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
