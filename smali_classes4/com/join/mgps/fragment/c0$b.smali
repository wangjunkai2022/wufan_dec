.class Lcom/join/mgps/fragment/c0$b;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/c0;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/c0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/c0$b;->a:Lcom/join/mgps/fragment/c0;

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
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    instance-of p2, p2, Lcom/join/mgps/adapter/n;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/join/mgps/fragment/c0$b;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p2

    iget-object p4, p0, Lcom/join/mgps/fragment/c0$b;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-static {p4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p4

    invoke-virtual {p4}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object p4

    const-string p5, "groupEnter"

    invoke-virtual {p2, p4, p5}, Lcom/papa/sim/statistic/p;->f2(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/adapter/n;

    invoke-virtual {p2, p3}, Lcom/join/mgps/adapter/n;->a(I)Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;

    move-result-object p2

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;->getFid()I

    move-result p2

    const-string p4, "discovery"

    invoke-virtual {p3, p1, p2, p4}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
