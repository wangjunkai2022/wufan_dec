.class Lcom/join/mgps/activity/ForumActivity$a;
.super Ljava/lang/Object;
.source "ForumActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumActivity;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity$a;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$a;->a:Lcom/join/mgps/activity/ForumActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumActivity;->y:Lcom/join/mgps/customview/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$a;->a:Lcom/join/mgps/activity/ForumActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumActivity;->y:Lcom/join/mgps/customview/h;

    invoke-virtual {p1}, Lcom/join/mgps/customview/h;->dismiss()V

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$a;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumActivity;->d1()V

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$a;->a:Lcom/join/mgps/activity/ForumActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumActivity;->r:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity_;->U1(Landroid/content/Context;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/ForumActivity$a;->a:Lcom/join/mgps/activity/ForumActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/ForumActivity;->B:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumGroupIndexTab;->getType_id()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->g(I)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/ForumActivity$a;->a:Lcom/join/mgps/activity/ForumActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/ForumActivity;->r:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->f(Ljava/lang/String;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    move-result-object p1

    iget-object p2, p0, Lcom/join/mgps/activity/ForumActivity$a;->a:Lcom/join/mgps/activity/ForumActivity;

    iget p2, p2, Lcom/join/mgps/activity/ForumActivity;->o:I

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->a(I)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    move-result-object p1

    const/16 p2, 0x4444

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->startForResult(I)Lorg/androidannotations/api/builder/f;

    :cond_2
    return-void
.end method
