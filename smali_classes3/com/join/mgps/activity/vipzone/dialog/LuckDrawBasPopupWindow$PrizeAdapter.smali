.class Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LuckDrawBasPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrizeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;

    iget p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->type:I

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->onBindViewHolder(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;I)V
    .locals 5
    .param p1    # Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$RuleHolder;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->object:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$RuleHolder;->describe:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    check-cast p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->object:Ljava/lang/Object;

    check-cast p2, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 8
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;->time:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v1, v2}, Lcom/join/mgps/Util/x;->j(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;->main:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter$1;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;Lcom/join/mgps/activity/vipzone/bean/PrizeBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 11
    :cond_2
    check-cast p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DrawPrizeHolder;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->dataMainList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DataMain;->object:Ljava/lang/Object;

    check-cast p2, Lcom/join/mgps/activity/vipzone/bean/LuckPrizeBean;

    .line 13
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DrawPrizeHolder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/LuckPrizeBean;->getPic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 14
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DrawPrizeHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/LuckPrizeBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DrawPrizeHolder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeBasHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    invoke-static {p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->access$300(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c03c8

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$RuleHolder;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$RuleHolder;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    invoke-static {p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->access$200(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c03c6

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$HistoryHolder;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    invoke-static {p2}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->access$100(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c03c7

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DrawPrizeHolder;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$PrizeAdapter;->this$0:Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow$DrawPrizeHolder;-><init>(Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;Landroid/view/View;)V

    :goto_0
    move-object p1, p2

    :goto_1
    return-object p1
.end method
