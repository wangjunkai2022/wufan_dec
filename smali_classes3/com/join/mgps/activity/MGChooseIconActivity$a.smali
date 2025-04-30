.class Lcom/join/mgps/activity/MGChooseIconActivity$a;
.super Ljava/lang/Object;
.source "MGChooseIconActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGChooseIconActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGChooseIconActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGChooseIconActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity;

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

    if-nez p3, :cond_0

    .line 1
    new-instance p1, Lcom/tbruyelle/rxpermissions2/c;

    iget-object p2, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity;

    invoke-direct {p1, p2}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/MGChooseIconActivity$a$a;-><init>(Lcom/join/mgps/activity/MGChooseIconActivity$a;)V

    invoke-virtual {p1, p2}, Lio/reactivex/z;->B5(Lw2/g;)Lio/reactivex/disposables/b;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->D0(Lcom/join/mgps/activity/MGChooseIconActivity;)Lcom/join/mgps/adapter/d;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/d;->b(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGChooseIconActivity$a;->a:Lcom/join/mgps/activity/MGChooseIconActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MGChooseIconActivity;->E0(Lcom/join/mgps/activity/MGChooseIconActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/db/tables/HeadPortraitTable;

    invoke-virtual {p2}, Lcom/join/mgps/db/tables/HeadPortraitTable;->getHead_portrait_pic()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/MGChooseIconActivity;->L0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
