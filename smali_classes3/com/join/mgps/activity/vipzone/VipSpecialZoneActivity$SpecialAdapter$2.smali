.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;
.super Ljava/lang/Object;
.source "VipSpecialZoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->onBindViewHolder(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->lambda$onClick$1()V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->lambda$onClick$0(Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iput-object p1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag1:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 2
    iput-object p2, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag2:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 3
    iput-object p3, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag3:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    const/4 p1, 0x1

    .line 4
    iput p1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->access$000(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    return-void
.end method

.method private static synthetic lambda$onClick$1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/n0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/customview/n0;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/customview/n0;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/n0;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/n0;

    new-instance v0, Lcom/join/mgps/activity/vipzone/e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/e;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/n0;->e(Lcom/join/mgps/customview/n0$f;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/n0;

    sget-object v0, Lcom/join/mgps/activity/vipzone/d;->a:Lcom/join/mgps/activity/vipzone/d;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/n0;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/n0;

    iget-object v1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/customview/n0;->f(Landroid/view/View;Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;)V

    return-void
.end method
