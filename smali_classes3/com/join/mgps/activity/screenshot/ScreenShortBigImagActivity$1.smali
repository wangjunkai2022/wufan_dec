.class Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;
.super Ljava/lang/Object;
.source "ScreenShortBigImagActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    add-int/lit8 v0, p1, 0x4

    .line 1
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    iget v1, v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->pn:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->loadListData(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->positionShow:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->message:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->getDescribe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->nameAndDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;

    invoke-virtual {v2}, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u3000\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->getAddTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
