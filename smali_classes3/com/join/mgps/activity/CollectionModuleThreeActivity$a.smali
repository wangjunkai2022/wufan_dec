.class Lcom/join/mgps/activity/CollectionModuleThreeActivity$a;
.super Ljava/lang/Object;
.source "CollectionModuleThreeActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CollectionModuleThreeActivity;->I0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CollectionModuleThreeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CollectionModuleThreeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity$a;->a:Lcom/join/mgps/activity/CollectionModuleThreeActivity;

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

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity$a;->a:Lcom/join/mgps/activity/CollectionModuleThreeActivity;

    iget-object p3, p2, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->k:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->D0(Lcom/join/mgps/activity/CollectionModuleThreeActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity$a;->a:Lcom/join/mgps/activity/CollectionModuleThreeActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->l:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity$a;->a:Lcom/join/mgps/activity/CollectionModuleThreeActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->E0(Lcom/join/mgps/activity/CollectionModuleThreeActivity;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
