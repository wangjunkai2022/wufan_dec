.class Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ScreenShortListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenShortAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;

    .line 2
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;->access$000(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    iget-object v1, v1, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;

    invoke-virtual {v1}, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->getSmallPicPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;->access$000(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    iget-object p2, p2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0566

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;

    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;Landroid/view/View;)V

    .line 3
    invoke-static {p2}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;->access$000(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$MYHolder;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-object p2
.end method
