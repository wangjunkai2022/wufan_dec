.class Lcom/join/mgps/activity/message/e$d;
.super Landroid/widget/BaseAdapter;
.source "NoticeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/message/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/e$d$b;,
        Lcom/join/mgps/activity/message/e$d$c;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/message/e;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/e$d;->a:Lcom/join/mgps/activity/message/e;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$d;->a:Lcom/join/mgps/activity/message/e;

    iget-object v0, v0, Lcom/join/mgps/activity/message/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$d;->a:Lcom/join/mgps/activity/message/e;

    iget-object v0, v0, Lcom/join/mgps/activity/message/e;->n:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$d;->a:Lcom/join/mgps/activity/message/e;

    iget-object v0, v0, Lcom/join/mgps/activity/message/e;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/message/e$c;

    iget p1, p1, Lcom/join/mgps/activity/message/e$c;->b:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/message/e$d;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x1

    const v1, 0x7f091190

    const v2, 0x7f091192

    const/4 v3, 0x0

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/message/e$d;->a:Lcom/join/mgps/activity/message/e;

    iget-object p2, p2, Lcom/join/mgps/activity/message/e;->h:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c04e7

    invoke-virtual {p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/join/mgps/activity/message/e$d$b;

    invoke-direct {p3, p0}, Lcom/join/mgps/activity/message/e$d$b;-><init>(Lcom/join/mgps/activity/message/e$d;)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/message/e$d$b;->b:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/message/e$d$b;->a:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/activity/message/e$d$b;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$d;->a:Lcom/join/mgps/activity/message/e;

    iget-object v0, v0, Lcom/join/mgps/activity/message/e;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/message/e$c;

    iget-object p1, p1, Lcom/join/mgps/activity/message/e$c;->a:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

    .line 9
    iget-object v0, p3, Lcom/join/mgps/activity/message/e$d$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getAdd_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p3, p3, Lcom/join/mgps/activity/message/e$d$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/message/e$d;->a:Lcom/join/mgps/activity/message/e;

    iget-object p2, p2, Lcom/join/mgps/activity/message/e;->h:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c04e6

    invoke-virtual {p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 12
    new-instance p3, Lcom/join/mgps/activity/message/e$d$c;

    invoke-direct {p3, p0}, Lcom/join/mgps/activity/message/e$d$c;-><init>(Lcom/join/mgps/activity/message/e$d;)V

    .line 13
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/message/e$d$c;->a:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/message/e$d$c;->b:Landroid/widget/TextView;

    const v0, 0x7f090e54

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/message/e$d$c;->c:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/activity/message/e$d$c;

    .line 18
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$d;->a:Lcom/join/mgps/activity/message/e;

    iget-object v0, v0, Lcom/join/mgps/activity/message/e;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/message/e$c;

    iget-object p1, p1, Lcom/join/mgps/activity/message/e$c;->a:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

    .line 19
    iget-object v0, p3, Lcom/join/mgps/activity/message/e$d$c;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getAdd_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p3, Lcom/join/mgps/activity/message/e$d$c;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/activity/message/e$d$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/message/e$d$a;-><init>(Lcom/join/mgps/activity/message/e$d;Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p3, p3, Lcom/join/mgps/activity/message/e$d$c;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
