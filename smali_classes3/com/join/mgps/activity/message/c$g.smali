.class Lcom/join/mgps/activity/message/c$g;
.super Landroid/widget/BaseAdapter;
.source "MessagePriaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/message/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/c$g$h;,
        Lcom/join/mgps/activity/message/c$g$g;,
        Lcom/join/mgps/activity/message/c$g$i;,
        Lcom/join/mgps/activity/message/c$g$e;,
        Lcom/join/mgps/activity/message/c$g$f;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/activity/message/c;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/message/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/c$g;->b:Lcom/join/mgps/activity/message/c;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/message/c$g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c$g;->b:Lcom/join/mgps/activity/message/c;

    iget-object v0, v0, Lcom/join/mgps/activity/message/c;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c$g;->b:Lcom/join/mgps/activity/message/c;

    iget-object v0, v0, Lcom/join/mgps/activity/message/c;->q:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/c$g;->b:Lcom/join/mgps/activity/message/c;

    iget-object v0, v0, Lcom/join/mgps/activity/message/c;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/message/c$h;

    iget p1, p1, Lcom/join/mgps/activity/message/c$h;->b:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/activity/message/c$g;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_10

    const/4 v5, 0x2

    const-string v6, ":"

    const/4 v7, 0x0

    if-eq v2, v5, :cond_9

    const/4 v5, 0x3

    const-string v8, "@"

    if-eq v2, v5, :cond_6

    const/4 v5, 0x4

    if-eq v2, v5, :cond_4

    const/4 v5, 0x5

    if-eq v2, v5, :cond_0

    goto/16 :goto_a

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget-object v2, v1, Lcom/join/mgps/activity/message/c$g;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0c010e

    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3
    new-instance v3, Lcom/join/mgps/activity/message/c$g$h;

    invoke-direct {v3, v1}, Lcom/join/mgps/activity/message/c$g$h;-><init>(Lcom/join/mgps/activity/message/c$g;)V

    const v5, 0x7f09094f

    .line 4
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v3, Lcom/join/mgps/activity/message/c$g$h;->a:Landroid/widget/LinearLayout;

    const v5, 0x7f09115d

    .line 5
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/activity/message/c$g$h;->b:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/join/mgps/activity/message/c$g$h;

    move-object/from16 v2, p2

    .line 8
    :goto_0
    iget-object v5, v1, Lcom/join/mgps/activity/message/c$g;->b:Lcom/join/mgps/activity/message/c;

    iget-object v5, v5, Lcom/join/mgps/activity/message/c;->q:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/message/c$h;

    iget-object v0, v0, Lcom/join/mgps/activity/message/c$h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v9, "\u539f\u6587\uff1a"

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 11
    array-length v6, v5

    if-le v6, v4, :cond_2

    .line 12
    aget-object v4, v5, v4

    goto :goto_1

    .line 13
    :cond_2
    aget-object v4, v5, v7

    .line 14
    :goto_1
    iget-object v5, v3, Lcom/join/mgps/activity/message/c$g$h;->b:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v4, v3, Lcom/join/mgps/activity/message/c$g$h;->b:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_2
    iget-object v3, v3, Lcom/join/mgps/activity/message/c$g$h;->a:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/activity/message/c$g$d;

    invoke-direct {v4, v1, v0}, Lcom/join/mgps/activity/message/c$g$d;-><init>(Lcom/join/mgps/activity/message/c$g;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b

    :cond_4
    if-nez p2, :cond_5

    .line 17
    iget-object v2, v1, Lcom/join/mgps/activity/message/c$g;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0c010d

    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 18
    new-instance v3, Lcom/join/mgps/activity/message/c$g$g;

    invoke-direct {v3, v1}, Lcom/join/mgps/activity/message/c$g$g;-><init>(Lcom/join/mgps/activity/message/c$g;)V

    const v5, 0x7f09112e

    .line 19
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/activity/message/c$g$g;->a:Landroid/widget/TextView;

    const v5, 0x7f090019

    .line 20
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v3, Lcom/join/mgps/activity/message/c$g$g;->b:Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/join/mgps/activity/message/c$g$g;

    move-object/from16 v2, p2

    .line 23
    :goto_3
    iget-object v5, v1, Lcom/join/mgps/activity/message/c$g;->b:Lcom/join/mgps/activity/message/c;

    iget-object v5, v5, Lcom/join/mgps/activity/message/c;->q:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/message/c$h;

    iget-object v0, v0, Lcom/join/mgps/activity/message/c$h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 24
    iget-object v5, v3, Lcom/join/mgps/activity/message/c$g$g;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v7, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v3, v3, Lcom/join/mgps/activity/message/c$g$g;->b:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/join/mgps/activity/message/c$g$c;

    invoke-direct {v4, v1, v0}, Lcom/join/mgps/activity/message/c$g$c;-><init>(Lcom/join/mgps/activity/message/c$g;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b

    :cond_6
    if-nez p2, :cond_7

    .line 26
    iget-object v2, v1, Lcom/join/mgps/activity/message/c$g;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0c0110

    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 27
    new-instance v3, Lcom/join/mgps/activity/message/c$g$i;

    invoke-direct {v3, v1}, Lcom/join/mgps/activity/message/c$g$i;-><init>(Lcom/join/mgps/activity/message/c$g;)V

    const v5, 0x7f090d1a

    .line 28
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/activity/message/c$g$i;->a:Landroid/widget/TextView;

    const v5, 0x7f090d71

    .line 29
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v3, Lcom/join/mgps/activity/message/c$g$i;->b:Landroid/widget/RelativeLayout;

    .line 30
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 31
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/join/mgps/activity/message/c$g$i;

    move-object/from16 v2, p2

    .line 32
    :goto_4
    iget-object v5, v1, Lcom/join/mgps/activity/message/c$g;->b:Lcom/join/mgps/activity/message/c;

    iget-object v5, v5, Lcom/join/mgps/activity/message/c;->q:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/message/c$h;

    iget-object v0, v0, Lcom/join/mgps/activity/message/c$h;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 33
    :try_start_0
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->getReply_text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->getReply_text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    .line 35
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->getReply_text()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v7

    .line 36
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    .line 37
    iget-object v4, v3, Lcom/join/mgps/activity/message/c$g$i;->a:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<font color=\'#3CA4FD\'>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "</font><font color=\'#000000\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</font>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 38
    :cond_8
    iget-object v0, v3, Lcom/join/mgps/activity/message/c$g$i;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->getReply_text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :goto_5
    iget-object v0, v3, Lcom/join/mgps/activity/message/c$g$i;->b:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/join/mgps/activity/message/c$g$b;

    invoke-direct {v3, v1, v5}, Lcom/join/mgps/activity/message/c$g$b;-><init>(Lcom/join/mgps/activity/message/c$g;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b

    :cond_9
    if-nez p2, :cond_a

    .line 41
    iget-object v2, v1, Lcom/join/mgps/activity/message/c$g;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0c010b

    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 42
    new-instance v3, Lcom/join/mgps/activity/message/c$g$e;

    invoke-direct {v3, v1}, Lcom/join/mgps/activity/message/c$g$e;-><init>(Lcom/join/mgps/activity/message/c$g;)V

    const v5, 0x7f090d61

    .line 43
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v3, Lcom/join/mgps/activity/message/c$g$e;->a:Landroid/widget/RelativeLayout;

    const v5, 0x7f090e77

    .line 44
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v5, v3, Lcom/join/mgps/activity/message/c$g$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f09113e

    .line 45
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/activity/message/c$g$e;->c:Landroid/widget/TextView;

    const v5, 0x7f09116d

    .line 46
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/activity/message/c$g$e;->e:Landroid/widget/TextView;

    const v5, 0x7f091190

    .line 47
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/activity/message/c$g$e;->d:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_6

    .line 49
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/join/mgps/activity/message/c$g$e;

    move-object/from16 v2, p2

    .line 50
    :goto_6
    iget-object v5, v1, Lcom/join/mgps/activity/message/c$g;->b:Lcom/join/mgps/activity/message/c;

    iget-object v5, v5, Lcom/join/mgps/activity/message/c;->q:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/message/c$h;

    iget-object v0, v0, Lcom/join/mgps/activity/message/c$h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 51
    iget-object v5, v3, Lcom/join/mgps/activity/message/c$g$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_user_ico()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 52
    iget-object v5, v3, Lcom/join/mgps/activity/message/c$g$e;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_title()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v5, v3, Lcom/join/mgps/activity/message/c$g$e;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_title()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 56
    new-instance v10, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_time()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 57
    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "\u65e5"

    const-string v11, "\u5e74"

    const-string v12, "\u6708"

    const-string v13, ""

    if-eqz v5, :cond_b

    .line 59
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 60
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v5, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 61
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v4

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 62
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v7, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 p2, v2

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 p1, v2

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    move-object/from16 v2, p1

    goto :goto_7

    :cond_b
    move-object/from16 p2, v2

    move-object v2, v13

    move-object v4, v2

    move-object v7, v4

    move-object v8, v7

    move-object v14, v8

    .line 66
    :goto_7
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 67
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 68
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 70
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_c
    const/4 v4, 0x1

    .line 71
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    const-string v4, "\u5206"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 72
    :goto_8
    iget-object v4, v3, Lcom/join/mgps/activity/message/c$g$e;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 73
    :cond_d
    iget-object v2, v3, Lcom/join/mgps/activity/message/c$g$e;->d:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 74
    :cond_e
    iget-object v2, v3, Lcom/join/mgps/activity/message/c$g$e;->d:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 75
    :cond_f
    iget-object v2, v3, Lcom/join/mgps/activity/message/c$g$e;->d:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_9
    iget-object v2, v3, Lcom/join/mgps/activity/message/c$g$e;->a:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/join/mgps/activity/message/c$g$a;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/activity/message/c$g$a;-><init>(Lcom/join/mgps/activity/message/c$g;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    :cond_10
    if-nez p2, :cond_11

    .line 77
    iget-object v0, v1, Lcom/join/mgps/activity/message/c$g;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c010c

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    new-instance v2, Lcom/join/mgps/activity/message/c$g$f;

    invoke-direct {v2, v1}, Lcom/join/mgps/activity/message/c$g$f;-><init>(Lcom/join/mgps/activity/message/c$g;)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    goto :goto_b

    .line 80
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/message/c$g$f;

    :goto_a
    move-object/from16 v2, p2

    :goto_b
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
