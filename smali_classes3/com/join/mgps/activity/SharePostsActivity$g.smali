.class Lcom/join/mgps/activity/SharePostsActivity$g;
.super Ljava/lang/Object;
.source "SharePostsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SharePostsActivity;->R0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SharePostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SharePostsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity;->E0(Lcom/join/mgps/activity/SharePostsActivity;)I

    move-result p1

    if-eq p1, p3, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide p4

    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity;->G0(Lcom/join/mgps/activity/SharePostsActivity;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    cmp-long p1, p4, v0

    if-gez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f1102c9

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/SharePostsActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity;->E0(Lcom/join/mgps/activity/SharePostsActivity;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity;->H0(Lcom/join/mgps/activity/SharePostsActivity;)Landroid/widget/SimpleAdapter;

    move-result-object p2

    iget-object p4, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-static {p4}, Lcom/join/mgps/activity/SharePostsActivity;->E0(Lcom/join/mgps/activity/SharePostsActivity;)I

    move-result p4

    const/4 p5, 0x0

    invoke-static {p1, p2, p4, p5}, Lcom/join/mgps/activity/SharePostsActivity;->I0(Lcom/join/mgps/activity/SharePostsActivity;Landroid/widget/SimpleAdapter;IZ)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-static {p1, p3}, Lcom/join/mgps/activity/SharePostsActivity;->F0(Lcom/join/mgps/activity/SharePostsActivity;I)I

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$g;->a:Lcom/join/mgps/activity/SharePostsActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity;->H0(Lcom/join/mgps/activity/SharePostsActivity;)Landroid/widget/SimpleAdapter;

    move-result-object p2

    const/4 p4, 0x1

    invoke-static {p1, p2, p3, p4}, Lcom/join/mgps/activity/SharePostsActivity;->I0(Lcom/join/mgps/activity/SharePostsActivity;Landroid/widget/SimpleAdapter;IZ)V

    :cond_2
    return-void
.end method
