.class Lcom/join/mgps/activity/GivePraiceActivity$d;
.super Landroid/widget/BaseAdapter;
.source "GivePraiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GivePraiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GivePraiceActivity$d$b;
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/ForumProfileMessageBean;

.field final synthetic b:Lcom/join/mgps/activity/GivePraiceActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GivePraiceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget v1, v0, Lcom/join/mgps/activity/GivePraiceActivity;->q:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget v1, v0, Lcom/join/mgps/activity/GivePraiceActivity;->q:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/GivePraiceActivity;->g:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c02b7

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;

    invoke-direct {p3, p0}, Lcom/join/mgps/activity/GivePraiceActivity$d$b;-><init>(Lcom/join/mgps/activity/GivePraiceActivity$d;)V

    const v0, 0x7f090e77

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09094f

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f09113e

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->b:Landroid/widget/TextView;

    const v0, 0x7f091190

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->c:Landroid/widget/TextView;

    const v0, 0x7f09115d

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->a:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget v1, v0, Lcom/join/mgps/activity/GivePraiceActivity;->q:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 11
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumProfileMessageBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ForumProfileMessageBean;

    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->a:Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 13
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/GivePraiceActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->a:Lcom/join/mgps/dto/ForumProfileMessageBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GivePraiceActivity;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumProfileMessageBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getFrom_avatar_src()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 15
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GivePraiceActivity;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ForumProfileMessageBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getFrom_nickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/GivePraiceActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getPraise_user_ico()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 18
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getPraise_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->d:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/GivePraiceActivity$d$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity$d$a;-><init>(Lcom/join/mgps/activity/GivePraiceActivity$d;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 22
    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/activity/GivePraiceActivity;

    iget v4, v3, Lcom/join/mgps/activity/GivePraiceActivity;->q:I

    const-wide/16 v5, 0x3e8

    if-ne v4, v2, :cond_3

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->a:Lcom/join/mgps/dto/ForumProfileMessageBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getAdd_time()J

    move-result-wide v3

    goto :goto_2

    .line 24
    :cond_3
    iget-object v3, v3, Lcom/join/mgps/activity/GivePraiceActivity;->p:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getPraise_time()J

    move-result-wide v3

    :goto_2
    mul-long v3, v3, v5

    .line 25
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 26
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u65e5"

    const-string v3, "\u5e74"

    const-string v4, "\u6708"

    const-string v5, ""

    if-eqz p1, :cond_4

    .line 28
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 34
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v5

    move-object v6, v1

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    .line 35
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 36
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 37
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, " "

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 39
    iget-object p3, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->c:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 40
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->c:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 41
    :cond_6
    iget-object p1, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->c:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 42
    :cond_7
    iget-object p1, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->c:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-object p2
.end method
