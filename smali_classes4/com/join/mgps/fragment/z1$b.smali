.class Lcom/join/mgps/fragment/z1$b;
.super Ljava/lang/Object;
.source "FriendMessageFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/z1;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/z1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/z1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/z1$b;->a:Lcom/join/mgps/fragment/z1;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z1$b;->a:Lcom/join/mgps/fragment/z1;

    iget-object v0, v0, Lcom/join/mgps/fragment/z1;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/z1$b;->a:Lcom/join/mgps/fragment/z1;

    iget-object v0, v0, Lcom/join/mgps/fragment/z1;->b:Landroid/widget/TextView;

    if-ne p1, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    if-ne p1, v2, :cond_3

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/z1$b;->a:Lcom/join/mgps/fragment/z1;

    iget-object p1, p1, Lcom/join/mgps/fragment/z1;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_3

    iget-object p1, p0, Lcom/join/mgps/fragment/z1$b;->a:Lcom/join/mgps/fragment/z1;

    iget-object p1, p1, Lcom/join/mgps/fragment/z1;->e:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/fragment/d2;

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/z1$b;->a:Lcom/join/mgps/fragment/z1;

    iget-object p1, p1, Lcom/join/mgps/fragment/z1;->e:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/fragment/d2;

    invoke-virtual {p1}, Lcom/join/mgps/fragment/d2;->S()V

    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->r()Lcom/join/mgps/dto/FriendAccountInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->r()Lcom/join/mgps/dto/FriendAccountInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/FriendAccountInfo;->setLikedCount(I)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/z1$b;->a:Lcom/join/mgps/fragment/z1;

    iget-object p1, p1, Lcom/join/mgps/fragment/z1;->c:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
