.class Lcom/join/mgps/activity/message/MessageMainActivity$b;
.super Ljava/lang/Object;
.source "MessageMainActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/MessageMainActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/message/MessageMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/MessageMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$b;->a:Lcom/join/mgps/activity/message/MessageMainActivity;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$b;->a:Lcom/join/mgps/activity/message/MessageMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$b;->a:Lcom/join/mgps/activity/message/MessageMainActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->g:Lcom/join/mgps/activity/message/e;

    iput-object v0, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->f:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 3
    sget-object p1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setCommunity_surplus_number(I)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$b;->a:Lcom/join/mgps/activity/message/MessageMainActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->h:Lcom/join/mgps/activity/message/a;

    iput-object v0, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->f:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 6
    sget-object p1, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setReplay_surplus_number(I)V

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$b;->a:Lcom/join/mgps/activity/message/MessageMainActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->i:Lcom/join/mgps/activity/message/c;

    iput-object v0, p1, Lcom/join/mgps/activity/message/MessageMainActivity;->f:Landroidx/fragment/app/Fragment;

    :cond_4
    :goto_0
    return-void
.end method
